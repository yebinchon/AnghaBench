; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@CTL_SD_CARD_CLK_CTL = common dso_local global i32 0, align 4
@CLK_CTL_SCLKEN = common dso_local global i32 0, align 4
@TMIO_MMC_CLK_ACTUAL = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_HS400 = common dso_local global i64 0, align 8
@CLK_CTL_DIV_MASK = common dso_local global i32 0, align 4
@TMIO_MMC_MIN_RCAR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @renesas_sdhi_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_sdhi_set_clock(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %8 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %9 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %13 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %11, i32 %12)
  %14 = and i32 %10, %13
  %15 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %7, i32 %8, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %104

23:                                               ; preds = %2
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @renesas_sdhi_clk_update(%struct.tmio_mmc_host* %24, i32 %25)
  %27 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %32 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 512
  store i32 %36, i32* %6, align 4
  store i32 -2147483520, i32* %5, align 4
  br label %37

37:                                               ; preds = %45, %23
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 1
  %41 = icmp uge i32 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %37

48:                                               ; preds = %37
  %49 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TMIO_MMC_CLK_ACTUAL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 22
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %64 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MMC_TIMING_MMC_HS400, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, 255
  store i32 %73, i32* %5, align 4
  br label %77

74:                                               ; preds = %62
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, -256
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %57, %48
  %79 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %80 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @CLK_CTL_DIV_MASK, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %79, i32 %80, i32 %83)
  %85 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %86 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @TMIO_MMC_MIN_RCAR2, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %78
  %94 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %95

95:                                               ; preds = %93, %78
  %96 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %97 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %98 = load i32, i32* @CLK_CTL_SCLKEN, align 4
  %99 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %100 = load i32, i32* @CTL_SD_CARD_CLK_CTL, align 4
  %101 = call i32 @sd_ctrl_read16(%struct.tmio_mmc_host* %99, i32 %100)
  %102 = or i32 %98, %101
  %103 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %96, i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %95, %18
  %105 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %106 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TMIO_MMC_MIN_RCAR2, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %104
  %114 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %115

115:                                              ; preds = %113, %104
  ret void
}

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @sd_ctrl_read16(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @renesas_sdhi_clk_update(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
