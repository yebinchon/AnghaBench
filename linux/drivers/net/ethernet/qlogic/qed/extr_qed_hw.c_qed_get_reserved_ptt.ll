; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_get_reserved_ptt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_get_reserved_ptt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ptt = type { i32 }
%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_ptt* }

@RESERVED_PTT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Requested PTT %d is out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qed_ptt* @qed_get_reserved_ptt(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_ptt*, align 8
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RESERVED_PTT_MAX, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @DP_NOTICE(%struct.qed_hwfn* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.qed_ptt* null, %struct.qed_ptt** %3, align 8
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.qed_ptt, %struct.qed_ptt* %18, i64 %20
  store %struct.qed_ptt* %21, %struct.qed_ptt** %3, align 8
  br label %22

22:                                               ; preds = %13, %9
  %23 = load %struct.qed_ptt*, %struct.qed_ptt** %3, align 8
  ret %struct.qed_ptt* %23
}

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
