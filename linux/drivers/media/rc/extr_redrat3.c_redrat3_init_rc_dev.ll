; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_init_rc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_init_rc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, %struct.redrat3_dev*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.redrat3_dev = type { %struct.TYPE_7__*, i32, i32, %struct.device* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RedRat3%s Infrared Remote Transceiver\00", align 1
@USB_RR3IIUSB_PRODUCT_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"-II\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@RR3_RX_MIN_TIMEOUT = common dso_local global i32 0, align 4
@RR3_RX_MAX_TIMEOUT = common dso_local global i32 0, align 4
@redrat3_set_timeout = common dso_local global i32 0, align 4
@redrat3_transmit_ir = common dso_local global i32 0, align 4
@redrat3_set_tx_carrier = common dso_local global i32 0, align 4
@redrat3_wideband_receiver = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_HAUPPAUGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"remote dev registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rc_dev* (%struct.redrat3_dev*)* @redrat3_init_rc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rc_dev* @redrat3_init_rc_dev(%struct.redrat3_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.redrat3_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %3, align 8
  %8 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %9 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %8, i32 0, i32 3
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %12 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le16_to_cpu(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %19 = call %struct.rc_dev* @rc_allocate_device(i32 %18)
  store %struct.rc_dev* %19, %struct.rc_dev** %5, align 8
  %20 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %21 = icmp ne %struct.rc_dev* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %112

23:                                               ; preds = %1
  %24 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %25 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @USB_RR3IIUSB_PRODUCT_ID, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %34 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %37 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_make_path(%struct.TYPE_7__* %35, i32 %38, i32 4)
  %40 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %41 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 8
  %45 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %46 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 14
  store i32 %47, i32* %49, align 4
  %50 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %51 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %54 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %53, i32 0, i32 13
  %55 = call i32 @usb_to_input_id(%struct.TYPE_7__* %52, i32* %54)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %58 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %57, i32 0, i32 12
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.device* %56, %struct.device** %59, align 8
  %60 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %61 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %62 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %61, i32 0, i32 11
  store %struct.redrat3_dev* %60, %struct.redrat3_dev** %62, align 8
  %63 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %64 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @RR3_RX_MIN_TIMEOUT, align 4
  %67 = call i8* @MS_TO_NS(i32 %66)
  %68 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %69 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %68, i32 0, i32 9
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @RR3_RX_MAX_TIMEOUT, align 4
  %71 = call i8* @MS_TO_NS(i32 %70)
  %72 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %73 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %72, i32 0, i32 8
  store i8* %71, i8** %73, align 8
  %74 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %75 = call i32 @redrat3_get_timeout(%struct.redrat3_dev* %74)
  %76 = call i8* @US_TO_NS(i32 %75)
  %77 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %78 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @redrat3_set_timeout, align 4
  %80 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %81 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @redrat3_transmit_ir, align 4
  %83 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %84 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @redrat3_set_tx_carrier, align 4
  %86 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %87 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @redrat3_wideband_receiver, align 4
  %89 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %90 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @DRIVER_NAME, align 4
  %92 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %93 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = call i8* @US_TO_NS(i32 2)
  %95 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %96 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @RC_MAP_HAUPPAUGE, align 4
  %98 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %99 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %101 = call i32 @rc_register_device(%struct.rc_dev* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %23
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %109

107:                                              ; preds = %23
  %108 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  store %struct.rc_dev* %108, %struct.rc_dev** %2, align 8
  br label %112

109:                                              ; preds = %104
  %110 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %111 = call i32 @rc_free_device(%struct.rc_dev* %110)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %112

112:                                              ; preds = %109, %107, %22
  %113 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %113
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_7__*, i32*) #1

declare dso_local i8* @MS_TO_NS(i32) #1

declare dso_local i8* @US_TO_NS(i32) #1

declare dso_local i32 @redrat3_get_timeout(%struct.redrat3_dev*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
