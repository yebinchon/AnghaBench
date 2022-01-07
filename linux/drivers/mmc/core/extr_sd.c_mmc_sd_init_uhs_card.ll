; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_init_uhs_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_mmc_sd_init_uhs_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@CCC_SWITCH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@MMC_TIMING_UHS_SDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_DDR50 = common dso_local global i64 0, align 8
@MMC_TIMING_UHS_SDR104 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s: ddr50 tuning failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_sd_init_uhs_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sd_init_uhs_card(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %6 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CCC_SWITCH, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %116

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 64, i32 %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %116

22:                                               ; preds = %14
  %23 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %24 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %25 = call i32 @mmc_app_set_bus_width(%struct.mmc_card* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %112

29:                                               ; preds = %22
  %30 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* @MMC_BUS_WIDTH_4, align 4
  %34 = call i32 @mmc_set_bus_width(%struct.TYPE_8__* %32, i32 %33)
  %35 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %36 = call i32 @sd_update_bus_speed_mode(%struct.mmc_card* %35)
  %37 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @sd_select_driver_type(%struct.mmc_card* %37, i32* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %112

43:                                               ; preds = %29
  %44 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @sd_set_current_limit(%struct.mmc_card* %44, i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %112

50:                                               ; preds = %43
  %51 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @sd_set_bus_speed_mode(%struct.mmc_card* %51, i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %112

57:                                               ; preds = %50
  %58 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @mmc_host_is_spi(%struct.TYPE_8__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %111, label %63

63:                                               ; preds = %57
  %64 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %65 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MMC_TIMING_UHS_SDR50, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %63
  %73 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %74 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %72
  %82 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MMC_TIMING_UHS_SDR104, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %81, %72, %63
  %91 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %92 = call i32 @mmc_execute_tuning(%struct.mmc_card* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %97 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MMC_TIMING_UHS_DDR50, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %95
  %105 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %106 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = call i32 @mmc_hostname(%struct.TYPE_8__* %107)
  %109 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %104, %95, %90
  br label %111

111:                                              ; preds = %110, %81, %57
  br label %112

112:                                              ; preds = %111, %56, %49, %42, %28
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @kfree(i32* %113)
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %19, %13
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mmc_app_set_bus_width(%struct.mmc_card*, i32) #1

declare dso_local i32 @mmc_set_bus_width(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sd_update_bus_speed_mode(%struct.mmc_card*) #1

declare dso_local i32 @sd_select_driver_type(%struct.mmc_card*, i32*) #1

declare dso_local i32 @sd_set_current_limit(%struct.mmc_card*, i32*) #1

declare dso_local i32 @sd_set_bus_speed_mode(%struct.mmc_card*, i32*) #1

declare dso_local i32 @mmc_host_is_spi(%struct.TYPE_8__*) #1

declare dso_local i32 @mmc_execute_tuning(%struct.mmc_card*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
