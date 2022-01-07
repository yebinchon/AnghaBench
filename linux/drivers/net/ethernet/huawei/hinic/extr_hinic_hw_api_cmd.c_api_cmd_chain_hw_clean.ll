; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_chain_hw_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_chain_hw_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { i32 }

@RESTART_WB_STAT = common dso_local global i32 0, align 4
@XOR_ERR = common dso_local global i32 0, align 4
@AEQE_EN = common dso_local global i32 0, align 4
@XOR_CHK_EN = common dso_local global i32 0, align 4
@CELL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_api_cmd_chain*)* @api_cmd_chain_hw_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @api_cmd_chain_hw_clean(%struct.hinic_api_cmd_chain* %0) #0 {
  %2 = alloca %struct.hinic_api_cmd_chain*, align 8
  %3 = alloca %struct.hinic_hwif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %2, align 8
  %6 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %7 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %6, i32 0, i32 1
  %8 = load %struct.hinic_hwif*, %struct.hinic_hwif** %7, align 8
  store %struct.hinic_hwif* %8, %struct.hinic_hwif** %3, align 8
  %9 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %10 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @RESTART_WB_STAT, align 4
  %18 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @XOR_ERR, align 4
  %21 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %19, i32 %20)
  %22 = and i32 %18, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @AEQE_EN, align 4
  %25 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %23, i32 %24)
  %26 = and i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @XOR_CHK_EN, align 4
  %29 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %27, i32 %28)
  %30 = and i32 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CELL_SIZE, align 4
  %33 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %31, i32 %32)
  %34 = and i32 %30, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR(i32) #1

declare dso_local i32 @hinic_hwif_read_reg(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32, i32) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
