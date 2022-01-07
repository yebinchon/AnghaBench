; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_update_bus_speed_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_update_bus_speed_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MMC_CAP_UHS_SDR104 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR104 = common dso_local global i32 0, align 4
@UHS_SDR104_BUS_SPEED = common dso_local global i64 0, align 8
@MMC_CAP_UHS_DDR50 = common dso_local global i32 0, align 4
@SD_MODE_UHS_DDR50 = common dso_local global i32 0, align 4
@UHS_DDR50_BUS_SPEED = common dso_local global i64 0, align 8
@MMC_CAP_UHS_SDR50 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR50 = common dso_local global i32 0, align 4
@UHS_SDR50_BUS_SPEED = common dso_local global i64 0, align 8
@MMC_CAP_UHS_SDR25 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR25 = common dso_local global i32 0, align 4
@UHS_SDR25_BUS_SPEED = common dso_local global i64 0, align 8
@MMC_CAP_UHS_SDR12 = common dso_local global i32 0, align 4
@SD_MODE_UHS_SDR12 = common dso_local global i32 0, align 4
@UHS_SDR12_BUS_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @sd_update_bus_speed_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_update_bus_speed_mode(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %3 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @mmc_host_uhs(%struct.TYPE_4__* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %10 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  br label %132

11:                                               ; preds = %1
  %12 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %13 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %11
  %21 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SD_MODE_UHS_SDR104, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i64, i64* @UHS_SDR104_BUS_SPEED, align 8
  %30 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %31 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %132

32:                                               ; preds = %20, %11
  %33 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %34 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MMC_CAP_UHS_DDR50, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SD_MODE_UHS_DDR50, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i64, i64* @UHS_DDR50_BUS_SPEED, align 8
  %51 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %52 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %131

53:                                               ; preds = %41, %32
  %54 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %55 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %60 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %53
  %65 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SD_MODE_UHS_SDR50, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load i64, i64* @UHS_SDR50_BUS_SPEED, align 8
  %74 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %75 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %130

76:                                               ; preds = %64, %53
  %77 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %78 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %83 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %81, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %76
  %90 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %91 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SD_MODE_UHS_SDR25, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i64, i64* @UHS_SDR25_BUS_SPEED, align 8
  %99 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %100 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %129

101:                                              ; preds = %89, %76
  %102 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %103 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @MMC_CAP_UHS_SDR104, align 4
  %108 = load i32, i32* @MMC_CAP_UHS_SDR50, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @MMC_CAP_UHS_SDR25, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @MMC_CAP_UHS_SDR12, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %106, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %101
  %117 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %118 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @SD_MODE_UHS_SDR12, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load i64, i64* @UHS_SDR12_BUS_SPEED, align 8
  %126 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %127 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %124, %116, %101
  br label %129

129:                                              ; preds = %128, %97
  br label %130

130:                                              ; preds = %129, %72
  br label %131

131:                                              ; preds = %130, %49
  br label %132

132:                                              ; preds = %8, %131, %28
  ret void
}

declare dso_local i32 @mmc_host_uhs(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
