; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_switch_opcond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_switch_opcond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i64 }

@HCTL = common dso_local global i32 0, align 4
@SDVSCLR = common dso_local global i32 0, align 4
@MMC_VDD_23_24 = common dso_local global i32 0, align 4
@SDVS18 = common dso_local global i32 0, align 4
@SDVS30 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to switch operating voltage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hsmmc_host*, i32)* @omap_hsmmc_switch_opcond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_switch_opcond(%struct.omap_hsmmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %9 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %14 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @clk_disable_unprepare(i64 %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %19 = call i32 @omap_hsmmc_set_power(%struct.omap_hsmmc_host* %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %24 = call i32 @omap_hsmmc_set_power(%struct.omap_hsmmc_host* %23, i32 1)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %32 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @clk_prepare_enable(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %78

39:                                               ; preds = %35
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HCTL, align 4
  %44 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %45 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HCTL, align 4
  %48 = call i32 @OMAP_HSMMC_READ(i32 %46, i32 %47)
  %49 = load i32, i32* @SDVSCLR, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @OMAP_HSMMC_WRITE(i32 %42, i32 %43, i32 %50)
  %52 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %53 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HCTL, align 4
  %56 = call i32 @OMAP_HSMMC_READ(i32 %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* @MMC_VDD_23_24, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %39
  %62 = load i32, i32* @SDVS18, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %69

65:                                               ; preds = %39
  %66 = load i32, i32* @SDVS30, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HCTL, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @OMAP_HSMMC_WRITE(i32 %72, i32 %73, i32 %74)
  %76 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %77 = call i32 @set_sd_bus_power(%struct.omap_hsmmc_host* %76)
  store i32 0, i32* %3, align 4
  br label %85

78:                                               ; preds = %38
  %79 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %80 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mmc_dev(i32 %81)
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %69
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @omap_hsmmc_set_power(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @set_sd_bus_power(%struct.omap_hsmmc_host*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
