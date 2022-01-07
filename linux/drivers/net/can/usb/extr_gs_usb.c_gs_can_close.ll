; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_can_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_gs_usb.c_gs_can_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gs_can = type { %struct.TYPE_2__*, i32, i32, %struct.gs_usb* }
%struct.TYPE_2__ = type { i32, %struct.gs_can* }
%struct.gs_usb = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Couldn't shutdown device (err=%d)\00", align 1
@GS_MAX_TX_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gs_can_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_can_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_can*, align 8
  %5 = alloca %struct.gs_usb*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.gs_can* @netdev_priv(%struct.net_device* %6)
  store %struct.gs_can* %7, %struct.gs_can** %4, align 8
  %8 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %9 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %8, i32 0, i32 3
  %10 = load %struct.gs_usb*, %struct.gs_usb** %9, align 8
  store %struct.gs_usb* %10, %struct.gs_usb** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load %struct.gs_usb*, %struct.gs_usb** %5, align 8
  %14 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %13, i32 0, i32 1
  %15 = call i64 @atomic_dec_and_test(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.gs_usb*, %struct.gs_usb** %5, align 8
  %19 = getelementptr inbounds %struct.gs_usb, %struct.gs_usb* %18, i32 0, i32 0
  %20 = call i32 @usb_kill_anchored_urbs(i32* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %23 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %22, i32 0, i32 2
  %24 = call i32 @usb_kill_anchored_urbs(i32* %23)
  %25 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %26 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %25, i32 0, i32 1
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %29 = call i32 @gs_cmd_reset(%struct.gs_can* %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @netdev_warn(%struct.net_device* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %21
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %43 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %44 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store %struct.gs_can* %42, %struct.gs_can** %49, align 8
  %50 = load i32, i32* @GS_MAX_TX_URBS, align 4
  %51 = load %struct.gs_can*, %struct.gs_can** %4, align 8
  %52 = getelementptr inbounds %struct.gs_can, %struct.gs_can* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 8
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @close_candev(%struct.net_device* %62)
  ret i32 0
}

declare dso_local %struct.gs_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @gs_cmd_reset(%struct.gs_can*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
