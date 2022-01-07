; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32*, i32 (%struct.si470x_device*, i64)*, i32 }

@POWERCFG_DMUTE = common dso_local global i32 0, align 4
@POWERCFG_ENABLE = common dso_local global i32 0, align 4
@POWERCFG_RDSM = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@SYSCONFIG1_RDSIEN = common dso_local global i32 0, align 4
@SYSCONFIG1_STCIEN = common dso_local global i32 0, align 4
@SYSCONFIG1_RDS = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@SYSCONFIG1_GPIO2 = common dso_local global i32 0, align 4
@SYSCONFIG1_GPIO2_INT = common dso_local global i32 0, align 4
@de = common dso_local global i64 0, align 8
@SYSCONFIG1_DE = common dso_local global i32 0, align 4
@SYSCONFIG2_BAND = common dso_local global i32 0, align 4
@space = common dso_local global i32 0, align 4
@SYSCONFIG2_SPACE = common dso_local global i32 0, align 4
@SYSCONFIG2 = common dso_local global i64 0, align 8
@CHANNEL = common dso_local global i64 0, align 8
@CHANNEL_CHAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_start(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %4 = load i32, i32* @POWERCFG_DMUTE, align 4
  %5 = load i32, i32* @POWERCFG_ENABLE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @POWERCFG_RDSM, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %10 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @POWERCFG, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  store i32 %8, i32* %13, align 4
  %14 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %15 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %14, i32 0, i32 1
  %16 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %15, align 8
  %17 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %18 = load i64, i64* @POWERCFG, align 8
  %19 = call i32 %16(%struct.si470x_device* %17, i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %113

23:                                               ; preds = %1
  %24 = load i32, i32* @SYSCONFIG1_RDSIEN, align 4
  %25 = load i32, i32* @SYSCONFIG1_STCIEN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SYSCONFIG1_RDS, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %30 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SYSCONFIG1, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %28
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @SYSCONFIG1_GPIO2, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %39 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @SYSCONFIG1, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %37
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @SYSCONFIG1_GPIO2_INT, align 4
  %46 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %47 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @SYSCONFIG1, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %45
  store i32 %52, i32* %50, align 4
  %53 = load i64, i64* @de, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %23
  %56 = load i32, i32* @SYSCONFIG1_DE, align 4
  %57 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %58 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @SYSCONFIG1, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %56
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %55, %23
  %65 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %66 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %65, i32 0, i32 1
  %67 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %66, align 8
  %68 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %69 = load i64, i64* @SYSCONFIG1, align 8
  %70 = call i32 %67(%struct.si470x_device* %68, i64 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %113

74:                                               ; preds = %64
  %75 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %76 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = shl i32 %77, 6
  %79 = load i32, i32* @SYSCONFIG2_BAND, align 4
  %80 = and i32 %78, %79
  %81 = or i32 7936, %80
  %82 = load i32, i32* @space, align 4
  %83 = shl i32 %82, 4
  %84 = load i32, i32* @SYSCONFIG2_SPACE, align 4
  %85 = and i32 %83, %84
  %86 = or i32 %81, %85
  %87 = or i32 %86, 15
  %88 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %89 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @SYSCONFIG2, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %94 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %93, i32 0, i32 1
  %95 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %94, align 8
  %96 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %97 = load i64, i64* @SYSCONFIG2, align 8
  %98 = call i32 %95(%struct.si470x_device* %96, i64 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %74
  br label %113

102:                                              ; preds = %74
  %103 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %104 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %105 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @CHANNEL, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CHANNEL_CHAN, align 4
  %111 = and i32 %109, %110
  %112 = call i32 @si470x_set_chan(%struct.si470x_device* %103, i32 %111)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %102, %101, %73, %22
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @si470x_set_chan(%struct.si470x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
