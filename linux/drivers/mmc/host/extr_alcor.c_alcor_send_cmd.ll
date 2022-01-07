; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32, i32, %struct.mmc_command*, %struct.alcor_pci_priv* }
%struct.alcor_pci_priv = type { i32 }
%struct.mmc_command = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"send CMD. opcode: 0x%02x, arg; 0x%08x\0A\00", align 1
@AU6601_REG_CMD_OPCODE = common dso_local global i32 0, align 4
@AU6601_REG_CMD_ARG = common dso_local global i32 0, align 4
@AU6601_CMD_NO_RESP = common dso_local global i32 0, align 4
@AU6601_CMD_6_BYTE_CRC = common dso_local global i32 0, align 4
@AU6601_CMD_STOP_WAIT_RDY = common dso_local global i32 0, align 4
@AU6601_CMD_17_BYTE_CRC = common dso_local global i32 0, align 4
@AU6601_CMD_6_BYTE_WO_CRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: cmd->flag (0x%02x) is not valid\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"xfer ctrl: 0x%02x; timeout: %lu\0A\00", align 1
@AU6601_CMD_START_XFER = common dso_local global i32 0, align 4
@AU6601_CMD_XFER_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*, %struct.mmc_command*, i32)* @alcor_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_send_cmd(%struct.alcor_sdmmc_host* %0, %struct.mmc_command* %1, i32 %2) #0 {
  %4 = alloca %struct.alcor_sdmmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alcor_pci_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %10, i32 0, i32 3
  %12 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %11, align 8
  store %struct.alcor_pci_priv* %12, %struct.alcor_pci_priv** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %14 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %15 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %14, i32 0, i32 2
  store %struct.mmc_command* %13, %struct.mmc_command** %15, align 8
  %16 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %17 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %18 = call i32 @alcor_prepare_data(%struct.alcor_sdmmc_host* %16, %struct.mmc_command* %17)
  %19 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %27)
  %29 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %30 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %31 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, 64
  %34 = load i32, i32* @AU6601_REG_CMD_OPCODE, align 4
  %35 = call i32 @alcor_write8(%struct.alcor_pci_priv* %29, i32 %33, i32 %34)
  %36 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %37 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @AU6601_REG_CMD_ARG, align 4
  %41 = call i32 @alcor_write32be(%struct.alcor_pci_priv* %36, i64 %39, i32 %40)
  %42 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %43 = call i32 @mmc_resp_type(%struct.mmc_command* %42)
  switch i32 %43, label %56 [
    i32 132, label %44
    i32 131, label %46
    i32 130, label %48
    i32 129, label %52
    i32 128, label %54
  ]

44:                                               ; preds = %3
  %45 = load i32, i32* @AU6601_CMD_NO_RESP, align 4
  store i32 %45, i32* %9, align 4
  br label %66

46:                                               ; preds = %3
  %47 = load i32, i32* @AU6601_CMD_6_BYTE_CRC, align 4
  store i32 %47, i32* %9, align 4
  br label %66

48:                                               ; preds = %3
  %49 = load i32, i32* @AU6601_CMD_6_BYTE_CRC, align 4
  %50 = load i32, i32* @AU6601_CMD_STOP_WAIT_RDY, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %9, align 4
  br label %66

52:                                               ; preds = %3
  %53 = load i32, i32* @AU6601_CMD_17_BYTE_CRC, align 4
  store i32 %53, i32* %9, align 4
  br label %66

54:                                               ; preds = %3
  %55 = load i32, i32* @AU6601_CMD_6_BYTE_WO_CRC, align 4
  store i32 %55, i32* %9, align 4
  br label %66

56:                                               ; preds = %3
  %57 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %58 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %61 = call i32 @mmc_from_priv(%struct.alcor_sdmmc_host* %60)
  %62 = call i32 @mmc_hostname(i32 %61)
  %63 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %64 = call i32 @mmc_resp_type(%struct.mmc_command* %63)
  %65 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %56, %54, %52, %48, %46, %44
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %69
  %75 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %81 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %8, align 8
  br label %84

83:                                               ; preds = %74, %69
  store i64 10000, i64* %8, align 8
  br label %84

84:                                               ; preds = %83, %79
  %85 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %86 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %85, i32 0, i32 1
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @msecs_to_jiffies(i64 %87)
  %89 = call i32 @schedule_delayed_work(i32* %86, i32 %88)
  br label %90

90:                                               ; preds = %84, %66
  %91 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %4, align 8
  %92 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %94, i64 %95)
  %97 = load %struct.alcor_pci_priv*, %struct.alcor_pci_priv** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @AU6601_CMD_START_XFER, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @AU6601_CMD_XFER_CTRL, align 4
  %102 = call i32 @alcor_write8(%struct.alcor_pci_priv* %97, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @alcor_prepare_data(%struct.alcor_sdmmc_host*, %struct.mmc_command*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @alcor_write8(%struct.alcor_pci_priv*, i32, i32) #1

declare dso_local i32 @alcor_write32be(%struct.alcor_pci_priv*, i64, i32) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_from_priv(%struct.alcor_sdmmc_host*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
