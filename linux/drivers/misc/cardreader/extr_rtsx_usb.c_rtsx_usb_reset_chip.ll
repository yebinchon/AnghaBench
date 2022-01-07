; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_reset_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_reset_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i64 }

@LQFP48 = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@LDO3318_PWR_MASK = common dso_local global i32 0, align 4
@LDO_SUSPEND = common dso_local global i32 0, align 4
@FORCE_LDO_POWERB = common dso_local global i32 0, align 4
@CARD_PULL_CTL1 = common dso_local global i32 0, align 4
@CARD_PULL_CTL5 = common dso_local global i32 0, align 4
@CARD_PULL_CTL6 = common dso_local global i32 0, align 4
@SYS_DUMMY0 = common dso_local global i32 0, align 4
@NYET_MSAK = common dso_local global i32 0, align 4
@NYET_EN = common dso_local global i32 0, align 4
@CD_DEGLITCH_WIDTH = common dso_local global i32 0, align 4
@CD_DEGLITCH_EN = common dso_local global i32 0, align 4
@XD_CD_DEGLITCH_EN = common dso_local global i32 0, align 4
@SD30_DRIVE_SEL = common dso_local global i32 0, align 4
@SD30_DRIVE_MASK = common dso_local global i32 0, align 4
@DRIVER_TYPE_D = common dso_local global i32 0, align 4
@CARD_DRIVE_SEL = common dso_local global i32 0, align 4
@SD20_DRIVE_MASK = common dso_local global i32 0, align 4
@LDO_POWER_CFG = common dso_local global i32 0, align 4
@CARD_DMA1_CTL = common dso_local global i32 0, align 4
@EXTEND_DMA1_ASYNC_SIGNAL = common dso_local global i32 0, align 4
@CARD_INT_PEND = common dso_local global i32 0, align 4
@XD_INT = common dso_local global i32 0, align 4
@MS_INT = common dso_local global i32 0, align 4
@SD_INT = common dso_local global i32 0, align 4
@MODE_C = common dso_local global i32 0, align 4
@CFG_MODE = common dso_local global i32 0, align 4
@XTAL_FREE = common dso_local global i32 0, align 4
@CLK_MODE_MASK = common dso_local global i32 0, align 4
@CLK_MODE_NON_XTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_ucr*)* @rtsx_usb_reset_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_reset_chip(%struct.rtsx_ucr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_ucr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %3, align 8
  %6 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %7 = call i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr* %6)
  %8 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %9 = load i32, i32* @LQFP48, align 4
  %10 = call i64 @CHECK_PKG(%struct.rtsx_ucr* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %1
  %13 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %14 = load i32, i32* @WRITE_REG_CMD, align 4
  %15 = load i32, i32* @CARD_PWR_CTL, align 4
  %16 = load i32, i32* @LDO3318_PWR_MASK, align 4
  %17 = load i32, i32* @LDO_SUSPEND, align 4
  %18 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %20 = load i32, i32* @WRITE_REG_CMD, align 4
  %21 = load i32, i32* @CARD_PWR_CTL, align 4
  %22 = load i32, i32* @FORCE_LDO_POWERB, align 4
  %23 = load i32, i32* @FORCE_LDO_POWERB, align 4
  %24 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %26 = load i32, i32* @WRITE_REG_CMD, align 4
  %27 = load i32, i32* @CARD_PULL_CTL1, align 4
  %28 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %25, i32 %26, i32 %27, i32 48, i32 16)
  %29 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %30 = load i32, i32* @WRITE_REG_CMD, align 4
  %31 = load i32, i32* @CARD_PULL_CTL5, align 4
  %32 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %29, i32 %30, i32 %31, i32 3, i32 1)
  %33 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %34 = load i32, i32* @WRITE_REG_CMD, align 4
  %35 = load i32, i32* @CARD_PULL_CTL6, align 4
  %36 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %33, i32 %34, i32 %35, i32 12, i32 4)
  br label %37

