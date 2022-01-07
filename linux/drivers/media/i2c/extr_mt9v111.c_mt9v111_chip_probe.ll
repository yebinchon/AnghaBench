; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_chip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9v111.c_mt9v111_chip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9v111_dev = type { i32, i32, i32 }

@MT9V111_R01_CORE = common dso_local global i32 0, align 4
@MT9V111_CORE_RFF_CHIP_VER = common dso_local global i32 0, align 4
@MT9V111_CHIP_ID_HIGH = common dso_local global i32 0, align 4
@MT9V111_CHIP_ID_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to identify MT9V111 chip: 0x%2x%2x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Chip identified: 0x%2x%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9v111_dev*)* @mt9v111_chip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v111_chip_probe(%struct.mt9v111_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9v111_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt9v111_dev* %0, %struct.mt9v111_dev** %3, align 8
  %6 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %6, i32 0, i32 0
  %8 = call i32 @__mt9v111_power_on(i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MT9V111_R01_CORE, align 4
  %18 = load i32, i32* @MT9V111_CORE_RFF_CHIP_VER, align 4
  %19 = call i32 @mt9v111_read(i32 %16, i32 %17, i32 %18, i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %53

23:                                               ; preds = %13
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 8
  %26 = load i32, i32* @MT9V111_CHIP_ID_HIGH, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = load i32, i32* @MT9V111_CHIP_ID_LOW, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 8
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %53

44:                                               ; preds = %28, %23
  %45 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 8
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 255
  %52 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %44, %33, %22
  %54 = load %struct.mt9v111_dev*, %struct.mt9v111_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mt9v111_dev, %struct.mt9v111_dev* %54, i32 0, i32 0
  %56 = call i32 @__mt9v111_power_off(i32* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @__mt9v111_power_on(i32*) #1

declare dso_local i32 @mt9v111_read(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @__mt9v111_power_off(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
