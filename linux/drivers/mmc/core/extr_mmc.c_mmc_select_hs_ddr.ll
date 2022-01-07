; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_hs_ddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_select_hs_ddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_4__, %struct.mmc_host* }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_host = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EXT_CSD_CARD_TYPE_DDR_52 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@EXT_CSD_DDR_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@EXT_CSD_DDR_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_BUS_WIDTH = common dso_local global i32 0, align 4
@MMC_TIMING_MMC_DDR52 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: switch to bus width %d ddr failed\0A\00", align 1
@EXT_CSD_CARD_TYPE_DDR_1_2V = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_120 = common dso_local global i32 0, align 4
@EXT_CSD_CARD_TYPE_DDR_1_8V = common dso_local global i32 0, align 4
@MMC_CAP_1_8V_DDR = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_180 = common dso_local global i32 0, align 4
@MMC_SIGNAL_VOLTAGE_330 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_select_hs_ddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_select_hs_ddr(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 2
  %10 = load %struct.mmc_host*, %struct.mmc_host** %9, align 8
  store %struct.mmc_host* %10, %struct.mmc_host** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %12 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_52, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

18:                                               ; preds = %1
  %19 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MMC_BUS_WIDTH_1, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %98

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MMC_BUS_WIDTH_8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @EXT_CSD_DDR_BUS_WIDTH_8, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EXT_CSD_DDR_BUS_WIDTH_4, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  store i32 %36, i32* %6, align 4
  %37 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %38 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %39 = load i32, i32* @EXT_CSD_BUS_WIDTH, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MMC_TIMING_MMC_DDR52, align 4
  %46 = call i32 @__mmc_switch(%struct.mmc_card* %37, i32 %38, i32 %39, i32 %40, i32 %44, i32 %45, i32 1, i32 1, i32 1)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %51 = call i32 @mmc_hostname(%struct.mmc_host* %50)
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 1, %52
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %98

56:                                               ; preds = %35
  %57 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %58 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_1_2V, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %65 = load i32, i32* @MMC_SIGNAL_VOLTAGE_120, align 4
  %66 = call i32 @mmc_set_signal_voltage(%struct.mmc_host* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %98

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %56
  %72 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %73 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @EXT_CSD_CARD_TYPE_DDR_1_8V, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MMC_CAP_1_8V_DDR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %87 = load i32, i32* @MMC_SIGNAL_VOLTAGE_180, align 4
  %88 = call i32 @mmc_set_signal_voltage(%struct.mmc_host* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %78, %71
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %94 = load i32, i32* @MMC_SIGNAL_VOLTAGE_330, align 4
  %95 = call i32 @mmc_set_signal_voltage(%struct.mmc_host* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %69, %49, %26, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @__mmc_switch(%struct.mmc_card*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @mmc_set_signal_voltage(%struct.mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
