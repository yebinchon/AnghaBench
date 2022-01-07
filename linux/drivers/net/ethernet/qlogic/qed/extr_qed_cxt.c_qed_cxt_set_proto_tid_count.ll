; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_set_proto_tid_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_set_proto_tid_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_tid_seg* }
%struct.qed_tid_seg = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32, i64, i64, i32, i32)* @qed_cxt_set_proto_tid_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cxt_set_proto_tid_count(%struct.qed_hwfn* %0, i32 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_cxt_mngr*, align 8
  %14 = alloca %struct.qed_tid_seg*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %16, align 8
  store %struct.qed_cxt_mngr* %17, %struct.qed_cxt_mngr** %13, align 8
  %18 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %13, align 8
  %19 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %25, i64 %26
  store %struct.qed_tid_seg* %27, %struct.qed_tid_seg** %14, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %14, align 8
  %30 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %14, align 8
  %33 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %14, align 8
  %36 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
