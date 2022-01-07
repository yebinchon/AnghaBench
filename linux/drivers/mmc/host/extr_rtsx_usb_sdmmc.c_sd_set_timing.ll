; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_rtsx_usb_sdmmc.c_sd_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_usb_sdmmc = type { %struct.rtsx_ucr* }
%struct.rtsx_ucr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@SD_CFG1 = common dso_local global i32 0, align 4
@SD_ASYNC_FIFO_RST = common dso_local global i32 0, align 4
@SD_30_MODE = common dso_local global i32 0, align 4
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
@MODE_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_usb_sdmmc*, i8, i32*)* @sd_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_timing(%struct.rtsx_usb_sdmmc* %0, i8 zeroext %1, i32* %2) #0 {
  %4 = alloca %struct.rtsx_usb_sdmmc*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtsx_ucr*, align 8
  %8 = alloca i32, align 4
  store %struct.rtsx_usb_sdmmc* %0, %struct.rtsx_usb_sdmmc** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32* %2, i32** %6, align 8
  %9 = load %struct.rtsx_usb_sdmmc*, %struct.rtsx_usb_sdmmc** %4, align 8
  %10 = getelementptr inbounds %struct.rtsx_usb_sdmmc, %struct.rtsx_usb_sdmmc* %9, i32 0, i32 0
  %11 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %10, align 8
  store %struct.rtsx_ucr* %11, %struct.rtsx_ucr** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %14 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %13)
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %99 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %36
    i32 132, label %72
    i32 131, label %72
  ]

17:                                               ; preds = %3, %3
  %18 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %19 = load i32, i32* @WRITE_REG_CMD, align 4
  %20 = load i32, i32* @SD_CFG1, align 4
  %21 = load i32, i32* @SD_ASYNC_FIFO_RST, align 4
  %22 = or i32 12, %21
  %23 = load i32, i32* @SD_30_MODE, align 4
  %24 = load i32, i32* @SD_ASYNC_FIFO_RST, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %18, i32 %19, i32 %20, i32 %22, i32 %25)
  %27 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %28 = load i32, i32* @WRITE_REG_CMD, align 4
  %29 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %30 = load i32, i32* @CRC_VAR_CLK0, align 4
  %31 = load i32, i32* @SD30_FIX_CLK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %27, i32 %28, i32 %29, i32 255, i32 %34)
  br label %124

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  store i32 1, i32* %37, align 4
  %38 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %39 = load i32, i32* @WRITE_REG_CMD, align 4
  %40 = load i32, i32* @SD_CFG1, align 4
  %41 = load i32, i32* @SD_ASYNC_FIFO_RST, align 4
  %42 = or i32 12, %41
  %43 = load i32, i32* @SD_DDR_MODE, align 4
  %44 = load i32, i32* @SD_ASYNC_FIFO_RST, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %38, i32 %39, i32 %40, i32 %42, i32 %45)
  %47 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %48 = load i32, i32* @WRITE_REG_CMD, align 4
  %49 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %50 = load i32, i32* @CRC_VAR_CLK0, align 4
  %51 = load i32, i32* @SD30_FIX_CLK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %47, i32 %48, i32 %49, i32 255, i32 %54)
  %56 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %57 = load i32, i32* @WRITE_REG_CMD, align 4
  %58 = load i32, i32* @SD_PUSH_POINT_CTL, align 4
  %59 = load i32, i32* @DDR_VAR_TX_CMD_DAT, align 4
  %60 = load i32, i32* @DDR_VAR_TX_CMD_DAT, align 4
  %61 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %63 = load i32, i32* @WRITE_REG_CMD, align 4
  %64 = load i32, i32* @SD_SAMPLE_POINT_CTL, align 4
  %65 = load i32, i32* @DDR_VAR_RX_DAT, align 4
  %66 = load i32, i32* @DDR_VAR_RX_CMD, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DDR_VAR_RX_DAT, align 4
  %69 = load i32, i32* @DDR_VAR_RX_CMD, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %62, i32 %63, i32 %64, i32 %67, i32 %70)
  br label %124

72:                                               ; preds = %3, %3
  %73 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %74 = load i32, i32* @WRITE_REG_CMD, align 4
  %75 = load i32, i32* @SD_CFG1, align 4
  %76 = load i32, i32* @SD_20_MODE, align 4
  %77 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %73, i32 %74, i32 %75, i32 12, i32 %76)
  %78 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %79 = load i32, i32* @WRITE_REG_CMD, align 4
  %80 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %81 = load i32, i32* @CRC_FIX_CLK, align 4
  %82 = load i32, i32* @SD30_VAR_CLK0, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %78, i32 %79, i32 %80, i32 255, i32 %85)
  %87 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %88 = load i32, i32* @WRITE_REG_CMD, align 4
  %89 = load i32, i32* @SD_PUSH_POINT_CTL, align 4
  %90 = load i32, i32* @SD20_TX_SEL_MASK, align 4
  %91 = load i32, i32* @SD20_TX_14_AHEAD, align 4
  %92 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %94 = load i32, i32* @WRITE_REG_CMD, align 4
  %95 = load i32, i32* @SD_SAMPLE_POINT_CTL, align 4
  %96 = load i32, i32* @SD20_RX_SEL_MASK, align 4
  %97 = load i32, i32* @SD20_RX_14_DELAY, align 4
  %98 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  br label %124

99:                                               ; preds = %3
  %100 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %101 = load i32, i32* @WRITE_REG_CMD, align 4
  %102 = load i32, i32* @SD_CFG1, align 4
  %103 = load i32, i32* @SD_20_MODE, align 4
  %104 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %100, i32 %101, i32 %102, i32 12, i32 %103)
  %105 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %106 = load i32, i32* @WRITE_REG_CMD, align 4
  %107 = load i32, i32* @CARD_CLK_SOURCE, align 4
  %108 = load i32, i32* @CRC_FIX_CLK, align 4
  %109 = load i32, i32* @SD30_VAR_CLK0, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @SAMPLE_VAR_CLK1, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %105, i32 %106, i32 %107, i32 255, i32 %112)
  %114 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %115 = load i32, i32* @WRITE_REG_CMD, align 4
  %116 = load i32, i32* @SD_PUSH_POINT_CTL, align 4
  %117 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %114, i32 %115, i32 %116, i32 255, i32 0)
  %118 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %119 = load i32, i32* @WRITE_REG_CMD, align 4
  %120 = load i32, i32* @SD_SAMPLE_POINT_CTL, align 4
  %121 = load i32, i32* @SD20_RX_SEL_MASK, align 4
  %122 = load i32, i32* @SD20_RX_POS_EDGE, align 4
  %123 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %118, i32 %119, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %99, %72, %36, %17
  %125 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %7, align 8
  %126 = load i32, i32* @MODE_C, align 4
  %127 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %125, i32 %126, i32 100)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

declare dso_local i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr*) #1

declare dso_local i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
