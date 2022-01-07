; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_pci_sdmmc.c_sd_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_pci_sdmmc = type { %struct.rtsx_pcr* }
%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SD_CFG1 = common dso_local global i32 0, align 4
@SD_ASYNC_FIFO_NOT_RST = common dso_local global i32 0, align 4
@SD_30_MODE = common dso_local global i32 0, align 4
@CLK_CTL = common dso_local global i32 0, align 4
@CLK_LOW_FREQ = common dso_local global i32 0, align 4
@CARD_CLK_SOURCE = common dso_local global i32 0, align 4
@CRC_VAR_CLK0 = common dso_local global i32 0, align 4
@SD30_FIX_CLK = common dso_local global i32 0, align 4
@SAMPLE_VAR_CLK1 = common dso_local global i32 0, align 4
@SD_DDR_MODE = common dso_local global i32 0, align 4
@SD_PUSH_POINT_CTL = common dso_local global i32 0, align 4
@DDR_VAR_TX_CMD_DAT = common dso_local global i32 0, align 4
@SD_SAMPLE_POINT_CTL = common dso_local global i32 0, align 4
@DDR_VAR_RX_DAT = common dso_local global i32 0, align 4
@DDR_VAR_RX_CMD = common dso_local global i32 0, align 4
@SD_20_MODE = common dso_local global i32 0, align 4
@CRC_FIX_CLK = common dso_local global i32 0, align 4
@SD30_VAR_CLK0 = common dso_local global i32 0, align 4
@SD20_TX_SEL_MASK = common dso_local global i32 0, align 4
@SD20_TX_14_AHEAD = common dso_local global i32 0, align 4
@SD20_RX_SEL_MASK = common dso_local global i32 0, align 4
@SD20_RX_14_DELAY = common dso_local global i32 0, align 4
@SD20_RX_POS_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_pci_sdmmc*, i8)* @sd_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_timing(%struct.realtek_pci_sdmmc* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.realtek_pci_sdmmc*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.rtsx_pcr*, align 8
  %6 = alloca i32, align 4
  store %struct.realtek_pci_sdmmc* %0, %struct.realtek_pci_sdmmc** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.realtek_pci_sdmmc*, %struct.realtek_pci_sdmmc** %3, align 8
  %8 = getelementptr inbounds %struct.realtek_pci_sdmmc, %struct.realtek_pci_sdmmc* %7, i32 0, i32 0
  %9 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %8, align 8
  store %struct.rtsx_pcr* %9, %struct.rtsx_pcr** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %11 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %10)
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %128 [
    i32 129, label %14
    i32 128, label %14
    i32 133, label %44
    i32 130, label %44
    i32 132, label %90
    i32 131, label %90
  ]

14:                                               ; preds = %2, %2
  %15 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %16 = load i32, i32* @WRITE_REG_CMD, align 4
  %17 = load i32, i32* @SD_CFG1, align 4
  %18 = load i32, i32* @SD_ASYNC_FIFO_NOT_RST, align 4
  %19 = or i32 12, %18
  %20 = load i32, i32* @SD_30_MODE, align 4
  %21 = load i32, i32* @SD_ASYNC_FIFO_NOT_RST, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %15, i32 %16, i32 %17, i32 %19, i32 %22)
  %24 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %25 = load i32, i32* @WRITE_REG_CMD, align 4
  %26 = load i32, i32* @CLK_CTL, align 4
  %27 = load i32, i32* @CLK_LOW_FREQ, align 4
  %28 = load i32, i32* @CLK_LOW_FREQ, align 4
  %29 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %31 = load i32, i32* @WRITE_REG_CMD, align 4
  %32 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %33 = load i32, i32* @CRC_VAR_CLK0, align 4
  %34 = load i32, i32* @SD30_FIX_CLK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 255, i32 %37)
  %39 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %40 = load i32, i32* @WRITE_REG_CMD, align 4
  %41 = load i32, i32* @CLK_CTL, align 4
  %42 = load i32, i32* @CLK_LOW_FREQ, align 4
  %43 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %39, i32 %40, i32 %41, i32 %42, i32 0)
  br label %164

