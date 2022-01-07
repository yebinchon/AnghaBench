; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_parse_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_davinci_mmc.c_mmc_davinci_parse_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.davinci_mmc_config* }
%struct.davinci_mmc_config = type { i32, i32, i32, i64 }
%struct.mmc_davinci_host = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_8_BIT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_davinci_parse_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_davinci_parse_pdata(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.davinci_mmc_config*, align 8
  %6 = alloca %struct.mmc_davinci_host*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.platform_device* @to_platform_device(i32 %10)
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %14, align 8
  store %struct.davinci_mmc_config* %15, %struct.davinci_mmc_config** %5, align 8
  %16 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %17 = icmp ne %struct.davinci_mmc_config* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %142

21:                                               ; preds = %1
  %22 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %23 = call %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host* %22)
  store %struct.mmc_davinci_host* %23, %struct.mmc_davinci_host** %6, align 8
  %24 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %6, align 8
  %25 = icmp ne %struct.mmc_davinci_host* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %142

29:                                               ; preds = %21
  %30 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %31 = icmp ne %struct.davinci_mmc_config* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %34 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %39 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 1
  %42 = load %struct.mmc_davinci_host*, %struct.mmc_davinci_host** %6, align 8
  %43 = getelementptr inbounds %struct.mmc_davinci_host, %struct.mmc_davinci_host* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %32, %29
  %45 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %46 = icmp ne %struct.davinci_mmc_config* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %49 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %54 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %59 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %60 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52, %44
  %64 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %65 = icmp ne %struct.davinci_mmc_config* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %68 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %73 = load i32, i32* @MMC_CAP_8_BIT_DATA, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %76 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %71, %66, %63
  %80 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %81 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %80, i32 0, i32 1
  store i32 312500, i32* %81, align 4
  %82 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %83 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %82, i32 0, i32 2
  store i32 25000000, i32* %83, align 4
  %84 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %85 = icmp ne %struct.davinci_mmc_config* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %79
  %87 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %88 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %93 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %96 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %86, %79
  %98 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %99 = icmp ne %struct.davinci_mmc_config* %98, null
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %102 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.davinci_mmc_config*, %struct.davinci_mmc_config** %5, align 8
  %107 = getelementptr inbounds %struct.davinci_mmc_config, %struct.davinci_mmc_config* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %110 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %105, %100, %97
  %114 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %115 = call i32 @mmc_gpiod_request_cd(%struct.mmc_host* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32* null)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @EPROBE_DEFER, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %142

122:                                              ; preds = %113
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %127 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %128 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %122
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %134 = call i32 @mmc_gpiod_request_ro(%struct.mmc_host* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32* null)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @EPROBE_DEFER, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %2, align 4
  br label %142

141:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %139, %120, %26, %18
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.mmc_davinci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mmc_gpiod_request_cd(%struct.mmc_host*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmc_gpiod_request_ro(%struct.mmc_host*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
