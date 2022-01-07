; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.typhoon = type { i32, i32 }

@WaitSleep = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to wakeup device\0A\00", align 1
@typhoon_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@TYPHOON_STATUS_WAITING_FOR_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to reboot into sleep img\0A\00", align 1
@NoWait = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to go back to sleep\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @typhoon_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.typhoon*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.typhoon* @netdev_priv(%struct.net_device* %6)
  store %struct.typhoon* %7, %struct.typhoon** %4, align 8
  %8 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %9 = call i32 @typhoon_request_firmware(%struct.typhoon* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %79

13:                                               ; preds = %1
  %14 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %15 = load i32, i32* @WaitSleep, align 4
  %16 = call i32 @typhoon_wakeup(%struct.typhoon* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @netdev_err(%struct.net_device* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %57

22:                                               ; preds = %13
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @typhoon_interrupt, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i32 @request_irq(i32 %25, i32 %26, i32 %27, i32 %30, %struct.net_device* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %57

36:                                               ; preds = %22
  %37 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %38 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %37, i32 0, i32 1
  %39 = call i32 @napi_enable(i32* %38)
  %40 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %41 = call i32 @typhoon_start_runtime(%struct.typhoon* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %46 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %45, i32 0, i32 1
  %47 = call i32 @napi_disable(i32* %46)
  br label %51

48:                                               ; preds = %36
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = call i32 @netif_start_queue(%struct.net_device* %49)
  store i32 0, i32* %2, align 4
  br label %81

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @free_irq(i32 %54, %struct.net_device* %55)
  br label %57

57:                                               ; preds = %51, %35, %19
  %58 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %59 = load i32, i32* @TYPHOON_STATUS_WAITING_FOR_HOST, align 4
  %60 = call i64 @typhoon_boot_3XP(%struct.typhoon* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %66 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NoWait, align 4
  %69 = call i32 @typhoon_reset(i32 %67, i32 %68)
  br label %79

70:                                               ; preds = %57
  %71 = load %struct.typhoon*, %struct.typhoon** %4, align 8
  %72 = load i32, i32* @PCI_D3hot, align 4
  %73 = call i64 @typhoon_sleep(%struct.typhoon* %71, i32 %72, i32 0)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @netdev_err(%struct.net_device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %70
  br label %79

79:                                               ; preds = %78, %62, %12
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %48
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @typhoon_request_firmware(%struct.typhoon*) #1

declare dso_local i32 @typhoon_wakeup(%struct.typhoon*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @typhoon_start_runtime(%struct.typhoon*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i64 @typhoon_boot_3XP(%struct.typhoon*, i32) #1

declare dso_local i32 @typhoon_reset(i32, i32) #1

declare dso_local i64 @typhoon_sleep(%struct.typhoon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
