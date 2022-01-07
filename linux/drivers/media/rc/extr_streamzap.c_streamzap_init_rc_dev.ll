; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_streamzap_init_rc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_streamzap.c_streamzap_init_rc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i32, %struct.streamzap_ir*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.streamzap_ir = type { %struct.TYPE_7__*, i32, i32, %struct.device* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"remote dev allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Streamzap PC Remote Infrared Receiver (%04x:%04x)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@RC_PROTO_BIT_ALL_IR_DECODER = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_STREAMZAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"remote input device register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rc_dev* (%struct.streamzap_ir*)* @streamzap_init_rc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rc_dev* @streamzap_init_rc_dev(%struct.streamzap_ir* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.streamzap_ir* %0, %struct.streamzap_ir** %3, align 8
  %7 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %8 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %7, i32 0, i32 3
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %11 = call %struct.rc_dev* @rc_allocate_device(i32 %10)
  store %struct.rc_dev* %11, %struct.rc_dev** %4, align 8
  %12 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %13 = icmp ne %struct.rc_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %19 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %22 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %29 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %34)
  %36 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %37 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %40 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_make_path(%struct.TYPE_7__* %38, i32 %41, i32 4)
  %43 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %44 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strlcat(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %47 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %48 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %53 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %56 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %58 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 5
  %62 = call i32 @usb_to_input_id(%struct.TYPE_7__* %59, i32* %61)
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store %struct.device* %63, %struct.device** %66, align 8
  %67 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %68 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %69 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %68, i32 0, i32 3
  store %struct.streamzap_ir* %67, %struct.streamzap_ir** %69, align 8
  %70 = load i32, i32* @RC_PROTO_BIT_ALL_IR_DECODER, align 4
  %71 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %72 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @DRIVER_NAME, align 4
  %74 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %75 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @RC_MAP_STREAMZAP, align 4
  %77 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %78 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %80 = call i32 @rc_register_device(%struct.rc_dev* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %17
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %88

86:                                               ; preds = %17
  %87 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  store %struct.rc_dev* %87, %struct.rc_dev** %2, align 8
  br label %91

88:                                               ; preds = %83, %14
  %89 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %90 = call i32 @rc_free_device(%struct.rc_dev* %89)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %91

91:                                               ; preds = %88, %86
  %92 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %92
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
