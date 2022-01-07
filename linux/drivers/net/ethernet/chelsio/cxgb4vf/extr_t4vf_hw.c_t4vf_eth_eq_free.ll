; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_eth_eq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_eth_eq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_eq_eth_cmd = type { i8*, i8*, i8* }

@FW_EQ_ETH_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_EQ_ETH_CMD_FREE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_eth_eq_free(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_eq_eth_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.fw_eq_eth_cmd* %5, i32 0, i32 24)
  %7 = load i32, i32* @FW_EQ_ETH_CMD, align 4
  %8 = call i32 @FW_CMD_OP_V(i32 %7)
  %9 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %5, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @FW_EQ_ETH_CMD_FREE_F, align 4
  %16 = call i32 @FW_LEN16(%struct.fw_eq_eth_cmd* byval(%struct.fw_eq_eth_cmd) align 8 %5)
  %17 = or i32 %15, %16
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %5, i32 0, i32 1
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @FW_EQ_ETH_CMD_EQID_V(i32 %20)
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = getelementptr inbounds %struct.fw_eq_eth_cmd, %struct.fw_eq_eth_cmd* %5, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @t4vf_wr_mbox(%struct.adapter* %24, %struct.fw_eq_eth_cmd* %5, i32 24, i32* null)
  ret i32 %25
}

declare dso_local i32 @memset(%struct.fw_eq_eth_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_eq_eth_cmd* byval(%struct.fw_eq_eth_cmd) align 8) #1

declare dso_local i32 @FW_EQ_ETH_CMD_EQID_V(i32) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_eq_eth_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
