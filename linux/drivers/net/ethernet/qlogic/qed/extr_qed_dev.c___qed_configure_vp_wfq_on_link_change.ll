; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_configure_vp_wfq_on_link_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c___qed_configure_vp_wfq_on_link_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"WFQ validation failed while configuring min rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32)* @__qed_configure_vp_wfq_on_link_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_configure_vp_wfq_on_link_change(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %49, %3
  %12 = load i64, i64* %9, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %12, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %11
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %49

29:                                               ; preds = %18
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  store i32 1, i32* %7, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @qed_init_wfq_param(%struct.qed_hwfn* %38, i64 %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = call i32 @DP_NOTICE(%struct.qed_hwfn* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %52

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %28
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %11

52:                                               ; preds = %45, %11
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %60 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @qed_configure_wfq_for_all_vports(%struct.qed_hwfn* %59, %struct.qed_ptt* %60, i32 %61)
  br label %68

63:                                               ; preds = %55, %52
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %65 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @qed_disable_wfq_for_all_vports(%struct.qed_hwfn* %64, %struct.qed_ptt* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i32 @qed_init_wfq_param(%struct.qed_hwfn*, i64, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_configure_wfq_for_all_vports(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_disable_wfq_for_all_vports(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
