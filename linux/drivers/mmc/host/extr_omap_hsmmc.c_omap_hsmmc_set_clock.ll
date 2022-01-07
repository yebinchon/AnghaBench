; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Set clock to %uHz\0A\00", align 1
@SYSCTL = common dso_local global i32 0, align 4
@CLKD_MASK = common dso_local global i64 0, align 8
@DTO_MASK = common dso_local global i64 0, align 8
@DTO = common dso_local global i32 0, align 4
@ICE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@MMC_TIMEOUT_MS = common dso_local global i32 0, align 4
@ICS = common dso_local global i64 0, align 8
@HSMMC_HAS_HSPE_SUPPORT = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@CAPA = common dso_local global i32 0, align 4
@HSS = common dso_local global i64 0, align 8
@HCTL = common dso_local global i32 0, align 4
@HSPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*)* @omap_hsmmc_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_set_clock(%struct.omap_hsmmc_host* %0) #0 {
  %2 = alloca %struct.omap_hsmmc_host*, align 8
  %3 = alloca %struct.mmc_ios*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %2, align 8
  %7 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %8 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.mmc_ios* %10, %struct.mmc_ios** %3, align 8
  %11 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @mmc_dev(%struct.TYPE_4__* %13)
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_vdbg(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %20 = call i32 @omap_hsmmc_stop_clock(%struct.omap_hsmmc_host* %19)
  %21 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SYSCTL, align 4
  %25 = call i64 @OMAP_HSMMC_READ(i32 %23, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @CLKD_MASK, align 8
  %28 = load i64, i64* @DTO_MASK, align 8
  %29 = or i64 %27, %28
  %30 = xor i64 %29, -1
  %31 = and i64 %26, %30
  store i64 %31, i64* %4, align 8
  %32 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %33 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %34 = call i64 @calc_divisor(%struct.omap_hsmmc_host* %32, %struct.mmc_ios* %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = shl i64 %36, 6
  %38 = or i64 %35, %37
  %39 = load i32, i32* @DTO, align 4
  %40 = shl i32 %39, 16
  %41 = sext i32 %40 to i64
  %42 = or i64 %38, %41
  store i64 %42, i64* %4, align 8
  %43 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %44 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SYSCTL, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @OMAP_HSMMC_WRITE(i32 %45, i32 %46, i64 %47)
  %49 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %50 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SYSCTL, align 4
  %53 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %54 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SYSCTL, align 4
  %57 = call i64 @OMAP_HSMMC_READ(i32 %55, i32 %56)
  %58 = load i64, i64* @ICE, align 8
  %59 = or i64 %57, %58
  %60 = call i32 @OMAP_HSMMC_WRITE(i32 %51, i32 %52, i64 %59)
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i32, i32* @MMC_TIMEOUT_MS, align 4
  %63 = call i64 @msecs_to_jiffies(i32 %62)
  %64 = add i64 %61, %63
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %82, %1
  %66 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %67 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SYSCTL, align 4
  %70 = call i64 @OMAP_HSMMC_READ(i32 %68, i32 %69)
  %71 = load i64, i64* @ICS, align 8
  %72 = and i64 %70, %71
  %73 = load i64, i64* @ICS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @time_before(i64 %76, i64 %77)
  %79 = icmp ne i64 %78, 0
  br label %80

80:                                               ; preds = %75, %65
  %81 = phi i1 [ false, %65 ], [ %79, %75 ]
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = call i32 (...) @cpu_relax()
  br label %65

84:                                               ; preds = %80
  %85 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %86 = call %struct.TYPE_3__* @mmc_pdata(%struct.omap_hsmmc_host* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HSMMC_HAS_HSPE_SUPPORT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %146

92:                                               ; preds = %84
  %93 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %94 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MMC_TIMING_MMC_DDR52, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %146

98:                                               ; preds = %92
  %99 = load %struct.mmc_ios*, %struct.mmc_ios** %3, align 8
  %100 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %98
  %105 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %106 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CAPA, align 4
  %109 = call i64 @OMAP_HSMMC_READ(i32 %107, i32 %108)
  %110 = load i64, i64* @HSS, align 8
  %111 = and i64 %109, %110
  %112 = load i64, i64* @HSS, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %104
  %115 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %116 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HCTL, align 4
  %119 = call i64 @OMAP_HSMMC_READ(i32 %117, i32 %118)
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %124 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @clk_get_rate(i32 %125)
  %127 = load i64, i64* %6, align 8
  %128 = udiv i64 %126, %127
  %129 = icmp ugt i64 %128, 25000000
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i64, i64* @HSPE, align 8
  %132 = load i64, i64* %4, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %4, align 8
  br label %139

134:                                              ; preds = %122, %114
  %135 = load i64, i64* @HSPE, align 8
  %136 = xor i64 %135, -1
  %137 = load i64, i64* %4, align 8
  %138 = and i64 %137, %136
  store i64 %138, i64* %4, align 8
  br label %139

139:                                              ; preds = %134, %130
  %140 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %141 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @HCTL, align 4
  %144 = load i64, i64* %4, align 8
  %145 = call i32 @OMAP_HSMMC_WRITE(i32 %142, i32 %143, i64 %144)
  br label %146

146:                                              ; preds = %139, %104, %98, %92, %84
  %147 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %2, align 8
  %148 = call i32 @omap_hsmmc_start_clock(%struct.omap_hsmmc_host* %147)
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @omap_hsmmc_stop_clock(%struct.omap_hsmmc_host*) #1

declare dso_local i64 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i64 @calc_divisor(%struct.omap_hsmmc_host*, %struct.mmc_ios*) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local %struct.TYPE_3__* @mmc_pdata(%struct.omap_hsmmc_host*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @omap_hsmmc_start_clock(%struct.omap_hsmmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
