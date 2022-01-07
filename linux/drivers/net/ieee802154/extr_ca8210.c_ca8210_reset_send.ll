; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_reset_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_reset_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ca8210_platform_data* }
%struct.ca8210_platform_data = type { i32 }
%struct.ca8210_priv = type { i32, i32 }

@CA8210_SYNC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Fatal: No wakeup from ca8210 after reset!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Reset the device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @ca8210_reset_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca8210_reset_send(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ca8210_platform_data*, align 8
  %6 = alloca %struct.ca8210_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %10, align 8
  store %struct.ca8210_platform_data* %11, %struct.ca8210_platform_data** %5, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device* %12)
  store %struct.ca8210_priv* %13, %struct.ca8210_priv** %6, align 8
  %14 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %15 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 0)
  %18 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %18, i32 0, i32 1
  %20 = call i32 @reinit_completion(i32* %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @msleep(i32 %21)
  %23 = load %struct.ca8210_platform_data*, %struct.ca8210_platform_data** %5, align 8
  %24 = getelementptr inbounds %struct.ca8210_platform_data, %struct.ca8210_platform_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 1)
  %27 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %29, i32 0, i32 1
  %31 = load i32, i32* @CA8210_SYNC_TIMEOUT, align 4
  %32 = call i32 @msecs_to_jiffies(i32 %31)
  %33 = call i64 @wait_for_completion_interruptible_timeout(i32* %30, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = call i32 @dev_crit(%struct.TYPE_3__* %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %2
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = call i32 @dev_dbg(%struct.TYPE_3__* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_crit(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
