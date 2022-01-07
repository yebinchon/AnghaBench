; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_fw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_fw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_reset_cmd = type { i8*, i8* }

@FW_RESET_CMD = common dso_local global i32 0, align 4
@FW_CMD_WRITE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_fw_reset(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.fw_reset_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = call i32 @memset(%struct.fw_reset_cmd* %3, i32 0, i32 16)
  %5 = load i32, i32* @FW_RESET_CMD, align 4
  %6 = call i32 @FW_CMD_OP_V(i32 %5)
  %7 = load i32, i32* @FW_CMD_WRITE_F, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @cpu_to_be32(i32 %8)
  %10 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %3, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = bitcast %struct.fw_reset_cmd* %3 to { i8*, i8* }*
  %12 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %11, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @FW_LEN16(i8* %13, i8* %15)
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = getelementptr inbounds %struct.fw_reset_cmd, %struct.fw_reset_cmd* %3, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = call i32 @t4vf_wr_mbox(%struct.adapter* %19, %struct.fw_reset_cmd* %3, i32 16, i32* null)
  ret i32 %20
}

declare dso_local i32 @memset(%struct.fw_reset_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(i8*, i8*) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_reset_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
