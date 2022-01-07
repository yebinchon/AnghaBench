; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_cmd_ceq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_cmd_ceq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq = type { i32 }
%struct.hinic_cmdq_wqe = type { %struct.hinic_cmdq_wqe_lcmd }
%struct.hinic_cmdq_wqe_lcmd = type { %struct.hinic_ctrl, %struct.hinic_status }
%struct.hinic_ctrl = type { i32 }
%struct.hinic_status = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@VAL = common dso_local global i32 0, align 4
@WQE_LCMD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_cmdq*, i32, %struct.hinic_cmdq_wqe*)* @cmdq_cmd_ceq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_cmd_ceq_handler(%struct.hinic_cmdq* %0, i32 %1, %struct.hinic_cmdq_wqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_cmdq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_cmdq_wqe*, align 8
  %8 = alloca %struct.hinic_cmdq_wqe_lcmd*, align 8
  %9 = alloca %struct.hinic_status*, align 8
  %10 = alloca %struct.hinic_ctrl*, align 8
  %11 = alloca i32, align 4
  store %struct.hinic_cmdq* %0, %struct.hinic_cmdq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hinic_cmdq_wqe* %2, %struct.hinic_cmdq_wqe** %7, align 8
  %12 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %7, align 8
  %13 = getelementptr inbounds %struct.hinic_cmdq_wqe, %struct.hinic_cmdq_wqe* %12, i32 0, i32 0
  store %struct.hinic_cmdq_wqe_lcmd* %13, %struct.hinic_cmdq_wqe_lcmd** %8, align 8
  %14 = load %struct.hinic_cmdq_wqe_lcmd*, %struct.hinic_cmdq_wqe_lcmd** %8, align 8
  %15 = getelementptr inbounds %struct.hinic_cmdq_wqe_lcmd, %struct.hinic_cmdq_wqe_lcmd* %14, i32 0, i32 1
  store %struct.hinic_status* %15, %struct.hinic_status** %9, align 8
  %16 = load %struct.hinic_cmdq_wqe_lcmd*, %struct.hinic_cmdq_wqe_lcmd** %8, align 8
  %17 = getelementptr inbounds %struct.hinic_cmdq_wqe_lcmd, %struct.hinic_cmdq_wqe_lcmd* %16, i32 0, i32 0
  store %struct.hinic_ctrl* %17, %struct.hinic_ctrl** %10, align 8
  %18 = load %struct.hinic_ctrl*, %struct.hinic_ctrl** %10, align 8
  %19 = getelementptr inbounds %struct.hinic_ctrl, %struct.hinic_ctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = call i32 @CMDQ_WQE_COMPLETED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.hinic_status*, %struct.hinic_status** %9, align 8
  %29 = getelementptr inbounds %struct.hinic_status, %struct.hinic_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  %32 = load i32, i32* @VAL, align 4
  %33 = call i32 @CMDQ_WQE_ERRCODE_GET(i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @cmdq_sync_cmd_handler(%struct.hinic_cmdq* %34, i32 %35, i32 %36)
  %38 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %39 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %7, align 8
  %40 = call i32 @clear_wqe_complete_bit(%struct.hinic_cmdq* %38, %struct.hinic_cmdq_wqe* %39)
  %41 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %5, align 8
  %42 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WQE_LCMD_SIZE, align 4
  %45 = call i32 @hinic_put_wqe(i32 %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %27, %24
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @CMDQ_WQE_COMPLETED(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @CMDQ_WQE_ERRCODE_GET(i32, i32) #1

declare dso_local i32 @cmdq_sync_cmd_handler(%struct.hinic_cmdq*, i32, i32) #1

declare dso_local i32 @clear_wqe_complete_bit(%struct.hinic_cmdq*, %struct.hinic_cmdq_wqe*) #1

declare dso_local i32 @hinic_put_wqe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
