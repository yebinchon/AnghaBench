; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_pch_can.c_pch_can_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pch_can_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@pch_can_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"request_irq failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"open_candev() failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pch_can_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_can_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pch_can_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.pch_can_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.pch_can_priv* %7, %struct.pch_can_priv** %4, align 8
  %8 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %9 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @pch_can_interrupt, align 4
  %14 = load i32, i32* @IRQF_SHARED, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @request_irq(i32 %12, i32 %13, i32 %14, i32 %17, %struct.net_device* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @open_candev(%struct.net_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %44

34:                                               ; preds = %25
  %35 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %36 = call i32 @pch_can_init(%struct.pch_can_priv* %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @pch_can_start(%struct.net_device* %37)
  %39 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %40 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %39, i32 0, i32 1
  %41 = call i32 @napi_enable(i32* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @netif_start_queue(%struct.net_device* %42)
  store i32 0, i32* %2, align 4
  br label %56

44:                                               ; preds = %30
  %45 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %46 = getelementptr inbounds %struct.pch_can_priv, %struct.pch_can_priv* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.net_device* %50)
  br label %52

52:                                               ; preds = %44, %22
  %53 = load %struct.pch_can_priv*, %struct.pch_can_priv** %4, align 8
  %54 = call i32 @pch_can_release(%struct.pch_can_priv* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %34
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.pch_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @pch_can_init(%struct.pch_can_priv*) #1

declare dso_local i32 @pch_can_start(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pch_can_release(%struct.pch_can_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
