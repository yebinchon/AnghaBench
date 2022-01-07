; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.m_can_classdev = type { i32, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"failed to open can device\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mcan_wq\00", align 1
@WQ_FREEZABLE = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@m_can_tx_work_queue = common dso_local global i32 0, align 4
@m_can_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to request interrupt\0A\00", align 1
@CAN_LED_EVENT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @m_can_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.m_can_classdev*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %6)
  store %struct.m_can_classdev* %7, %struct.m_can_classdev** %4, align 8
  %8 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %9 = call i32 @m_can_clk_start(%struct.m_can_classdev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %112

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @open_candev(%struct.net_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %108

22:                                               ; preds = %14
  %23 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %24 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %29 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @WQ_FREEZABLE, align 4
  %31 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 0)
  %34 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %35 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %37 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %105

43:                                               ; preds = %27
  %44 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %45 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %44, i32 0, i32 3
  %46 = load i32, i32* @m_can_tx_work_queue, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @m_can_isr, align 4
  %52 = load i32, i32* @IRQF_ONESHOT, align 4
  %53 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @request_threaded_irq(i32 %50, i32* null, i32 %51, i32 %54, i32 %57, %struct.net_device* %58)
  store i32 %59, i32* %5, align 4
  br label %71

60:                                               ; preds = %22
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @m_can_isr, align 4
  %65 = load i32, i32* @IRQF_SHARED, align 4
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @request_irq(i32 %63, i32 %64, i32 %65, i32 %68, %struct.net_device* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %60, %43
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %94

77:                                               ; preds = %71
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = call i32 @m_can_start(%struct.net_device* %78)
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = load i32, i32* @CAN_LED_EVENT_OPEN, align 4
  %82 = call i32 @can_led_event(%struct.net_device* %80, i32 %81)
  %83 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %84 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %89 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %88, i32 0, i32 2
  %90 = call i32 @napi_enable(i32* %89)
  br label %91

91:                                               ; preds = %87, %77
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @netif_start_queue(%struct.net_device* %92)
  store i32 0, i32* %2, align 4
  br label %112

94:                                               ; preds = %74
  %95 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %96 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %101 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @destroy_workqueue(i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %40
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = call i32 @close_candev(%struct.net_device* %106)
  br label %108

108:                                              ; preds = %105, %19
  %109 = load %struct.m_can_classdev*, %struct.m_can_classdev** %4, align 8
  %110 = call i32 @m_can_clk_stop(%struct.m_can_classdev* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %91, %12
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_clk_start(%struct.m_can_classdev*) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @m_can_start(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @m_can_clk_stop(%struct.m_can_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
