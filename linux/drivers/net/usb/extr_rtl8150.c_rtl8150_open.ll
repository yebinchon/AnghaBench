; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_rtl8150_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_rtl8150_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IDR = common dso_local global i32 0, align 4
@RTL8150_MTU = common dso_local global i32 0, align 4
@read_bulk_callback = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rx_urb submit failed: %d\0A\00", align 1
@INTBUFSIZE = common dso_local global i32 0, align 4
@intr_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"intr_urb submit failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rtl8150_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8150_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.TYPE_9__* @netdev_priv(%struct.net_device* %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 6
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call %struct.TYPE_10__* @pull_skb(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 6
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %16, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %128

25:                                               ; preds = %17
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = load i32, i32* @IDR, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @set_registers(%struct.TYPE_9__* %26, i32 %27, i32 6, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_rcvbulkpipe(i32 %40, i32 1)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RTL8150_MTU, align 4
  %48 = load i32, i32* @read_bulk_callback, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i32 @usb_fill_bulk_urb(i32 %34, i32 %37, i32 %41, i32 %46, i32 %47, i32 %48, %struct.TYPE_9__* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @usb_submit_urb(i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %25
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @netif_device_detach(i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @dev_warn(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %128

73:                                               ; preds = %25
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @usb_rcvintpipe(i32 %82, i32 3)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @INTBUFSIZE, align 4
  %88 = load i32, i32* @intr_callback, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @usb_fill_int_urb(i32 %76, i32 %79, i32 %83, i32 %86, i32 %87, i32 %88, %struct.TYPE_9__* %89, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @usb_submit_urb(i32 %96, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %73
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @netif_device_detach(i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @dev_warn(i32* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @usb_kill_urb(i32 %117)
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %128

120:                                              ; preds = %73
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = call i32 @enable_net_traffic(%struct.TYPE_9__* %121)
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = call i32 @set_carrier(%struct.net_device* %123)
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = call i32 @netif_start_queue(%struct.net_device* %125)
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %120, %110, %67, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.TYPE_9__* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_10__* @pull_skb(%struct.TYPE_9__*) #1

declare dso_local i32 @set_registers(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @enable_net_traffic(%struct.TYPE_9__*) #1

declare dso_local i32 @set_carrier(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
