; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_dorq_attn_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_dorq_attn_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_2__, %struct.qed_ptt* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }

@DORQ_REG_PF_OVFL_STICKY = common dso_local global i32 0, align 4
@QED_OVERFLOW_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_dorq_attn_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dorq_attn_overflow(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_ptt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 2
  %8 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  store %struct.qed_ptt* %8, %struct.qed_ptt** %3, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %3, align 8
  %11 = load i32, i32* @DORQ_REG_PF_OVFL_STICKY, align 4
  %12 = call i32 @qed_rd(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  %17 = load i32, i32* @QED_OVERFLOW_BIT, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %17, i32* %20)
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %23 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %28 = load %struct.qed_ptt*, %struct.qed_ptt** %3, align 8
  %29 = call i32 @qed_db_rec_flush_queue(%struct.qed_hwfn* %27, %struct.qed_ptt* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %39

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %3, align 8
  %37 = load i32, i32* @DORQ_REG_PF_OVFL_STICKY, align 4
  %38 = call i32 @qed_wr(%struct.qed_hwfn* %35, %struct.qed_ptt* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %34, %32, %15
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %41 = call i32 @qed_periodic_db_rec_start(%struct.qed_hwfn* %40)
  ret void
}

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qed_db_rec_flush_queue(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @qed_periodic_db_rec_start(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
