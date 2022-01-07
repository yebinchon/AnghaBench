; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_vout_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_vout_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32, i32, i32, i64, i64 }

@SOLO_VO_FMT_ENC = common dso_local global i32 0, align 4
@SOLO_VO_USER_COLOR_SET_NAV = common dso_local global i32 0, align 4
@SOLO_VO_USER_COLOR_SET_NAH = common dso_local global i32 0, align 4
@SOLO_VO_ACT_H = common dso_local global i32 0, align 4
@SOLO_VO_ACT_V = common dso_local global i32 0, align 4
@SOLO_VO_RANGE_HV = common dso_local global i32 0, align 4
@SOLO_VO_BORDER_LINE_COLOR = common dso_local global i32 0, align 4
@SOLO_VO_BORDER_FILL_COLOR = common dso_local global i32 0, align 4
@SOLO_VO_BKG_COLOR = common dso_local global i32 0, align 4
@SOLO_VO_DISP_ERASE = common dso_local global i32 0, align 4
@SOLO_VO_DISP_ERASE_ON = common dso_local global i32 0, align 4
@SOLO_VI_WIN_SW = common dso_local global i32 0, align 4
@SOLO_VO_ZOOM_CTRL = common dso_local global i32 0, align 4
@SOLO_VO_FREEZE_CTRL = common dso_local global i32 0, align 4
@SOLO_VO_DISP_CTRL = common dso_local global i32 0, align 4
@SOLO_VO_DISP_ON = common dso_local global i32 0, align 4
@SOLO_DISP_EXT_ADDR = common dso_local global i32 0, align 4
@SOLO_VI_CH_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_vout_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_vout_config(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %3 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %4 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %3, i32 0, i32 0
  store i32 6, i32* %4, align 8
  %5 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %6 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %5, i32 0, i32 1
  store i32 8, i32* %6, align 4
  %7 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %8 = load i32, i32* @SOLO_VO_FMT_ENC, align 4
  %9 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %10 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SOLO_VO_USER_COLOR_SET_NAV, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SOLO_VO_USER_COLOR_SET_NAH, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @SOLO_VO_NA_COLOR_Y(i32 0)
  %17 = or i32 %15, %16
  %18 = call i32 @SOLO_VO_NA_COLOR_CB(i32 0)
  %19 = or i32 %17, %18
  %20 = call i32 @SOLO_VO_NA_COLOR_CR(i32 0)
  %21 = or i32 %19, %20
  %22 = call i32 @solo_reg_write(%struct.solo_dev* %7, i32 %8, i32 %21)
  %23 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %24 = load i32, i32* @SOLO_VO_ACT_H, align 4
  %25 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %26 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @SOLO_VO_H_START(i32 %27)
  %29 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %30 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %34 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 @SOLO_VO_H_STOP(i64 %36)
  %38 = or i32 %28, %37
  %39 = call i32 @solo_reg_write(%struct.solo_dev* %23, i32 %24, i32 %38)
  %40 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %41 = load i32, i32* @SOLO_VO_ACT_V, align 4
  %42 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %43 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SOLO_VO_V_START(i32 %44)
  %46 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %51 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @SOLO_VO_V_STOP(i64 %53)
  %55 = or i32 %45, %54
  %56 = call i32 @solo_reg_write(%struct.solo_dev* %40, i32 %41, i32 %55)
  %57 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %58 = load i32, i32* @SOLO_VO_RANGE_HV, align 4
  %59 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %60 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @SOLO_VO_H_LEN(i64 %61)
  %63 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %64 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @SOLO_VO_V_LEN(i64 %65)
  %67 = or i32 %62, %66
  %68 = call i32 @solo_reg_write(%struct.solo_dev* %57, i32 %58, i32 %67)
  %69 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %70 = load i32, i32* @SOLO_VO_BORDER_LINE_COLOR, align 4
  %71 = call i32 @solo_reg_write(%struct.solo_dev* %69, i32 %70, i32 -1601658744)
  %72 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %73 = load i32, i32* @SOLO_VO_BORDER_FILL_COLOR, align 4
  %74 = call i32 @solo_reg_write(%struct.solo_dev* %72, i32 %73, i32 277811343)
  %75 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %76 = load i32, i32* @SOLO_VO_BKG_COLOR, align 4
  %77 = call i32 @solo_reg_write(%struct.solo_dev* %75, i32 %76, i32 276828288)
  %78 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %79 = load i32, i32* @SOLO_VO_DISP_ERASE, align 4
  %80 = load i32, i32* @SOLO_VO_DISP_ERASE_ON, align 4
  %81 = call i32 @solo_reg_write(%struct.solo_dev* %78, i32 %79, i32 %80)
  %82 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %83 = load i32, i32* @SOLO_VI_WIN_SW, align 4
  %84 = call i32 @solo_reg_write(%struct.solo_dev* %82, i32 %83, i32 0)
  %85 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %86 = load i32, i32* @SOLO_VO_ZOOM_CTRL, align 4
  %87 = call i32 @solo_reg_write(%struct.solo_dev* %85, i32 %86, i32 0)
  %88 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %89 = load i32, i32* @SOLO_VO_FREEZE_CTRL, align 4
  %90 = call i32 @solo_reg_write(%struct.solo_dev* %88, i32 %89, i32 0)
  %91 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %92 = load i32, i32* @SOLO_VO_DISP_CTRL, align 4
  %93 = load i32, i32* @SOLO_VO_DISP_ON, align 4
  %94 = call i32 @SOLO_VO_DISP_ERASE_COUNT(i32 8)
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SOLO_DISP_EXT_ADDR, align 4
  %97 = call i32 @SOLO_VO_DISP_BASE(i32 %96)
  %98 = or i32 %95, %97
  %99 = call i32 @solo_reg_write(%struct.solo_dev* %91, i32 %92, i32 %98)
  %100 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %101 = call i32 @solo_vout_config_cursor(%struct.solo_dev* %100)
  %102 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %103 = load i32, i32* @SOLO_VI_CH_ENA, align 4
  %104 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %105 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 1, %106
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @solo_reg_write(%struct.solo_dev* %102, i32 %103, i32 %108)
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VO_NA_COLOR_Y(i32) #1

declare dso_local i32 @SOLO_VO_NA_COLOR_CB(i32) #1

declare dso_local i32 @SOLO_VO_NA_COLOR_CR(i32) #1

declare dso_local i32 @SOLO_VO_H_START(i32) #1

declare dso_local i32 @SOLO_VO_H_STOP(i64) #1

declare dso_local i32 @SOLO_VO_V_START(i32) #1

declare dso_local i32 @SOLO_VO_V_STOP(i64) #1

declare dso_local i32 @SOLO_VO_H_LEN(i64) #1

declare dso_local i32 @SOLO_VO_V_LEN(i64) #1

declare dso_local i32 @SOLO_VO_DISP_ERASE_COUNT(i32) #1

declare dso_local i32 @SOLO_VO_DISP_BASE(i32) #1

declare dso_local i32 @solo_vout_config_cursor(%struct.solo_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
