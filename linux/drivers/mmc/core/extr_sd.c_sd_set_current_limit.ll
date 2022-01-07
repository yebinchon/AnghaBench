; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd.c_sd_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SD_SET_CURRENT_NO_CHANGE = common dso_local global i32 0, align 4
@UHS_SDR50_BUS_SPEED = common dso_local global i64 0, align 8
@UHS_SDR104_BUS_SPEED = common dso_local global i64 0, align 8
@UHS_DDR50_BUS_SPEED = common dso_local global i64 0, align 8
@SD_MAX_CURRENT_800 = common dso_local global i32 0, align 4
@SD_SET_CURRENT_LIMIT_800 = common dso_local global i32 0, align 4
@SD_MAX_CURRENT_600 = common dso_local global i32 0, align 4
@SD_SET_CURRENT_LIMIT_600 = common dso_local global i32 0, align 4
@SD_MAX_CURRENT_400 = common dso_local global i32 0, align 4
@SD_SET_CURRENT_LIMIT_400 = common dso_local global i32 0, align 4
@SD_MAX_CURRENT_200 = common dso_local global i32 0, align 4
@SD_SET_CURRENT_LIMIT_200 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: Problem setting current limit!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32*)* @sd_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_set_current_limit(%struct.mmc_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @SD_SET_CURRENT_NO_CHANGE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UHS_SDR50_BUS_SPEED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UHS_SDR104_BUS_SPEED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UHS_DDR50_BUS_SPEED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %116

28:                                               ; preds = %21, %15, %2
  %29 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sd_get_host_max_current(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sge i32 %33, 800
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SD_MAX_CURRENT_800, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @SD_SET_CURRENT_LIMIT_800, align 4
  store i32 %44, i32* %6, align 4
  br label %87

45:                                               ; preds = %35, %28
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 600
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %50 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SD_MAX_CURRENT_600, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @SD_SET_CURRENT_LIMIT_600, align 4
  store i32 %57, i32* %6, align 4
  br label %86

58:                                               ; preds = %48, %45
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 400
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SD_MAX_CURRENT_400, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @SD_SET_CURRENT_LIMIT_400, align 4
  store i32 %70, i32* %6, align 4
  br label %85

71:                                               ; preds = %61, %58
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 200
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SD_MAX_CURRENT_200, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @SD_SET_CURRENT_LIMIT_200, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %74, %71
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %56
  br label %87

87:                                               ; preds = %86, %43
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @SD_SET_CURRENT_NO_CHANGE, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %87
  %92 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @mmc_sd_switch(%struct.mmc_card* %92, i32 1, i32 3, i32 %93, i32* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %116

100:                                              ; preds = %91
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 15
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 4
  %105 = and i32 %104, 15
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %110 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @mmc_hostname(i32 %111)
  %113 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %100
  br label %115

115:                                              ; preds = %114, %87
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %98, %27
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @sd_get_host_max_current(i32) #1

declare dso_local i32 @mmc_sd_switch(%struct.mmc_card*, i32, i32, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
