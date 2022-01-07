; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c___ice_vsi_get_qs_contig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c___ice_vsi_get_qs_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_qs_cfg = type { i32, i32, i32*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_qs_cfg*)* @__ice_vsi_get_qs_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ice_vsi_get_qs_contig(%struct.ice_qs_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_qs_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ice_qs_cfg* %0, %struct.ice_qs_cfg** %3, align 8
  %6 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %7 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mutex_lock(i32 %8)
  %10 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %11 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %14 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %17 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bitmap_find_next_zero_area(i32 %12, i32 %15, i32 0, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %22 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mutex_unlock(i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %69

32:                                               ; preds = %1
  %33 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %34 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %38 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bitmap_set(i32 %35, i32 %36, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %61, %32
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %44 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %52 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %56 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  store i32 %50, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %41

64:                                               ; preds = %41
  %65 = load %struct.ice_qs_cfg*, %struct.ice_qs_cfg** %3, align 8
  %66 = getelementptr inbounds %struct.ice_qs_cfg, %struct.ice_qs_cfg* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mutex_unlock(i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %25
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
