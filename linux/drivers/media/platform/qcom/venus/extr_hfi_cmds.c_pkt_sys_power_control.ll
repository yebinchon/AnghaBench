; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_sys_set_property_pkt = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hfi_enable = type { i32 }

@HFI_CMD_SYS_SET_PROPERTY = common dso_local global i32 0, align 4
@HFI_PROPERTY_SYS_CODEC_POWER_PLANE_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkt_sys_power_control(%struct.hfi_sys_set_property_pkt* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi_sys_set_property_pkt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_enable*, align 8
  store %struct.hfi_sys_set_property_pkt* %0, %struct.hfi_sys_set_property_pkt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %7 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = bitcast i32* %9 to %struct.hfi_enable*
  store %struct.hfi_enable* %10, %struct.hfi_enable** %5, align 8
  %11 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %12 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 32, i32* %13, align 8
  %14 = load i32, i32* @HFI_CMD_SYS_SET_PROPERTY, align 4
  %15 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %16 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %19 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @HFI_PROPERTY_SYS_CODEC_POWER_PLANE_CTRL, align 4
  %21 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %22 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.hfi_enable*, %struct.hfi_enable** %5, align 8
  %27 = getelementptr inbounds %struct.hfi_enable, %struct.hfi_enable* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
