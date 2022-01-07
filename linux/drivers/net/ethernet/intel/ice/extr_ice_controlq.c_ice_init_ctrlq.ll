; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_init_ctrlq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_init_ctrlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_ctl_q_info, %struct.ice_ctl_q_info }
%struct.ice_ctl_q_info = type { i32, i32, i32, i32, i32, i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ICE_CTL_Q_SQ_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32)* @ice_init_ctrlq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_ctrlq(%struct.ice_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_ctl_q_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %19 [
    i32 129, label %9
    i32 128, label %14
  ]

9:                                                ; preds = %2
  %10 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %11 = call i32 @ice_adminq_init_regs(%struct.ice_hw* %10)
  %12 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %12, i32 0, i32 1
  store %struct.ice_ctl_q_info* %13, %struct.ice_ctl_q_info** %6, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %16 = call i32 @ice_mailbox_init_regs(%struct.ice_hw* %15)
  %17 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %17, i32 0, i32 0
  store %struct.ice_ctl_q_info* %18, %struct.ice_ctl_q_info** %6, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %14, %9
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %24 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %26 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %31 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %36 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %41 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39, %34, %29, %21
  %45 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %45, i32* %3, align 4
  br label %70

46:                                               ; preds = %39
  %47 = load i32, i32* @ICE_CTL_Q_SQ_CMD_TIMEOUT, align 4
  %48 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %49 = getelementptr inbounds %struct.ice_ctl_q_info, %struct.ice_ctl_q_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %51 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %52 = call i32 @ice_init_sq(%struct.ice_hw* %50, %struct.ice_ctl_q_info* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %46
  %58 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %59 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %60 = call i32 @ice_init_rq(%struct.ice_hw* %58, %struct.ice_ctl_q_info* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %70

65:                                               ; preds = %63
  %66 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %67 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %6, align 8
  %68 = call i32 @ice_shutdown_sq(%struct.ice_hw* %66, %struct.ice_ctl_q_info* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %64, %55, %44, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ice_adminq_init_regs(%struct.ice_hw*) #1

declare dso_local i32 @ice_mailbox_init_regs(%struct.ice_hw*) #1

declare dso_local i32 @ice_init_sq(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

declare dso_local i32 @ice_init_rq(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

declare dso_local i32 @ice_shutdown_sq(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
