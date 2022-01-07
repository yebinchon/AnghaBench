; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_port.c_hinic_port_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { i32 }
%struct.hinic_port_rx_mode_cmd = type { i32, i32 }

@HINIC_PORT_CMD_SET_RX_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_port_set_rx_mode(%struct.hinic_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hinic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_hwdev*, align 8
  %6 = alloca %struct.hinic_port_rx_mode_cmd, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %7, i32 0, i32 0
  %9 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %8, align 8
  store %struct.hinic_hwdev* %9, %struct.hinic_hwdev** %5, align 8
  %10 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %11 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @HINIC_HWIF_FUNC_IDX(i32 %12)
  %14 = getelementptr inbounds %struct.hinic_port_rx_mode_cmd, %struct.hinic_port_rx_mode_cmd* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds %struct.hinic_port_rx_mode_cmd, %struct.hinic_port_rx_mode_cmd* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %5, align 8
  %18 = load i32, i32* @HINIC_PORT_CMD_SET_RX_MODE, align 4
  %19 = call i32 @hinic_port_msg_cmd(%struct.hinic_hwdev* %17, i32 %18, %struct.hinic_port_rx_mode_cmd* %6, i32 8, i32* null, i32* null)
  ret i32 %19
}

declare dso_local i32 @HINIC_HWIF_FUNC_IDX(i32) #1

declare dso_local i32 @hinic_port_msg_cmd(%struct.hinic_hwdev*, i32, %struct.hinic_port_rx_mode_cmd*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
