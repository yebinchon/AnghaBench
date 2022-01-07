; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_pegasus_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_pegasus.c_pegasus_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PEGASUS_MTU = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EthID = common dso_local global i32 0, align 4
@read_bulk_callback = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed rx_urb, %d\0A\00", align 1
@intr_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed intr_urb, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"can't enable_net_traffic() - %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pegasus_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pegasus_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.TYPE_8__* @netdev_priv(%struct.net_device* %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PEGASUS_MTU, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_9__* @__netdev_alloc_skb_ip_align(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 6
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %21, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %155

28:                                               ; preds = %22
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = load i32, i32* @EthID, align 4
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_registers(%struct.TYPE_8__* %29, i32 %30, i32 6, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @usb_rcvbulkpipe(i32 %43, i32 1)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PEGASUS_MTU, align 4
  %51 = load i32, i32* @read_bulk_callback, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = call i32 @usb_fill_bulk_urb(i32 %37, i32 %40, i32 %44, i32 %49, i32 %50, i32 %51, %struct.TYPE_8__* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @usb_submit_urb(i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %28
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @netif_device_detach(i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = load i32, i32* @ifup, align 4
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (%struct.TYPE_8__*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.TYPE_8__* %71, i32 %72, %struct.net_device* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %155

76:                                               ; preds = %28
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @usb_rcvintpipe(i32 %85, i32 3)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @intr_callback, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @usb_fill_int_urb(i32 %79, i32 %82, i32 %86, i32 %89, i32 4, i32 %90, %struct.TYPE_8__* %91, i32 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call i32 @usb_submit_urb(i32 %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %76
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @netif_device_detach(i32 %110)
  br label %112

112:                                              ; preds = %107, %102
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = load i32, i32* @ifup, align 4
  %115 = load %struct.net_device*, %struct.net_device** %2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (%struct.TYPE_8__*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.TYPE_8__* %113, i32 %114, %struct.net_device* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @usb_kill_urb(i32 %120)
  br label %155

122:                                              ; preds = %76
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @enable_net_traffic(%struct.net_device* %123, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %122
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %132 = load i32, i32* @ifup, align 4
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 (%struct.TYPE_8__*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.TYPE_8__* %131, i32 %132, %struct.net_device* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %4, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @usb_kill_urb(i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @usb_kill_urb(i32 %144)
  br label %155

146:                                              ; preds = %122
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = call i32 @set_carrier(%struct.net_device* %147)
  %149 = load %struct.net_device*, %struct.net_device** %2, align 8
  %150 = call i32 @netif_start_queue(%struct.net_device* %149)
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = load i32, i32* @ifup, align 4
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = call i32 (%struct.TYPE_8__*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.TYPE_8__* %151, i32 %152, %struct.net_device* %153, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %146, %130, %112, %70, %27
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.TYPE_8__* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @__netdev_alloc_skb_ip_align(i32, i32, i32) #1

declare dso_local i32 @set_registers(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @netif_dbg(%struct.TYPE_8__*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @enable_net_traffic(%struct.net_device*, i32) #1

declare dso_local i32 @set_carrier(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
