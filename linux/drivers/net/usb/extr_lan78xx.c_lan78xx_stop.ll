; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.lan78xx_net = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@EVENT_DEV_OPEN = common dso_local global i32 0, align 4
@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"stop stats: rx/tx %lu/%lu, errs %lu/%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lan78xx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lan78xx_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %4)
  store %struct.lan78xx_net* %5, %struct.lan78xx_net** %3, align 8
  %6 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %7 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %6, i32 0, i32 7
  %8 = call i64 @timer_pending(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %12 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %11, i32 0, i32 7
  %13 = call i32 @del_timer_sync(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @phy_stop(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @EVENT_DEV_OPEN, align 4
  %26 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %27 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %26, i32 0, i32 3
  %28 = call i32 @clear_bit(i32 %25, i64* %27)
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @netif_stop_queue(%struct.net_device* %29)
  %31 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %32 = load i32, i32* @ifdown, align 4
  %33 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %34 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_info(%struct.lan78xx_net* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i32 %47, i32 %51)
  %53 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %54 = call i32 @lan78xx_terminate_urbs(%struct.lan78xx_net* %53)
  %55 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %56 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_kill_urb(i32 %57)
  %59 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %60 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %59, i32 0, i32 4
  %61 = call i32 @skb_queue_purge(i32* %60)
  %62 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %63 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %65 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %64, i32 0, i32 2
  %66 = call i32 @cancel_delayed_work_sync(i32* %65)
  %67 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %68 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %67, i32 0, i32 1
  %69 = call i32 @tasklet_kill(i32* %68)
  %70 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %71 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @usb_autopm_put_interface(i32 %72)
  ret i32 0
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @phy_stop(i64) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.lan78xx_net*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @lan78xx_terminate_urbs(%struct.lan78xx_net*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
