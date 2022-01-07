; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_add_mask_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_add_mask_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32, i32 }
%struct.nfp_mask_id_table = type { i32, i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i8*, i32)* @nfp_add_mask_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_add_mask_table(%struct.nfp_app* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_flower_priv*, align 8
  %9 = alloca %struct.nfp_mask_id_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %12, i32 0, i32 0
  %14 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %13, align 8
  store %struct.nfp_flower_priv* %14, %struct.nfp_flower_priv** %8, align 8
  %15 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %16 = call i64 @nfp_mask_alloc(%struct.nfp_app* %15, i32* %11)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nfp_mask_id_table* @kmalloc(i32 24, i32 %22)
  store %struct.nfp_mask_id_table* %23, %struct.nfp_mask_id_table** %9, align 8
  %24 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %9, align 8
  %25 = icmp ne %struct.nfp_mask_id_table* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @nfp_release_mask_id(%struct.nfp_app* %27, i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %21
  %33 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %9, align 8
  %34 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %33, i32 0, i32 3
  %35 = call i32 @INIT_HLIST_NODE(i32* %34)
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %9, align 8
  %38 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %42 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @jhash(i8* %39, i32 %40, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %9, align 8
  %47 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %9, align 8
  %49 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %8, align 8
  %51 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfp_mask_id_table*, %struct.nfp_mask_id_table** %9, align 8
  %54 = getelementptr inbounds %struct.nfp_mask_id_table, %struct.nfp_mask_id_table* %53, i32 0, i32 3
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @hash_add(i32 %52, i32* %54, i64 %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %32, %26, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @nfp_mask_alloc(%struct.nfp_app*, i32*) #1

declare dso_local %struct.nfp_mask_id_table* @kmalloc(i32, i32) #1

declare dso_local i32 @nfp_release_mask_id(%struct.nfp_app*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i64 @jhash(i8*, i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
