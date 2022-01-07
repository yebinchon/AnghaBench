; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_led.c_can_led_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_led.c_can_led_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i8* }
%struct.can_priv = type { i32, i32, i32 }

@CAN_LED_NAME_SZ = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NETDEV_CHANGENAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-tx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-rx\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s-rxtx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @can_led_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_led_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.can_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %13)
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call %struct.can_priv* @safe_candev_priv(%struct.net_device* %15)
  store %struct.can_priv* %16, %struct.can_priv** %9, align 8
  %17 = load i32, i32* @CAN_LED_NAME_SZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load %struct.can_priv*, %struct.can_priv** %9, align 8
  %22 = icmp ne %struct.can_priv* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %76

25:                                               ; preds = %3
  %26 = load %struct.can_priv*, %struct.can_priv** %9, align 8
  %27 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.can_priv*, %struct.can_priv** %9, align 8
  %32 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.can_priv*, %struct.can_priv** %9, align 8
  %37 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %30, %25
  %41 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %76

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @NETDEV_CHANGENAME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = trunc i64 %18 to i32
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i8* %20, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.can_priv*, %struct.can_priv** %9, align 8
  %53 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @led_trigger_rename_static(i8* %20, i32 %54)
  %56 = trunc i64 %18 to i32
  %57 = load %struct.net_device*, %struct.net_device** %8, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @snprintf(i8* %20, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.can_priv*, %struct.can_priv** %9, align 8
  %62 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @led_trigger_rename_static(i8* %20, i32 %63)
  %65 = trunc i64 %18 to i32
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @snprintf(i8* %20, i32 %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = load %struct.can_priv*, %struct.can_priv** %9, align 8
  %71 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @led_trigger_rename_static(i8* %20, i32 %72)
  br label %74

74:                                               ; preds = %46, %42
  %75 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %76

76:                                               ; preds = %74, %40, %23
  %77 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.can_priv* @safe_candev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @led_trigger_rename_static(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
