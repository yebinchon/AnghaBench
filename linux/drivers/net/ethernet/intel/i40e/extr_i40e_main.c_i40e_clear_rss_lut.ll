; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clear_rss_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clear_rss_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__*, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@I40E_VSI_MAIN = common dso_local global i64 0, align 8
@I40E_PFQF_HLUT_MAX_INDEX = common dso_local global i64 0, align 8
@I40E_VSI_SRIOV = common dso_local global i64 0, align 8
@I40E_VFQF_HLUT_MAX_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Cannot set RSS LUT - invalid VSI type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_clear_rss_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_clear_rss_lut(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %7, i32 0, i32 2
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  store %struct.i40e_pf* %9, %struct.i40e_pf** %3, align 8
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %10, i32 0, i32 1
  store %struct.i40e_hw* %11, %struct.i40e_hw** %4, align 8
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I40E_VSI_MAIN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @I40E_PFQF_HLUT_MAX_INDEX, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @I40E_PFQF_HLUT(i64 %27)
  %29 = call i32 @wr32(%struct.i40e_hw* %26, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %21

33:                                               ; preds = %21
  br label %62

34:                                               ; preds = %1
  %35 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @I40E_VSI_SRIOV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @I40E_VFQF_HLUT_MAX_INDEX, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @I40E_VFQF_HLUT1(i64 %47, i32 %48)
  %50 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %46, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %41

54:                                               ; preds = %41
  br label %61

55:                                               ; preds = %34
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %54
  br label %62

62:                                               ; preds = %61, %33
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFQF_HLUT(i64) #1

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VFQF_HLUT1(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
