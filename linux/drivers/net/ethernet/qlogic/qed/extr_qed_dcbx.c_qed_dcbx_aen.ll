; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qed_common_cb_ops* }
%struct.qed_common_cb_ops = type { i32 (i8*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32)* @qed_dcbx_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dcbx_aen(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_common_cb_ops*, align 8
  %6 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %8 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %11, align 8
  store %struct.qed_common_cb_ops* %12, %struct.qed_common_cb_ops** %5, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %5, align 8
  %22 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %21, i32 0, i32 0
  %23 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %22, align 8
  %24 = icmp ne i32 (i8*, i32*, i32)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %5, align 8
  %27 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %26, i32 0, i32 0
  %28 = load i32 (i8*, i32*, i32)*, i32 (i8*, i32*, i32)** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = call i32 %28(i8* %29, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %25, %20, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
