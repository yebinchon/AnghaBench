; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fill_fcoe_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_fcoe.c_qed_fill_fcoe_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_dev_fcoe_info = type { i32, i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@BDQ_ID_RQ = common dso_local global i32 0, align 4
@QED_FCOE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_dev_fcoe_info*)* @qed_fill_fcoe_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_fill_fcoe_dev_info(%struct.qed_dev* %0, %struct.qed_dev_fcoe_info* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_dev_fcoe_info*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_dev_fcoe_info* %1, %struct.qed_dev_fcoe_info** %4, align 8
  %7 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %8 = call %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev* %7)
  store %struct.qed_hwfn* %8, %struct.qed_hwfn** %5, align 8
  %9 = load %struct.qed_dev_fcoe_info*, %struct.qed_dev_fcoe_info** %4, align 8
  %10 = call i32 @memset(%struct.qed_dev_fcoe_info* %9, i32 0, i32 24)
  %11 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %12 = load %struct.qed_dev_fcoe_info*, %struct.qed_dev_fcoe_info** %4, align 8
  %13 = getelementptr inbounds %struct.qed_dev_fcoe_info, %struct.qed_dev_fcoe_info* %12, i32 0, i32 5
  %14 = call i32 @qed_fill_dev_info(%struct.qed_dev* %11, i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %16 = load i32, i32* @BDQ_ID_RQ, align 4
  %17 = call i32 @qed_fcoe_get_primary_bdq_prod(%struct.qed_hwfn* %15, i32 %16)
  %18 = load %struct.qed_dev_fcoe_info*, %struct.qed_dev_fcoe_info** %4, align 8
  %19 = getelementptr inbounds %struct.qed_dev_fcoe_info, %struct.qed_dev_fcoe_info* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = load i32, i32* @BDQ_ID_RQ, align 4
  %22 = call i32 @qed_fcoe_get_secondary_bdq_prod(%struct.qed_hwfn* %20, i32 %21)
  %23 = load %struct.qed_dev_fcoe_info*, %struct.qed_dev_fcoe_info** %4, align 8
  %24 = getelementptr inbounds %struct.qed_dev_fcoe_info, %struct.qed_dev_fcoe_info* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qed_dev_fcoe_info*, %struct.qed_dev_fcoe_info** %4, align 8
  %32 = getelementptr inbounds %struct.qed_dev_fcoe_info, %struct.qed_dev_fcoe_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qed_dev_fcoe_info*, %struct.qed_dev_fcoe_info** %4, align 8
  %40 = getelementptr inbounds %struct.qed_dev_fcoe_info, %struct.qed_dev_fcoe_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %42 = load i32, i32* @QED_FCOE_CQ, align 4
  %43 = call i32 @FEAT_NUM(%struct.qed_hwfn* %41, i32 %42)
  %44 = load %struct.qed_dev_fcoe_info*, %struct.qed_dev_fcoe_info** %4, align 8
  %45 = getelementptr inbounds %struct.qed_dev_fcoe_info, %struct.qed_dev_fcoe_info* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @memset(%struct.qed_dev_fcoe_info*, i32, i32) #1

declare dso_local i32 @qed_fill_dev_info(%struct.qed_dev*, i32*) #1

declare dso_local i32 @qed_fcoe_get_primary_bdq_prod(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_fcoe_get_secondary_bdq_prod(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @FEAT_NUM(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
