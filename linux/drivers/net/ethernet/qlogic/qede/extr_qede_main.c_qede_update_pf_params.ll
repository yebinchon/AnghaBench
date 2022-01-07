; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_update_pf_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_update_pf_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.qed_dev*, %struct.qed_pf_params*)* }
%struct.qed_dev = type { i32 }
%struct.qed_pf_params = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@QED_MIN_L2_CONS = common dso_local global i32 0, align 4
@MAX_SB_PER_PF_MIMD = common dso_local global i32 0, align 4
@QEDE_RFS_MAX_FLTR = common dso_local global i32 0, align 4
@qed_ops = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_dev*)* @qede_update_pf_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_update_pf_params(%struct.qed_dev* %0) #0 {
  %2 = alloca %struct.qed_dev*, align 8
  %3 = alloca %struct.qed_pf_params, align 4
  %4 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %2, align 8
  %5 = call i32 @memset(%struct.qed_pf_params* %3, i32 0, i32 12)
  %6 = load i32, i32* @QED_MIN_L2_CONS, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @MAX_SB_PER_PF_MIMD, align 4
  %8 = sub nsw i32 %7, 1
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %8, %9
  %11 = getelementptr inbounds %struct.qed_pf_params, %struct.qed_pf_params* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds %struct.qed_pf_params, %struct.qed_pf_params* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 48, i32* %14, align 4
  %15 = load i32, i32* @QEDE_RFS_MAX_FLTR, align 4
  %16 = getelementptr inbounds %struct.qed_pf_params, %struct.qed_pf_params* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @qed_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.qed_dev*, %struct.qed_pf_params*)*, i32 (%struct.qed_dev*, %struct.qed_pf_params*)** %21, align 8
  %23 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %24 = call i32 %22(%struct.qed_dev* %23, %struct.qed_pf_params* %3)
  ret void
}

declare dso_local i32 @memset(%struct.qed_pf_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
