; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.catc = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"submit(irq_urb) status %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@STATS_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @catc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.catc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.catc* @netdev_priv(%struct.net_device* %6)
  store %struct.catc* %7, %struct.catc** %4, align 8
  %8 = load %struct.catc*, %struct.catc** %4, align 8
  %9 = getelementptr inbounds %struct.catc, %struct.catc* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.catc*, %struct.catc** %4, align 8
  %12 = getelementptr inbounds %struct.catc, %struct.catc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.catc*, %struct.catc** %4, align 8
  %16 = getelementptr inbounds %struct.catc, %struct.catc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @usb_submit_urb(%struct.TYPE_4__* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.catc*, %struct.catc** %4, align 8
  %23 = getelementptr inbounds %struct.catc, %struct.catc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %2, align 4
  br label %43

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_start_queue(%struct.net_device* %29)
  %31 = load %struct.catc*, %struct.catc** %4, align 8
  %32 = getelementptr inbounds %struct.catc, %struct.catc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.catc*, %struct.catc** %4, align 8
  %37 = getelementptr inbounds %struct.catc, %struct.catc* %36, i32 0, i32 0
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* @STATS_UPDATE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @mod_timer(i32* %37, i64 %40)
  br label %42

42:                                               ; preds = %35, %28
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %21
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.catc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
