; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_link_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { %struct.qed_common_cb_ops* }
%struct.qed_common_cb_ops = type { i32 (i8*, %struct.qed_link_output*)* }
%struct.qed_link_output = type { i32 }
%struct.qed_ptt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_link_update(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_common_cb_ops*, align 8
  %7 = alloca %struct.qed_link_output, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %17, align 8
  store %struct.qed_common_cb_ops* %18, %struct.qed_common_cb_ops** %6, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %20 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %21 = call i32 @qed_fill_link(%struct.qed_hwfn* %19, %struct.qed_ptt* %20, %struct.qed_link_output* %7)
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %23 = call i32 @qed_inform_vf_link_state(%struct.qed_hwfn* %22)
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %25 = call i64 @IS_LEAD_HWFN(%struct.qed_hwfn* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.qed_common_cb_ops*, %struct.qed_common_cb_ops** %6, align 8
  %32 = getelementptr inbounds %struct.qed_common_cb_ops, %struct.qed_common_cb_ops* %31, i32 0, i32 0
  %33 = load i32 (i8*, %struct.qed_link_output*)*, i32 (i8*, %struct.qed_link_output*)** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 %33(i8* %34, %struct.qed_link_output* %7)
  br label %36

36:                                               ; preds = %30, %27, %2
  ret void
}

declare dso_local i32 @qed_fill_link(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_link_output*) #1

declare dso_local i32 @qed_inform_vf_link_state(%struct.qed_hwfn*) #1

declare dso_local i64 @IS_LEAD_HWFN(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
