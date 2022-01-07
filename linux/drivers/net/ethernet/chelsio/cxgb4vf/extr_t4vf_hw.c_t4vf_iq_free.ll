; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_iq_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_iq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_iq_cmd = type { i8*, i8*, i8*, i8*, i8*, i8* }

@FW_IQ_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_EXEC_F = common dso_local global i32 0, align 4
@FW_IQ_CMD_FREE_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_iq_free(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fw_iq_cmd, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%struct.fw_iq_cmd* %11, i32 0, i32 48)
  %13 = load i32, i32* @FW_IQ_CMD, align 4
  %14 = call i32 @FW_CMD_OP_V(i32 %13)
  %15 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @FW_CMD_EXEC_F, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %11, i32 0, i32 5
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* @FW_IQ_CMD_FREE_F, align 4
  %22 = call i32 @FW_LEN16(%struct.fw_iq_cmd* byval(%struct.fw_iq_cmd) align 8 %11)
  %23 = or i32 %21, %22
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %11, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @FW_IQ_CMD_TYPE_V(i32 %26)
  %28 = call i8* @cpu_to_be32(i32 %27)
  %29 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %11, i32 0, i32 3
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @cpu_to_be16(i32 %30)
  %32 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %11, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @cpu_to_be16(i32 %33)
  %35 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %11, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = getelementptr inbounds %struct.fw_iq_cmd, %struct.fw_iq_cmd* %11, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  %39 = load %struct.adapter*, %struct.adapter** %6, align 8
  %40 = call i32 @t4vf_wr_mbox(%struct.adapter* %39, %struct.fw_iq_cmd* %11, i32 48, i32* null)
  ret i32 %40
}

declare dso_local i32 @memset(%struct.fw_iq_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_iq_cmd* byval(%struct.fw_iq_cmd) align 8) #1

declare dso_local i32 @FW_IQ_CMD_TYPE_V(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @t4vf_wr_mbox(%struct.adapter*, %struct.fw_iq_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
