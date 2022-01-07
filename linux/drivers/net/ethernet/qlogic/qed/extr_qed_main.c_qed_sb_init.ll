; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_sb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_sb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64, %struct.qed_hwfn* }
%struct.qed_hwfn = type { i32 }
%struct.qed_sb_info = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_SB_TYPE_L2_QUEUE = common dso_local global i32 0, align 4
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"hwfn [%d] <--[init]-- SB %04x [0x%04x upper]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_sb_info*, i8*, i32, i64, i32)* @qed_sb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_sb_init(%struct.qed_dev* %0, %struct.qed_sb_info* %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_dev*, align 8
  %9 = alloca %struct.qed_sb_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qed_hwfn*, align 8
  %15 = alloca %struct.qed_ptt*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %8, align 8
  store %struct.qed_sb_info* %1, %struct.qed_sb_info** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @QED_SB_TYPE_L2_QUEUE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %6
  %22 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 1
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %23, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %27 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = urem i64 %25, %28
  %30 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i64 %29
  store %struct.qed_hwfn* %30, %struct.qed_hwfn** %14, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %33 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = udiv i64 %31, %34
  store i64 %35, i64* %16, align 8
  br label %40

36:                                               ; preds = %6
  %37 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %38 = call %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev* %37)
  store %struct.qed_hwfn* %38, %struct.qed_hwfn** %14, align 8
  %39 = load i64, i64* %12, align 8
  store i64 %39, i64* %16, align 8
  br label %40

40:                                               ; preds = %36, %21
  %41 = load %struct.qed_dev*, %struct.qed_dev** %8, align 8
  %42 = load i32, i32* @NETIF_MSG_INTR, align 4
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %44 = call i64 @IS_LEAD_HWFN(%struct.qed_hwfn* %43)
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 1
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @DP_VERBOSE(%struct.qed_dev* %41, i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %48, i64 %49)
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %52 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_PF(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %40
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %58 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %57)
  store %struct.qed_ptt* %58, %struct.qed_ptt** %15, align 8
  %59 = load %struct.qed_ptt*, %struct.qed_ptt** %15, align 8
  %60 = icmp ne %struct.qed_ptt* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %84

64:                                               ; preds = %56
  %65 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %66 = load %struct.qed_ptt*, %struct.qed_ptt** %15, align 8
  %67 = load %struct.qed_sb_info*, %struct.qed_sb_info** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i64, i64* %16, align 8
  %71 = call i32 @qed_int_sb_init(%struct.qed_hwfn* %65, %struct.qed_ptt* %66, %struct.qed_sb_info* %67, i8* %68, i32 %69, i64 %70)
  store i32 %71, i32* %17, align 4
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %73 = load %struct.qed_ptt*, %struct.qed_ptt** %15, align 8
  %74 = call i32 @qed_ptt_release(%struct.qed_hwfn* %72, %struct.qed_ptt* %73)
  br label %82

75:                                               ; preds = %40
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %77 = load %struct.qed_sb_info*, %struct.qed_sb_info** %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i64, i64* %16, align 8
  %81 = call i32 @qed_int_sb_init(%struct.qed_hwfn* %76, %struct.qed_ptt* null, %struct.qed_sb_info* %77, i8* %78, i32 %79, i64 %80)
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %75, %64
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %61
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32, i64, i64) #1

declare dso_local i64 @IS_LEAD_HWFN(%struct.qed_hwfn*) #1

declare dso_local i64 @IS_PF(i32) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_int_sb_init(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_sb_info*, i8*, i32, i64) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