37:                                               ; preds = %12, %1
  %38 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %39 = load i32, i32* @WRITE_REG_CMD, align 4
  %40 = load i32, i32* @SYS_DUMMY0, align 4
  %41 = load i32, i32* @NYET_MSAK, align 4
  %42 = load i32, i32* @NYET_EN, align 4
  %43 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %45 = load i32, i32* @WRITE_REG_CMD, align 4
  %46 = load i32, i32* @CD_DEGLITCH_WIDTH, align 4
  %47 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %44, i32 %45, i32 %46, i32 255, i32 8)
  %48 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %49 = load i32, i32* @WRITE_REG_CMD, align 4
  %50 = load i32, i32* @CD_DEGLITCH_EN, align 4
  %51 = load i32, i32* @XD_CD_DEGLITCH_EN, align 4
  %52 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %48, i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %54 = load i32, i32* @WRITE_REG_CMD, align 4
  %55 = load i32, i32* @SD30_DRIVE_SEL, align 4
  %56 = load i32, i32* @SD30_DRIVE_MASK, align 4
  %57 = load i32, i32* @DRIVER_TYPE_D, align 4
  %58 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %60 = load i32, i32* @WRITE_REG_CMD, align 4
  %61 = load i32, i32* @CARD_DRIVE_SEL, align 4
  %62 = load i32, i32* @SD20_DRIVE_MASK, align 4
  %63 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %59, i32 %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %65 = load i32, i32* @WRITE_REG_CMD, align 4
  %66 = load i32, i32* @LDO_POWER_CFG, align 4
  %67 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %64, i32 %65, i32 %66, i32 224, i32 0)
  %68 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %69 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %37
  %73 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %74 = load i32, i32* @WRITE_REG_CMD, align 4
  %75 = load i32, i32* @CARD_PULL_CTL5, align 4
  %76 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %73, i32 %74, i32 %75, i32 3, i32 1)
  br label %77

77:                                               ; preds = %72, %37
  %78 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %79 = load i32, i32* @WRITE_REG_CMD, align 4
  %80 = load i32, i32* @CARD_DMA1_CTL, align 4
  %81 = load i32, i32* @EXTEND_DMA1_ASYNC_SIGNAL, align 4
  %82 = load i32, i32* @EXTEND_DMA1_ASYNC_SIGNAL, align 4
  %83 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %85 = load i32, i32* @WRITE_REG_CMD, align 4
  %86 = load i32, i32* @CARD_INT_PEND, align 4
  %87 = load i32, i32* @XD_INT, align 4
  %88 = load i32, i32* @MS_INT, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SD_INT, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @XD_INT, align 4
  %93 = load i32, i32* @MS_INT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @SD_INT, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr* %84, i32 %85, i32 %86, i32 %91, i32 %96)
  %98 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %99 = load i32, i32* @MODE_C, align 4
  %100 = call i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %98, i32 %99, i32 100)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %77
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %128

105:                                              ; preds = %77
  %106 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %107 = load i32, i32* @CFG_MODE, align 4
  %108 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %106, i32 %107, i32* %5)
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @XTAL_FREE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @CLK_MODE_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @CLK_MODE_NON_XTAL, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %113, %105
  %120 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %3, align 8
  %121 = call i32 @rtsx_usb_write_phy_register(%struct.rtsx_ucr* %120, i32 194, i32 124)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %128

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %113
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %124, %103
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @rtsx_usb_init_cmd(%struct.rtsx_ucr*) #1

declare dso_local i64 @CHECK_PKG(%struct.rtsx_ucr*, i32) #1

declare dso_local i32 @rtsx_usb_add_cmd(%struct.rtsx_ucr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr*, i32, i32) #1

declare dso_local i32 @rtsx_usb_read_register(%struct.rtsx_ucr*, i32, i32*) #1

declare dso_local i32 @rtsx_usb_write_phy_register(%struct.rtsx_ucr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
