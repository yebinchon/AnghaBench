; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_vin_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_vin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32, i32, i32, i64, i64, i64 }

@SOLO_SYS_VCLK = common dso_local global i32 0, align 4
@SOLO_VCLK_DELAY = common dso_local global i32 0, align 4
@SOLO_VI_ACT_I_P = common dso_local global i32 0, align 4
@SOLO_VI_ACT_I_S = common dso_local global i32 0, align 4
@SOLO_VI_ACT_P = common dso_local global i32 0, align 4
@SOLO_PROGRESSIVE_VSIZE = common dso_local global i64 0, align 8
@SOLO_VI_CH_FORMAT = common dso_local global i32 0, align 4
@SOLO_DEV_6010 = common dso_local global i64 0, align 8
@SOLO_VI_FMT_CFG = common dso_local global i32 0, align 4
@SOLO_VI_PAGE_SW = common dso_local global i32 0, align 4
@SOLO_VO_FMT_TYPE_NTSC = common dso_local global i64 0, align 8
@SOLO_VI_PB_CONFIG = common dso_local global i32 0, align 4
@SOLO_VI_PB_USER_MODE = common dso_local global i32 0, align 4
@SOLO_VI_PB_RANGE_HV = common dso_local global i32 0, align 4
@SOLO_VI_PB_ACT_V = common dso_local global i32 0, align 4
@SOLO_VI_PB_PAL = common dso_local global i32 0, align 4
@SOLO_VI_PB_ACT_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_vin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_vin_config(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  %3 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %4 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %3, i32 0, i32 0
  store i32 8, i32* %4, align 8
  %5 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %6 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %5, i32 0, i32 1
  store i32 2, i32* %6, align 4
  %7 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %8 = load i32, i32* @SOLO_SYS_VCLK, align 4
  %9 = call i32 @SOLO_VCLK_SELECT(i32 2)
  %10 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %11 = call i32 @SOLO_VCLK_VIN1415_DELAY(i32 %10)
  %12 = or i32 %9, %11
  %13 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %14 = call i32 @SOLO_VCLK_VIN1213_DELAY(i32 %13)
  %15 = or i32 %12, %14
  %16 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %17 = call i32 @SOLO_VCLK_VIN1011_DELAY(i32 %16)
  %18 = or i32 %15, %17
  %19 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %20 = call i32 @SOLO_VCLK_VIN0809_DELAY(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %23 = call i32 @SOLO_VCLK_VIN0607_DELAY(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %26 = call i32 @SOLO_VCLK_VIN0405_DELAY(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %29 = call i32 @SOLO_VCLK_VIN0203_DELAY(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @SOLO_VCLK_DELAY, align 4
  %32 = call i32 @SOLO_VCLK_VIN0001_DELAY(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i32 @solo_reg_write(%struct.solo_dev* %7, i32 %8, i32 %33)
  %35 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %36 = load i32, i32* @SOLO_VI_ACT_I_P, align 4
  %37 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %38 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @SOLO_VI_H_START(i32 %39)
  %41 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %42 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SOLO_VI_V_START(i32 %43)
  %45 = or i32 %40, %44
  %46 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %51 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = call i32 @SOLO_VI_V_STOP(i64 %53)
  %55 = or i32 %45, %54
  %56 = call i32 @solo_reg_write(%struct.solo_dev* %35, i32 %36, i32 %55)
  %57 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %58 = load i32, i32* @SOLO_VI_ACT_I_S, align 4
  %59 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %60 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @SOLO_VI_H_START(i32 %61)
  %63 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %64 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SOLO_VI_V_START(i32 %65)
  %67 = or i32 %62, %66
  %68 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %69 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %73 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = call i32 @SOLO_VI_V_STOP(i64 %75)
  %77 = or i32 %67, %76
  %78 = call i32 @solo_reg_write(%struct.solo_dev* %57, i32 %58, i32 %77)
  %79 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %80 = load i32, i32* @SOLO_VI_ACT_P, align 4
  %81 = call i32 @SOLO_VI_H_START(i32 0)
  %82 = call i32 @SOLO_VI_V_START(i32 1)
  %83 = or i32 %81, %82
  %84 = load i64, i64* @SOLO_PROGRESSIVE_VSIZE, align 8
  %85 = call i32 @SOLO_VI_V_STOP(i64 %84)
  %86 = or i32 %83, %85
  %87 = call i32 @solo_reg_write(%struct.solo_dev* %79, i32 %80, i32 %86)
  %88 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %89 = load i32, i32* @SOLO_VI_CH_FORMAT, align 4
  %90 = call i32 @SOLO_VI_FD_SEL_MASK(i32 0)
  %91 = call i32 @SOLO_VI_PROG_MASK(i32 0)
  %92 = or i32 %90, %91
  %93 = call i32 @solo_reg_write(%struct.solo_dev* %88, i32 %89, i32 %92)
  %94 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %95 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SOLO_DEV_6010, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %1
  %100 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %101 = load i32, i32* @SOLO_VI_FMT_CFG, align 4
  %102 = call i32 @solo_reg_write(%struct.solo_dev* %100, i32 %101, i32 0)
  br label %107

103:                                              ; preds = %1
  %104 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %105 = load i32, i32* @SOLO_VI_FMT_CFG, align 4
  %106 = call i32 @solo_reg_write(%struct.solo_dev* %104, i32 %105, i32 67108864)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %109 = load i32, i32* @SOLO_VI_PAGE_SW, align 4
  %110 = call i32 @solo_reg_write(%struct.solo_dev* %108, i32 %109, i32 2)
  %111 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %112 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SOLO_VO_FMT_TYPE_NTSC, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %107
  %117 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %118 = load i32, i32* @SOLO_VI_PB_CONFIG, align 4
  %119 = load i32, i32* @SOLO_VI_PB_USER_MODE, align 4
  %120 = call i32 @solo_reg_write(%struct.solo_dev* %117, i32 %118, i32 %119)
  %121 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %122 = load i32, i32* @SOLO_VI_PB_RANGE_HV, align 4
  %123 = call i32 @SOLO_VI_PB_HSIZE(i32 858)
  %124 = call i32 @SOLO_VI_PB_VSIZE(i32 246)
  %125 = or i32 %123, %124
  %126 = call i32 @solo_reg_write(%struct.solo_dev* %121, i32 %122, i32 %125)
  %127 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %128 = load i32, i32* @SOLO_VI_PB_ACT_V, align 4
  %129 = call i32 @SOLO_VI_PB_VSTART(i32 4)
  %130 = call i32 @SOLO_VI_PB_VSTOP(i32 244)
  %131 = or i32 %129, %130
  %132 = call i32 @solo_reg_write(%struct.solo_dev* %127, i32 %128, i32 %131)
  br label %152

133:                                              ; preds = %107
  %134 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %135 = load i32, i32* @SOLO_VI_PB_CONFIG, align 4
  %136 = load i32, i32* @SOLO_VI_PB_USER_MODE, align 4
  %137 = load i32, i32* @SOLO_VI_PB_PAL, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @solo_reg_write(%struct.solo_dev* %134, i32 %135, i32 %138)
  %140 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %141 = load i32, i32* @SOLO_VI_PB_RANGE_HV, align 4
  %142 = call i32 @SOLO_VI_PB_HSIZE(i32 864)
  %143 = call i32 @SOLO_VI_PB_VSIZE(i32 294)
  %144 = or i32 %142, %143
  %145 = call i32 @solo_reg_write(%struct.solo_dev* %140, i32 %141, i32 %144)
  %146 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %147 = load i32, i32* @SOLO_VI_PB_ACT_V, align 4
  %148 = call i32 @SOLO_VI_PB_VSTART(i32 4)
  %149 = call i32 @SOLO_VI_PB_VSTOP(i32 292)
  %150 = or i32 %148, %149
  %151 = call i32 @solo_reg_write(%struct.solo_dev* %146, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %133, %116
  %153 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %154 = load i32, i32* @SOLO_VI_PB_ACT_H, align 4
  %155 = call i32 @SOLO_VI_PB_HSTART(i32 16)
  %156 = call i32 @SOLO_VI_PB_HSTOP(i32 736)
  %157 = or i32 %155, %156
  %158 = call i32 @solo_reg_write(%struct.solo_dev* %153, i32 %154, i32 %157)
  ret void
}

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VCLK_SELECT(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN1415_DELAY(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN1213_DELAY(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN1011_DELAY(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN0809_DELAY(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN0607_DELAY(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN0405_DELAY(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN0203_DELAY(i32) #1

declare dso_local i32 @SOLO_VCLK_VIN0001_DELAY(i32) #1

declare dso_local i32 @SOLO_VI_H_START(i32) #1

declare dso_local i32 @SOLO_VI_V_START(i32) #1

declare dso_local i32 @SOLO_VI_V_STOP(i64) #1

declare dso_local i32 @SOLO_VI_FD_SEL_MASK(i32) #1

declare dso_local i32 @SOLO_VI_PROG_MASK(i32) #1

declare dso_local i32 @SOLO_VI_PB_HSIZE(i32) #1

declare dso_local i32 @SOLO_VI_PB_VSIZE(i32) #1

declare dso_local i32 @SOLO_VI_PB_VSTART(i32) #1

declare dso_local i32 @SOLO_VI_PB_VSTOP(i32) #1

declare dso_local i32 @SOLO_VI_PB_HSTART(i32) #1

declare dso_local i32 @SOLO_VI_PB_HSTOP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
