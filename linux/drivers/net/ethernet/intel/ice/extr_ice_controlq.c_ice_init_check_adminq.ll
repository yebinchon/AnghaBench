; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_init_check_adminq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_controlq.c_ice_init_check_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_ctl_q_info }
%struct.ice_ctl_q_info = type { i32 }

@ICE_ERR_FW_API_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*)* @ice_init_check_adminq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_check_adminq(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_ctl_q_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %6 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %6, i32 0, i32 0
  store %struct.ice_ctl_q_info* %7, %struct.ice_ctl_q_info** %4, align 8
  %8 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %9 = call i32 @ice_aq_get_fw_ver(%struct.ice_hw* %8, i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %15 = call i32 @ice_aq_ver_check(%struct.ice_hw* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ICE_ERR_FW_API_VER, align 4
  store i32 %18, i32* %5, align 4
  br label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %28

20:                                               ; preds = %17, %12
  %21 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %22 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %23 = call i32 @ice_shutdown_rq(%struct.ice_hw* %21, %struct.ice_ctl_q_info* %22)
  %24 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %25 = load %struct.ice_ctl_q_info*, %struct.ice_ctl_q_info** %4, align 8
  %26 = call i32 @ice_shutdown_sq(%struct.ice_hw* %24, %struct.ice_ctl_q_info* %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @ice_aq_get_fw_ver(%struct.ice_hw*, i32*) #1

declare dso_local i32 @ice_aq_ver_check(%struct.ice_hw*) #1

declare dso_local i32 @ice_shutdown_rq(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

declare dso_local i32 @ice_shutdown_sq(%struct.ice_hw*, %struct.ice_ctl_q_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
