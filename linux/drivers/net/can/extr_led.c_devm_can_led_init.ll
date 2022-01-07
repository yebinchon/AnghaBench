; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_led.c_devm_can_led_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_led.c_devm_can_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i32 }
%struct.can_priv = type { i32, i32, i32, i32, i32, i32 }

@can_led_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot register LED triggers\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-tx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-rx\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s-rxtx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_can_led_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.can_priv*, align 8
  %4 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.can_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.can_priv* %6, %struct.can_priv** %3, align 8
  %7 = load i32, i32* @can_led_release, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @devres_alloc(i32 %7, i32 0, i32 %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %17 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @snprintf(i32 %18, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %24 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %31 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %38 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %41 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %40, i32 0, i32 4
  %42 = call i32 @led_trigger_register_simple(i32 %39, i32* %41)
  %43 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %44 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %47 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %46, i32 0, i32 2
  %48 = call i32 @led_trigger_register_simple(i32 %45, i32* %47)
  %49 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %50 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %53 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %52, i32 0, i32 0
  %54 = call i32 @led_trigger_register_simple(i32 %51, i32* %53)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @devres_add(i32* %56, i8* %57)
  br label %59

59:                                               ; preds = %15, %12
  ret void
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @led_trigger_register_simple(i32, i32*) #1

declare dso_local i32 @devres_add(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
