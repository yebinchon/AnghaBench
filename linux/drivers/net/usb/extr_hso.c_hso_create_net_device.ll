; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_create_net_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_create_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hso_net* }
%struct.hso_net = type { i8*, i8*, i8**, i8**, i8*, i8*, %struct.hso_device*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hso%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@hso_net_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to create ethernet device\0A\00", align 1
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't find BULK IN endpoint\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't find BULK OUT endpoint\0A\00", align 1
@hso_type = common dso_local global i32 0, align 4
@MUX_BULK_RX_BUF_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MUX_BULK_RX_BUF_SIZE = common dso_local global i32 0, align 4
@MUX_BULK_TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_device* (%struct.usb_interface*, i32)* @hso_create_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_device* @hso_create_net_device(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.hso_net*, align 8
  %10 = alloca %struct.hso_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.hso_device* @hso_create_device(%struct.usb_interface* %11, i32 %12)
  store %struct.hso_device* %13, %struct.hso_device** %10, align 8
  %14 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %15 = icmp ne %struct.hso_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %163

17:                                               ; preds = %2
  %18 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %19 = load i32, i32* @hso_net_init, align 4
  %20 = call %struct.net_device* @alloc_netdev(i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store %struct.net_device* %20, %struct.net_device** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %160

27:                                               ; preds = %17
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call %struct.hso_net* @netdev_priv(%struct.net_device* %28)
  store %struct.hso_net* %29, %struct.hso_net** %9, align 8
  %30 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %31 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %32 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.hso_net* %30, %struct.hso_net** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %36 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %35, i32 0, i32 7
  store %struct.net_device* %34, %struct.net_device** %36, align 8
  %37 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %38 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %39 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %38, i32 0, i32 6
  store %struct.hso_device* %37, %struct.hso_device** %39, align 8
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %42 = load i32, i32* @USB_DIR_IN, align 4
  %43 = call i8* @hso_get_ep(%struct.usb_interface* %40, i32 %41, i32 %42)
  %44 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %45 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %47 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %27
  %51 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %160

54:                                               ; preds = %27
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %57 = load i32, i32* @USB_DIR_OUT, align 4
  %58 = call i8* @hso_get_ep(%struct.usb_interface* %55, i32 %56, i32 %57)
  %59 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %60 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %62 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %54
  %66 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %67 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %160

69:                                               ; preds = %54
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %72 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %71, i32 0, i32 0
  %73 = call i32 @SET_NETDEV_DEV(%struct.net_device* %70, i32* %72)
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %74, i32* @hso_type)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %118, %69
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MUX_BULK_RX_BUF_COUNT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %76
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @usb_alloc_urb(i32 0, i32 %81)
  %83 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %84 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  %89 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %90 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %89, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %80
  br label %160

98:                                               ; preds = %80
  %99 = load i32, i32* @MUX_BULK_RX_BUF_SIZE, align 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @kzalloc(i32 %99, i32 %100)
  %102 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %103 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %101, i8** %107, align 8
  %108 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %109 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %98
  br label %160

117:                                              ; preds = %98
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %76

121:                                              ; preds = %76
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @usb_alloc_urb(i32 0, i32 %122)
  %124 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %125 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %127 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %121
  br label %160

131:                                              ; preds = %121
  %132 = load i32, i32* @MUX_BULK_TX_BUF_SIZE, align 4
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @kzalloc(i32 %132, i32 %133)
  %135 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %136 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %138 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %131
  br label %160

142:                                              ; preds = %131
  %143 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %144 = call i32 @add_net_device(%struct.hso_device* %143)
  %145 = load %struct.net_device*, %struct.net_device** %8, align 8
  %146 = call i32 @register_netdev(%struct.net_device* %145)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %151 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %150, i32 0, i32 0
  %152 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %160

153:                                              ; preds = %142
  %154 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %155 = call i32 @hso_log_port(%struct.hso_device* %154)
  %156 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %157 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %158 = call i32 @hso_create_rfkill(%struct.hso_device* %156, %struct.usb_interface* %157)
  %159 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  store %struct.hso_device* %159, %struct.hso_device** %3, align 8
  br label %163

160:                                              ; preds = %149, %141, %130, %116, %97, %65, %50, %23
  %161 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %162 = call i32 @hso_free_net_device(%struct.hso_device* %161)
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %163

163:                                              ; preds = %160, %153, %16
  %164 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  ret %struct.hso_device* %164
}

declare dso_local %struct.hso_device* @hso_create_device(%struct.usb_interface*, i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.hso_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @hso_get_ep(%struct.usb_interface*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @add_net_device(%struct.hso_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @hso_log_port(%struct.hso_device*) #1

declare dso_local i32 @hso_create_rfkill(%struct.hso_device*, %struct.usb_interface*) #1

declare dso_local i32 @hso_free_net_device(%struct.hso_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
