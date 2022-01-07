; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_arfs_sp_response_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_arfs_sp_response_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.qed_common_cb_ops* }
%struct.qed_common_cb_ops = type { i32 (i8*, i8*, i32)* }
%union.event_ring_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i8*, %union.event_ring_data*, i32)* @qed_arfs_sp_response_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_arfs_sp_response_handler(%struct.qed_hwfn* %0, i8* %1, %union.event_ring_data* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.event_ring_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_common_cb_ops*, align 8
  %10 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i8* %1, i8** %6, align 8
  store %union.event_ring_data* %2, %union.event_ring_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %15, align 8
  store %struct.qed_common_cb_ops* %16, %struct.qed_common_cb_ops** %9, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %9, align 8
  %23 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %22, i32 0, i32 0
  %24 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %23, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 %24(i8* %25, i8* %26, i32 %27)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
