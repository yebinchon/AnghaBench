; ModuleID = '/home/carl/AnghaBench/linux/drivers/mux/extr_gpio.c_mux_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mux/extr_gpio.c_mux_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mux_chip = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mux_gpio = type { %struct.mux_chip* }

@.str = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@mux_gpio_ops = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get gpios\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"idle-state\00", align 1
@MUX_IDLE_AS_IS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid idle-state %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%u-way mux-controller registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mux_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mux_chip*, align 8
  %6 = alloca %struct.mux_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @gpiod_count(%struct.device* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %119

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.mux_chip* @devm_mux_chip_alloc(%struct.device* %19, i32 1, i32 8)
  store %struct.mux_chip* %20, %struct.mux_chip** %5, align 8
  %21 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %22 = call i64 @IS_ERR(%struct.mux_chip* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %26 = call i32 @PTR_ERR(%struct.mux_chip* %25)
  store i32 %26, i32* %2, align 4
  br label %119

27:                                               ; preds = %18
  %28 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %29 = call %struct.mux_gpio* @mux_chip_priv(%struct.mux_chip* %28)
  store %struct.mux_gpio* %29, %struct.mux_gpio** %6, align 8
  %30 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %31 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %30, i32 0, i32 2
  store i32* @mux_gpio_ops, i32** %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %34 = call %struct.mux_chip* @devm_gpiod_get_array(%struct.device* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.mux_gpio*, %struct.mux_gpio** %6, align 8
  %36 = getelementptr inbounds %struct.mux_gpio, %struct.mux_gpio* %35, i32 0, i32 0
  store %struct.mux_chip* %34, %struct.mux_chip** %36, align 8
  %37 = load %struct.mux_gpio*, %struct.mux_gpio** %6, align 8
  %38 = getelementptr inbounds %struct.mux_gpio, %struct.mux_gpio* %37, i32 0, i32 0
  %39 = load %struct.mux_chip*, %struct.mux_chip** %38, align 8
  %40 = call i64 @IS_ERR(%struct.mux_chip* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %27
  %43 = load %struct.mux_gpio*, %struct.mux_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.mux_gpio, %struct.mux_gpio* %43, i32 0, i32 0
  %45 = load %struct.mux_chip*, %struct.mux_chip** %44, align 8
  %46 = call i32 @PTR_ERR(%struct.mux_chip* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %119

56:                                               ; preds = %27
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.mux_gpio*, %struct.mux_gpio** %6, align 8
  %59 = getelementptr inbounds %struct.mux_gpio, %struct.mux_gpio* %58, i32 0, i32 0
  %60 = load %struct.mux_chip*, %struct.mux_chip** %59, align 8
  %61 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %57, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %69 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @device_property_read_u32(%struct.device* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %56
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @MUX_IDLE_AS_IS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %86 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %84, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %83, %80
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %119

97:                                               ; preds = %83
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %100 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %97, %76, %56
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %106 = call i32 @devm_mux_chip_register(%struct.device* %104, %struct.mux_chip* %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %119

111:                                              ; preds = %103
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.mux_chip*, %struct.mux_chip** %5, align 8
  %114 = getelementptr inbounds %struct.mux_chip, %struct.mux_chip* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_info(%struct.device* %112, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %111, %109, %91, %54, %24, %16
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @gpiod_count(%struct.device*, i8*) #1

declare dso_local %struct.mux_chip* @devm_mux_chip_alloc(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mux_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.mux_chip*) #1

declare dso_local %struct.mux_gpio* @mux_chip_priv(%struct.mux_chip*) #1

declare dso_local %struct.mux_chip* @devm_gpiod_get_array(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @devm_mux_chip_register(%struct.device*, %struct.mux_chip*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
