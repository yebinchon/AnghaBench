; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lochnagar-i2c.c_lochnagar_update_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lochnagar-i2c.c_lochnagar_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lochnagar = type { i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@LOCHNAGAR2_ANALOGUE_PATH_UPDATE_STS_MASK = common dso_local global i32 0, align 4
@LOCHNAGAR_BOOT_DELAY_MS = common dso_local global i32 0, align 4
@LOCHNAGAR_BOOT_RETRIES = common dso_local global i32 0, align 4
@LOCHNAGAR2 = common dso_local global i64 0, align 8
@LOCHNAGAR2_ANALOGUE_PATH_CTRL1 = common dso_local global i32 0, align 4
@LOCHNAGAR2_ANALOGUE_PATH_UPDATE_MASK = common dso_local global i32 0, align 4
@LOCHNAGAR_CONFIG_POLL_US = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lochnagar_update_config(%struct.lochnagar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lochnagar*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lochnagar* %0, %struct.lochnagar** %3, align 8
  %9 = load %struct.lochnagar*, %struct.lochnagar** %3, align 8
  %10 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %9, i32 0, i32 2
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load i32, i32* @LOCHNAGAR2_ANALOGUE_PATH_UPDATE_STS_MASK, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @LOCHNAGAR_BOOT_DELAY_MS, align 4
  %14 = load i32, i32* @LOCHNAGAR_BOOT_RETRIES, align 4
  %15 = mul nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.lochnagar*, %struct.lochnagar** %3, align 8
  %17 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %16, i32 0, i32 1
  %18 = call i32 @lockdep_assert_held(i32* %17)
  %19 = load %struct.lochnagar*, %struct.lochnagar** %3, align 8
  %20 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LOCHNAGAR2, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

25:                                               ; preds = %1
  %26 = load %struct.regmap*, %struct.regmap** %4, align 8
  %27 = load i32, i32* @LOCHNAGAR2_ANALOGUE_PATH_CTRL1, align 4
  %28 = call i32 @regmap_write(%struct.regmap* %26, i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %58

33:                                               ; preds = %25
  %34 = load %struct.regmap*, %struct.regmap** %4, align 8
  %35 = load i32, i32* @LOCHNAGAR2_ANALOGUE_PATH_CTRL1, align 4
  %36 = load i32, i32* @LOCHNAGAR2_ANALOGUE_PATH_UPDATE_MASK, align 4
  %37 = call i32 @regmap_write(%struct.regmap* %34, i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %33
  %43 = load %struct.regmap*, %struct.regmap** %4, align 8
  %44 = load i32, i32* @LOCHNAGAR2_ANALOGUE_PATH_CTRL1, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @LOCHNAGAR_CONFIG_POLL_US, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 1000
  %52 = call i32 @regmap_read_poll_timeout(%struct.regmap* %43, i32 %44, i32 %45, i32 %48, i32 %49, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %40, %31, %24
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(%struct.regmap*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
