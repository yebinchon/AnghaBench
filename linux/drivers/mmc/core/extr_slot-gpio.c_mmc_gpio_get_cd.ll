; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_get_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpio_get_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_gpio* }
%struct.mmc_gpio = type { i32, i64 }

@ENOSYS = common dso_local global i32 0, align 4
@MMC_CAP2_CD_ACTIVE_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_gpio_get_cd(%struct.mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mmc_gpio*, %struct.mmc_gpio** %9, align 8
  store %struct.mmc_gpio* %10, %struct.mmc_gpio** %4, align 8
  %11 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %12 = icmp ne %struct.mmc_gpio* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %74

21:                                               ; preds = %13
  %22 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gpiod_cansleep(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %35 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gpiod_get_raw_value_cansleep(i32 %36)
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @gpiod_get_raw_value(i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i32 [ %37, %33 ], [ %42, %38 ]
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MMC_CAP2_CD_ACTIVE_HIGH, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = xor i32 %48, %57
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %21
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @gpiod_get_value_cansleep(i32 %65)
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.mmc_gpio*, %struct.mmc_gpio** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @gpiod_get_value(i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ %66, %62 ], [ %71, %67 ]
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %72, %43, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @gpiod_cansleep(i32) #1

declare dso_local i32 @gpiod_get_raw_value_cansleep(i32) #1

declare dso_local i32 @gpiod_get_raw_value(i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @gpiod_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
