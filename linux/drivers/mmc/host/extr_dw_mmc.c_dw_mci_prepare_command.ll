; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_prepare_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_prepare_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dw_mci_slot = type { i32, i32, %struct.dw_mci* }
%struct.dw_mci = type { i64 }

@EINPROGRESS = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i64 0, align 8
@MMC_GO_IDLE_STATE = common dso_local global i64 0, align 8
@MMC_GO_INACTIVE_STATE = common dso_local global i64 0, align 8
@SD_IO_RW_DIRECT = common dso_local global i64 0, align 8
@SDIO_CCCR_ABORT = common dso_local global i32 0, align 4
@SDMMC_CMD_STOP = common dso_local global i32 0, align 4
@MMC_SEND_STATUS = common dso_local global i64 0, align 8
@SDMMC_CMD_PRV_DAT_WAIT = common dso_local global i32 0, align 4
@SD_SWITCH_VOLTAGE = common dso_local global i64 0, align 8
@SDMMC_CMD_VOLT_SWITCH = common dso_local global i32 0, align 4
@STATE_SENDING_CMD = common dso_local global i64 0, align 8
@STATE_SENDING_CMD11 = common dso_local global i64 0, align 8
@CLKENA = common dso_local global i32 0, align 4
@SDMMC_CLKEN_LOW_PWR = common dso_local global i32 0, align 4
@SDMMC_CMD_UPD_CLK = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@SDMMC_CMD_RESP_EXP = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SDMMC_CMD_RESP_LONG = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@SDMMC_CMD_RESP_CRC = common dso_local global i32 0, align 4
@SDMMC_CMD_DAT_EXP = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@SDMMC_CMD_DAT_WR = common dso_local global i32 0, align 4
@DW_MMC_CARD_NO_USE_HOLD = common dso_local global i32 0, align 4
@SDMMC_CMD_USE_HOLD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_command*)* @dw_mci_prepare_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_prepare_command(%struct.mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.dw_mci_slot*, align 8
  %6 = alloca %struct.dw_mci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %9 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %10 = call %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host* %9)
  store %struct.dw_mci_slot* %10, %struct.dw_mci_slot** %5, align 8
  %11 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %12 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %11, i32 0, i32 2
  %13 = load %struct.dw_mci*, %struct.dw_mci** %12, align 8
  store %struct.dw_mci* %13, %struct.dw_mci** %6, align 8
  %14 = load i32, i32* @EINPROGRESS, align 4
  %15 = sub nsw i32 0, %14
  %16 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @MMC_STOP_TRANSMISSION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %56, label %27

27:                                               ; preds = %2
  %28 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @MMC_GO_IDLE_STATE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %56, label %34

34:                                               ; preds = %27
  %35 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @MMC_GO_INACTIVE_STATE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %34
  %42 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @SD_IO_RW_DIRECT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 9
  %53 = and i32 %52, 131071
  %54 = load i32, i32* @SDIO_CCCR_ABORT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48, %34, %27, %2
  %57 = load i32, i32* @SDMMC_CMD_STOP, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %77

60:                                               ; preds = %48, %41
  %61 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %62 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @MMC_SEND_STATUS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = icmp ne %struct.TYPE_2__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @SDMMC_CMD_PRV_DAT_WAIT, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %67, %60
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %79 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @SD_SWITCH_VOLTAGE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %77
  %85 = load i32, i32* @SDMMC_CMD_VOLT_SWITCH, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %89 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %88, i32 0, i32 2
  %90 = load %struct.dw_mci*, %struct.dw_mci** %89, align 8
  %91 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @STATE_SENDING_CMD, align 8
  %94 = icmp ne i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON(i32 %95)
  %97 = load i64, i64* @STATE_SENDING_CMD11, align 8
  %98 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %99 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %98, i32 0, i32 2
  %100 = load %struct.dw_mci*, %struct.dw_mci** %99, align 8
  %101 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %100, i32 0, i32 0
  store i64 %97, i64* %101, align 8
  %102 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %103 = load i32, i32* @CLKENA, align 4
  %104 = call i32 @mci_readl(%struct.dw_mci* %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @SDMMC_CLKEN_LOW_PWR, align 4
  %106 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %107 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %105, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %114 = load i32, i32* @CLKENA, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @mci_writel(%struct.dw_mci* %113, i32 %114, i32 %115)
  %117 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %118 = load i32, i32* @SDMMC_CMD_UPD_CLK, align 4
  %119 = load i32, i32* @SDMMC_CMD_PRV_DAT_WAIT, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @mci_send_cmd(%struct.dw_mci_slot* %117, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %84, %77
  %123 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %124 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %122
  %130 = load i32, i32* @SDMMC_CMD_RESP_EXP, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %134 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @MMC_RSP_136, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i32, i32* @SDMMC_CMD_RESP_LONG, align 4
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %139, %129
  br label %144

144:                                              ; preds = %143, %122
  %145 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %146 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @MMC_RSP_CRC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @SDMMC_CMD_RESP_CRC, align 4
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %157 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %156, i32 0, i32 3
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = icmp ne %struct.TYPE_2__* %158, null
  br i1 %159, label %160, label %177

160:                                              ; preds = %155
  %161 = load i32, i32* @SDMMC_CMD_DAT_EXP, align 4
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %165 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %164, i32 0, i32 3
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MMC_DATA_WRITE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = load i32, i32* @SDMMC_CMD_DAT_WR, align 4
  %174 = load i32, i32* %7, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %172, %160
  br label %177

177:                                              ; preds = %176, %155
  %178 = load i32, i32* @DW_MMC_CARD_NO_USE_HOLD, align 4
  %179 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %5, align 8
  %180 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %179, i32 0, i32 1
  %181 = call i32 @test_bit(i32 %178, i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* @SDMMC_CMD_USE_HOLD_REG, align 4
  %185 = load i32, i32* %7, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %183, %177
  %188 = load i32, i32* %7, align 4
  ret i32 %188
}

declare dso_local %struct.dw_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @mci_send_cmd(%struct.dw_mci_slot*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
