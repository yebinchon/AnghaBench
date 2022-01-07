; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_create_bulk_serial_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_create_bulk_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32, i32, i8*, i8*, %struct.hso_tiocmget*, %struct.TYPE_2__, %struct.hso_device* }
%struct.hso_tiocmget = type { i32, i32, i64, i8*, i8* }
%struct.TYPE_2__ = type { %struct.hso_serial* }
%struct.hso_serial = type { i32, i32, i8*, i8*, %struct.hso_tiocmget*, %struct.TYPE_2__, %struct.hso_serial* }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HSO_PORT_MASK = common dso_local global i32 0, align 4
@HSO_PORT_MODEM = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to find INT IN ep\0A\00", align 1
@BULK_URB_RX_SIZE = common dso_local global i32 0, align 4
@BULK_URB_TX_SIZE = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to find BULK IN ep\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@hso_std_serial_write_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_device* (%struct.usb_interface*, i32)* @hso_create_bulk_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_device* @hso_create_bulk_serial_device(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hso_device*, align 8
  %7 = alloca %struct.hso_serial*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hso_tiocmget*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.hso_serial* @hso_create_device(%struct.usb_interface* %10, i32 %11)
  %13 = bitcast %struct.hso_serial* %12 to %struct.hso_device*
  store %struct.hso_device* %13, %struct.hso_device** %6, align 8
  %14 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %15 = icmp ne %struct.hso_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %162

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 48, i32 %18)
  %20 = bitcast i8* %19 to %struct.hso_serial*
  store %struct.hso_serial* %20, %struct.hso_serial** %7, align 8
  %21 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %22 = icmp ne %struct.hso_serial* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %154

24:                                               ; preds = %17
  %25 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %26 = bitcast %struct.hso_device* %25 to %struct.hso_serial*
  %27 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %28 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %27, i32 0, i32 6
  store %struct.hso_serial* %26, %struct.hso_serial** %28, align 8
  %29 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %30 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %31 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.hso_serial* %29, %struct.hso_serial** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HSO_PORT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @HSO_PORT_MODEM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %100

38:                                               ; preds = %24
  store i32 2, i32* %8, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kzalloc(i32 32, i32 %39)
  %41 = bitcast i8* %40 to %struct.hso_tiocmget*
  %42 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %43 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %42, i32 0, i32 4
  store %struct.hso_tiocmget* %41, %struct.hso_tiocmget** %43, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kzalloc(i32 4, i32 %44)
  %46 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %47 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %46, i32 0, i32 4
  %48 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %47, align 8
  %49 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %48, i32 0, i32 4
  store i8* %45, i8** %49, align 8
  %50 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %51 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %50, i32 0, i32 4
  %52 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %51, align 8
  %53 = icmp ne %struct.hso_tiocmget* %52, null
  br i1 %53, label %54, label %99

54:                                               ; preds = %38
  %55 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %56 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %55, i32 0, i32 4
  %57 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %56, align 8
  %58 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %99

61:                                               ; preds = %54
  %62 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %63 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %62, i32 0, i32 4
  %64 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %63, align 8
  store %struct.hso_tiocmget* %64, %struct.hso_tiocmget** %9, align 8
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %67 = load i32, i32* @USB_DIR_IN, align 4
  %68 = call i8* @hso_get_ep(%struct.usb_interface* %65, i32 %66, i32 %67)
  %69 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %70 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %72 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %61
  %76 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %77 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %154

79:                                               ; preds = %61
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i64 @usb_alloc_urb(i32 0, i32 %80)
  %82 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %83 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %85 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %79
  %89 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %90 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %89, i32 0, i32 1
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load %struct.hso_tiocmget*, %struct.hso_tiocmget** %9, align 8
  %93 = getelementptr inbounds %struct.hso_tiocmget, %struct.hso_tiocmget* %92, i32 0, i32 0
  %94 = call i32 @init_waitqueue_head(i32* %93)
  br label %98

95:                                               ; preds = %79
  %96 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %97 = call i32 @hso_free_tiomget(%struct.hso_serial* %96)
  br label %98

98:                                               ; preds = %95, %88
  br label %99

99:                                               ; preds = %98, %54, %38
  br label %101

100:                                              ; preds = %24
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @BULK_URB_RX_SIZE, align 4
  %105 = load i32, i32* @BULK_URB_TX_SIZE, align 4
  %106 = call i64 @hso_serial_common_create(%struct.hso_serial* %102, i32 %103, i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %154

109:                                              ; preds = %101
  %110 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %111 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %112 = load i32, i32* @USB_DIR_IN, align 4
  %113 = call i8* @hso_get_ep(%struct.usb_interface* %110, i32 %111, i32 %112)
  %114 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %115 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %117 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %109
  %121 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %122 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %121, i32 0, i32 0
  %123 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %149

124:                                              ; preds = %109
  %125 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %126 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %127 = load i32, i32* @USB_DIR_OUT, align 4
  %128 = call i8* @hso_get_ep(%struct.usb_interface* %125, i32 %126, i32 %127)
  %129 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %130 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %129, i32 0, i32 2
  store i8* %128, i8** %130, align 8
  %131 = icmp ne i8* %128, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %124
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 0
  %135 = call i32 @dev_err(i32* %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %149

136:                                              ; preds = %124
  %137 = load i32, i32* @hso_std_serial_write_data, align 4
  %138 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %139 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %141 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %144 = call i32 @set_serial_by_index(i32 %142, %struct.hso_serial* %143)
  %145 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %146 = bitcast %struct.hso_device* %145 to %struct.hso_serial*
  %147 = call i32 @hso_log_port(%struct.hso_serial* %146)
  %148 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  store %struct.hso_device* %148, %struct.hso_device** %3, align 8
  br label %162

149:                                              ; preds = %132, %120
  %150 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %151 = call i32 @hso_serial_tty_unregister(%struct.hso_serial* %150)
  %152 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %153 = call i32 @hso_serial_common_free(%struct.hso_serial* %152)
  br label %154

154:                                              ; preds = %149, %108, %75, %23
  %155 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %156 = call i32 @hso_free_tiomget(%struct.hso_serial* %155)
  %157 = load %struct.hso_serial*, %struct.hso_serial** %7, align 8
  %158 = call i32 @kfree(%struct.hso_serial* %157)
  %159 = load %struct.hso_device*, %struct.hso_device** %6, align 8
  %160 = bitcast %struct.hso_device* %159 to %struct.hso_serial*
  %161 = call i32 @kfree(%struct.hso_serial* %160)
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %162

162:                                              ; preds = %154, %136, %16
  %163 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  ret %struct.hso_device* %163
}

declare dso_local %struct.hso_serial* @hso_create_device(%struct.usb_interface*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @hso_get_ep(%struct.usb_interface*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @hso_free_tiomget(%struct.hso_serial*) #1

declare dso_local i64 @hso_serial_common_create(%struct.hso_serial*, i32, i32, i32) #1

declare dso_local i32 @set_serial_by_index(i32, %struct.hso_serial*) #1

declare dso_local i32 @hso_log_port(%struct.hso_serial*) #1

declare dso_local i32 @hso_serial_tty_unregister(%struct.hso_serial*) #1

declare dso_local i32 @hso_serial_common_free(%struct.hso_serial*) #1

declare dso_local i32 @kfree(%struct.hso_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
