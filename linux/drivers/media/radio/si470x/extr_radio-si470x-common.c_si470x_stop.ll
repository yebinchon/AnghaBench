; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32*, i32 (%struct.si470x_device*, i64)* }

@SYSCONFIG1_RDS = common dso_local global i32 0, align 4
@SYSCONFIG1 = common dso_local global i64 0, align 8
@POWERCFG_DMUTE = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@POWERCFG_ENABLE = common dso_local global i32 0, align 4
@POWERCFG_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si470x_stop(%struct.si470x_device* %0) #0 {
  %2 = alloca %struct.si470x_device*, align 8
  %3 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %2, align 8
  %4 = load i32, i32* @SYSCONFIG1_RDS, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %7 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @SYSCONFIG1, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %5
  store i32 %12, i32* %10, align 4
  %13 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %14 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %13, i32 0, i32 1
  %15 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %14, align 8
  %16 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %17 = load i64, i64* @SYSCONFIG1, align 8
  %18 = call i32 %15(%struct.si470x_device* %16, i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %48

22:                                               ; preds = %1
  %23 = load i32, i32* @POWERCFG_DMUTE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %26 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @POWERCFG, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @POWERCFG_ENABLE, align 4
  %33 = load i32, i32* @POWERCFG_DISABLE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %36 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @POWERCFG, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %34
  store i32 %41, i32* %39, align 4
  %42 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %43 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %42, i32 0, i32 1
  %44 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %43, align 8
  %45 = load %struct.si470x_device*, %struct.si470x_device** %2, align 8
  %46 = load i64, i64* @POWERCFG, align 8
  %47 = call i32 %44(%struct.si470x_device* %45, i64 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %22, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
