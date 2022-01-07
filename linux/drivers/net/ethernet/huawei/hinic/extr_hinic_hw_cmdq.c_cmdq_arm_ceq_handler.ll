; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_arm_ceq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_arm_ceq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq = type { i32 }
%struct.hinic_cmdq_wqe = type { %struct.hinic_cmdq_direct_wqe }
%struct.hinic_cmdq_direct_wqe = type { %struct.hinic_cmdq_wqe_scmd }
%struct.hinic_cmdq_wqe_scmd = type { %struct.hinic_ctrl }
%struct.hinic_ctrl = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@WQE_SCMD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_cmdq*, %struct.hinic_cmdq_wqe*)* @cmdq_arm_ceq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_arm_ceq_handler(%struct.hinic_cmdq* %0, %struct.hinic_cmdq_wqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_cmdq*, align 8
  %5 = alloca %struct.hinic_cmdq_wqe*, align 8
  %6 = alloca %struct.hinic_cmdq_direct_wqe*, align 8
  %7 = alloca %struct.hinic_cmdq_wqe_scmd*, align 8
  %8 = alloca %struct.hinic_ctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.hinic_cmdq* %0, %struct.hinic_cmdq** %4, align 8
  store %struct.hinic_cmdq_wqe* %1, %struct.hinic_cmdq_wqe** %5, align 8
  %10 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %5, align 8
  %11 = getelementptr inbounds %struct.hinic_cmdq_wqe, %struct.hinic_cmdq_wqe* %10, i32 0, i32 0
  store %struct.hinic_cmdq_direct_wqe* %11, %struct.hinic_cmdq_direct_wqe** %6, align 8
  %12 = load %struct.hinic_cmdq_direct_wqe*, %struct.hinic_cmdq_direct_wqe** %6, align 8
  %13 = getelementptr inbounds %struct.hinic_cmdq_direct_wqe, %struct.hinic_cmdq_direct_wqe* %12, i32 0, i32 0
  store %struct.hinic_cmdq_wqe_scmd* %13, %struct.hinic_cmdq_wqe_scmd** %7, align 8
  %14 = load %struct.hinic_cmdq_wqe_scmd*, %struct.hinic_cmdq_wqe_scmd** %7, align 8
  %15 = getelementptr inbounds %struct.hinic_cmdq_wqe_scmd, %struct.hinic_cmdq_wqe_scmd* %14, i32 0, i32 0
  store %struct.hinic_ctrl* %15, %struct.hinic_ctrl** %8, align 8
  %16 = load %struct.hinic_ctrl*, %struct.hinic_ctrl** %8, align 8
  %17 = getelementptr inbounds %struct.hinic_ctrl, %struct.hinic_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @CMDQ_WQE_COMPLETED(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %4, align 8
  %28 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %5, align 8
  %29 = call i32 @clear_wqe_complete_bit(%struct.hinic_cmdq* %27, %struct.hinic_cmdq_wqe* %28)
  %30 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %4, align 8
  %31 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WQE_SCMD_SIZE, align 4
  %34 = call i32 @hinic_put_wqe(i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @CMDQ_WQE_COMPLETED(i32) #1

declare dso_local i32 @clear_wqe_complete_bit(%struct.hinic_cmdq*, %struct.hinic_cmdq_wqe*) #1

declare dso_local i32 @hinic_put_wqe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
