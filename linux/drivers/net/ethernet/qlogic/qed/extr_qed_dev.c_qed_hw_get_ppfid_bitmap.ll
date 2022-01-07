; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_get_ppfid_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_hw_get_ppfid_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.qed_dev* }
%struct.qed_dev = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Fix the PPFID bitmap to include the native PPFID [native_ppfid_idx %hhd, orig_bitmap 0x%hhx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_hw_get_ppfid_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_hw_get_ppfid_bitmap(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 1
  %11 = load %struct.qed_dev*, %struct.qed_dev** %10, align 8
  store %struct.qed_dev* %11, %struct.qed_dev** %6, align 8
  %12 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %13 = call i64 @QED_IS_BB(%struct.qed_dev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %24 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %30 = call i32 @qed_mcp_get_ppfid_bitmap(%struct.qed_hwfn* %28, %struct.qed_ptt* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %33, %27
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %49 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %53 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %51
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %63 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DP_INFO(%struct.qed_hwfn* %60, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %69 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %59, %51
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @QED_IS_BB(%struct.qed_dev*) #1

declare dso_local i32 @qed_mcp_get_ppfid_bitmap(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
