; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_api_cmd.c_api_cmd_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_api_cmd_chain = type { i32, i32, %struct.hinic_hwif* }
%struct.hinic_hwif = type { i32 }

@RESTART_WB_STAT = common dso_local global i32 0, align 4
@XOR_ERR = common dso_local global i32 0, align 4
@AEQE_EN = common dso_local global i32 0, align 4
@XOR_CHK_EN = common dso_local global i32 0, align 4
@CELL_SIZE = common dso_local global i32 0, align 4
@XOR_CHK_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_api_cmd_chain*)* @api_cmd_ctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @api_cmd_ctrl_init(%struct.hinic_api_cmd_chain* %0) #0 {
  %2 = alloca %struct.hinic_api_cmd_chain*, align 8
  %3 = alloca %struct.hinic_hwif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hinic_api_cmd_chain* %0, %struct.hinic_api_cmd_chain** %2, align 8
  %7 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %8 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %7, i32 0, i32 2
  %9 = load %struct.hinic_hwif*, %struct.hinic_hwif** %8, align 8
  store %struct.hinic_hwif* %9, %struct.hinic_hwif** %3, align 8
  %10 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %11 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %2, align 8
  %15 = getelementptr inbounds %struct.hinic_api_cmd_chain, %struct.hinic_api_cmd_chain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @API_CMD_CELL_SIZE_VAL(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RESTART_WB_STAT, align 4
  %23 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @XOR_ERR, align 4
  %26 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %24, i32 %25)
  %27 = and i32 %23, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AEQE_EN, align 4
  %30 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %28, i32 %29)
  %31 = and i32 %27, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XOR_CHK_EN, align 4
  %34 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %32, i32 %33)
  %35 = and i32 %31, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CELL_SIZE, align 4
  %38 = call i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32 %36, i32 %37)
  %39 = and i32 %35, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @XOR_ERR, align 4
  %41 = call i32 @HINIC_API_CMD_CHAIN_CTRL_SET(i32 1, i32 %40)
  %42 = load i32, i32* @XOR_CHK_ALL, align 4
  %43 = load i32, i32* @XOR_CHK_EN, align 4
  %44 = call i32 @HINIC_API_CMD_CHAIN_CTRL_SET(i32 %42, i32 %43)
  %45 = or i32 %41, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @CELL_SIZE, align 4
  %48 = call i32 @HINIC_API_CMD_CHAIN_CTRL_SET(i32 %46, i32 %47)
  %49 = or i32 %45, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @HINIC_CSR_API_CMD_CHAIN_CTRL_ADDR(i32) #1

declare dso_local i32 @API_CMD_CELL_SIZE_VAL(i32) #1

declare dso_local i32 @hinic_hwif_read_reg(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_API_CMD_CHAIN_CTRL_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_API_CMD_CHAIN_CTRL_SET(i32, i32) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