44:                                               ; preds = %2, %2
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %46 = load i32, i32* @WRITE_REG_CMD, align 4
  %47 = load i32, i32* @SD_CFG1, align 4
  %48 = load i32, i32* @SD_ASYNC_FIFO_NOT_RST, align 4
  %49 = or i32 12, %48
  %50 = load i32, i32* @SD_DDR_MODE, align 4
  %51 = load i32, i32* @SD_ASYNC_FIFO_NOT_RST, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %45, i32 %46, i32 %47, i32 %49, i32 %52)
  %54 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %55 = load i32, i32* @WRITE_REG_CMD, align 4
  %56 = load i32, i32* @CLK_CTL, align 4
  %57 = load i32, i32* @CLK_LOW_FREQ, align 4
  %58 = load i32, i32* @CLK_LOW_FREQ, align 4
  %59 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %61 = load i32, i32* @WRITE_REG_CMD, align 4
  %62 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %63 = load i32, i32* @CRC_VAR_CLK0, align 4
  %64 = load i32, i32* @SD30_FIX_CLK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %60, i32 %61, i32 %62, i32 255, i32 %67)
  %69 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %70 = load i32, i32* @WRITE_REG_CMD, align 4
  %71 = load i32, i32* @CLK_CTL, align 4
  %72 = load i32, i32* @CLK_LOW_FREQ, align 4
  %73 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %69, i32 %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %75 = load i32, i32* @WRITE_REG_CMD, align 4
  %76 = load i32, i32* @SD_PUSH_POINT_CTL, align 4
  %77 = load i32, i32* @DDR_VAR_TX_CMD_DAT, align 4
  %78 = load i32, i32* @DDR_VAR_TX_CMD_DAT, align 4
  %79 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %81 = load i32, i32* @WRITE_REG_CMD, align 4
  %82 = load i32, i32* @SD_SAMPLE_POINT_CTL, align 4
  %83 = load i32, i32* @DDR_VAR_RX_DAT, align 4
  %84 = load i32, i32* @DDR_VAR_RX_CMD, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @DDR_VAR_RX_DAT, align 4
  %87 = load i32, i32* @DDR_VAR_RX_CMD, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %80, i32 %81, i32 %82, i32 %85, i32 %88)
  br label %164

90:                                               ; preds = %2, %2
  %91 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %92 = load i32, i32* @WRITE_REG_CMD, align 4
  %93 = load i32, i32* @SD_CFG1, align 4
  %94 = load i32, i32* @SD_20_MODE, align 4
  %95 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %91, i32 %92, i32 %93, i32 12, i32 %94)
  %96 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %97 = load i32, i32* @WRITE_REG_CMD, align 4
  %98 = load i32, i32* @CLK_CTL, align 4
  %99 = load i32, i32* @CLK_LOW_FREQ, align 4
  %100 = load i32, i32* @CLK_LOW_FREQ, align 4
  %101 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %103 = load i32, i32* @WRITE_REG_CMD, align 4
  %104 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %105 = load i32, i32* @CRC_FIX_CLK, align 4
  %106 = load i32, i32* @SD30_VAR_CLK0, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %102, i32 %103, i32 %104, i32 255, i32 %109)
  %111 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %112 = load i32, i32* @WRITE_REG_CMD, align 4
  %113 = load i32, i32* @CLK_CTL, align 4
  %114 = load i32, i32* @CLK_LOW_FREQ, align 4
  %115 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %111, i32 %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %117 = load i32, i32* @WRITE_REG_CMD, align 4
  %118 = load i32, i32* @SD_PUSH_POINT_CTL, align 4
  %119 = load i32, i32* @SD20_TX_SEL_MASK, align 4
  %120 = load i32, i32* @SD20_TX_14_AHEAD, align 4
  %121 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %123 = load i32, i32* @WRITE_REG_CMD, align 4
  %124 = load i32, i32* @SD_SAMPLE_POINT_CTL, align 4
  %125 = load i32, i32* @SD20_RX_SEL_MASK, align 4
  %126 = load i32, i32* @SD20_RX_14_DELAY, align 4
  %127 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %122, i32 %123, i32 %124, i32 %125, i32 %126)
  br label %164

128:                                              ; preds = %2
  %129 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %130 = load i32, i32* @WRITE_REG_CMD, align 4
  %131 = load i32, i32* @SD_CFG1, align 4
  %132 = load i32, i32* @SD_20_MODE, align 4
  %133 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %129, i32 %130, i32 %131, i32 12, i32 %132)
  %134 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %135 = load i32, i32* @WRITE_REG_CMD, align 4
  %136 = load i32, i32* @CLK_CTL, align 4
  %137 = load i32, i32* @CLK_LOW_FREQ, align 4
  %138 = load i32, i32* @CLK_LOW_FREQ, align 4
  %139 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %141 = load i32, i32* @WRITE_REG_CMD, align 4
  %142 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %143 = load i32, i32* @CRC_FIX_CLK, align 4
  %144 = load i32, i32* @SD30_VAR_CLK0, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %140, i32 %141, i32 %142, i32 255, i32 %147)
  %149 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %150 = load i32, i32* @WRITE_REG_CMD, align 4
  %151 = load i32, i32* @CLK_CTL, align 4
  %152 = load i32, i32* @CLK_LOW_FREQ, align 4
  %153 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %149, i32 %150, i32 %151, i32 %152, i32 0)
  %154 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %155 = load i32, i32* @WRITE_REG_CMD, align 4
  %156 = load i32, i32* @SD_PUSH_POINT_CTL, align 4
  %157 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %154, i32 %155, i32 %156, i32 255, i32 0)
  %158 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %159 = load i32, i32* @WRITE_REG_CMD, align 4
  %160 = load i32, i32* @SD_SAMPLE_POINT_CTL, align 4
  %161 = load i32, i32* @SD20_RX_SEL_MASK, align 4
  %162 = load i32, i32* @SD20_RX_POS_EDGE, align 4
  %163 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %158, i32 %159, i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %128, %90, %44, %14
  %165 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %166 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %165, i32 100)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
