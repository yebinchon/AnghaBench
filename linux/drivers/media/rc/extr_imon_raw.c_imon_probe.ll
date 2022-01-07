; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon_raw.c_imon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_imon_raw.c_imon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.rc_dev = type { i8*, %struct.imon*, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.imon = type { i32, %struct.rc_dev*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [20 x i8] c"IR endpoint missing\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imon_ir_rx = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"iMON Station\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@RC_MAP_IMON_RSC = common dso_local global i32 0, align 4
@BIT_DURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @imon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imon_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.rc_dev*, align 8
  %10 = alloca %struct.imon*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %6, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %8, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 1
  %18 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  store %struct.usb_host_interface* %18, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %40, %2
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %28 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %33, %struct.usb_endpoint_descriptor** %13, align 8
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  %35 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %13, align 8
  store %struct.usb_endpoint_descriptor* %38, %struct.usb_endpoint_descriptor** %6, align 8
  br label %43

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %19

43:                                               ; preds = %37, %19
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %45 = icmp ne %struct.usb_endpoint_descriptor* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %171

52:                                               ; preds = %43
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %53, i32 0, i32 0
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.imon* @devm_kmalloc(i32* %54, i32 32, i32 %55)
  store %struct.imon* %56, %struct.imon** %10, align 8
  %57 = load %struct.imon*, %struct.imon** %10, align 8
  %58 = icmp ne %struct.imon* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %171

62:                                               ; preds = %52
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @usb_alloc_urb(i32 0, i32 %63)
  %65 = load %struct.imon*, %struct.imon** %10, align 8
  %66 = getelementptr inbounds %struct.imon, %struct.imon* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.imon*, %struct.imon** %10, align 8
  %68 = getelementptr inbounds %struct.imon, %struct.imon* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %171

74:                                               ; preds = %62
  %75 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %76 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %75, i32 0, i32 0
  %77 = load %struct.imon*, %struct.imon** %10, align 8
  %78 = getelementptr inbounds %struct.imon, %struct.imon* %77, i32 0, i32 4
  store i32* %76, i32** %78, align 8
  %79 = load %struct.imon*, %struct.imon** %10, align 8
  %80 = getelementptr inbounds %struct.imon, %struct.imon* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %83 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %84 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %85 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usb_rcvintpipe(%struct.usb_device* %83, i32 %86)
  %88 = load %struct.imon*, %struct.imon** %10, align 8
  %89 = getelementptr inbounds %struct.imon, %struct.imon* %88, i32 0, i32 3
  %90 = load i32, i32* @imon_ir_rx, align 4
  %91 = load %struct.imon*, %struct.imon** %10, align 8
  %92 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %93 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_fill_int_urb(i32 %81, %struct.usb_device* %82, i32 %87, i32* %89, i32 4, i32 %90, %struct.imon* %91, i32 %94)
  %96 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %97 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %96, i32 0, i32 0
  %98 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %99 = call %struct.rc_dev* @devm_rc_allocate_device(i32* %97, i32 %98)
  store %struct.rc_dev* %99, %struct.rc_dev** %9, align 8
  %100 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %101 = icmp ne %struct.rc_dev* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %74
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %165

105:                                              ; preds = %74
  %106 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %107 = load %struct.imon*, %struct.imon** %10, align 8
  %108 = getelementptr inbounds %struct.imon, %struct.imon* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @usb_make_path(%struct.usb_device* %106, i32 %109, i32 4)
  %111 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %112 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %111, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %112, align 8
  %113 = load i32, i32* @KBUILD_MODNAME, align 4
  %114 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %115 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load %struct.imon*, %struct.imon** %10, align 8
  %117 = getelementptr inbounds %struct.imon, %struct.imon* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %120 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %122 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %123 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %122, i32 0, i32 6
  %124 = call i32 @usb_to_input_id(%struct.usb_device* %121, i32* %123)
  %125 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %126 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %125, i32 0, i32 0
  %127 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %128 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32* %126, i32** %129, align 8
  %130 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %131 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %132 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @RC_MAP_IMON_RSC, align 4
  %134 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %135 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @BIT_DURATION, align 4
  %137 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %138 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.imon*, %struct.imon** %10, align 8
  %140 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %141 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %140, i32 0, i32 1
  store %struct.imon* %139, %struct.imon** %141, align 8
  %142 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %143 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %142, i32 0, i32 0
  %144 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %145 = call i32 @devm_rc_register_device(i32* %143, %struct.rc_dev* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %105
  br label %165

149:                                              ; preds = %105
  %150 = load %struct.rc_dev*, %struct.rc_dev** %9, align 8
  %151 = load %struct.imon*, %struct.imon** %10, align 8
  %152 = getelementptr inbounds %struct.imon, %struct.imon* %151, i32 0, i32 1
  store %struct.rc_dev* %150, %struct.rc_dev** %152, align 8
  %153 = load %struct.imon*, %struct.imon** %10, align 8
  %154 = getelementptr inbounds %struct.imon, %struct.imon* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @GFP_KERNEL, align 4
  %157 = call i32 @usb_submit_urb(i32 %155, i32 %156)
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  br label %165

161:                                              ; preds = %149
  %162 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %163 = load %struct.imon*, %struct.imon** %10, align 8
  %164 = call i32 @usb_set_intfdata(%struct.usb_interface* %162, %struct.imon* %163)
  store i32 0, i32* %3, align 4
  br label %171

165:                                              ; preds = %160, %148, %102
  %166 = load %struct.imon*, %struct.imon** %10, align 8
  %167 = getelementptr inbounds %struct.imon, %struct.imon* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @usb_free_urb(i32 %168)
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %165, %161, %71, %59, %46
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.imon* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32*, i32, i32, %struct.imon*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

declare dso_local %struct.rc_dev* @devm_rc_allocate_device(i32*, i32) #1

declare dso_local i32 @usb_make_path(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.usb_device*, i32*) #1

declare dso_local i32 @devm_rc_register_device(i32*, %struct.rc_dev*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.imon*) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
