; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_check_mask_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_check_mask_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_mask_id_table = type { i32, i32, i32 }

@NFP_FL_META_FLAG_MANAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i8*, i32, i32*, i32*)* @nfp_check_mask_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_check_mask_remove(%struct.nfp_app* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nfp_mask_id_table*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.nfp_mask_id_table* @nfp_search_mask_table(%struct.nfp_app* %13, i8* %14, i32 %15)
  store %struct.nfp_mask_id_table* %16, %struct.nfp_mask_id_table** %12, align 8
  %17 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %12, align 8
  %18 = icmp ne %struct.nfp_mask_id_table* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %12, align 8
  %22 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %12, align 8
  %26 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %12, align 8
  %30 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %20
  %34 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %12, align 8
  %35 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %34, i32 0, i32 0
  %36 = call i32 @hash_del(i32* %35)
  %37 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nfp_release_mask_id(%struct.nfp_app* %37, i32 %39)
  %41 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %12, align 8
  %42 = call i32 @kfree(%struct.nfp_mask_id_table* %41)
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load i32, i32* @NFP_FL_META_FLAG_MANAGE_MASK, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %33
  br label %51

51:                                               ; preds = %50, %20
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.nfp_mask_id_table* @nfp_search_mask_table(%struct.nfp_app*, i8*, i32) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @nfp_release_mask_id(%struct.nfp_app*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_mask_id_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
