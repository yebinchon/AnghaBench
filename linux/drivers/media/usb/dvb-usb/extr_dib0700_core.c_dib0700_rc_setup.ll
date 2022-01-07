; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_rc_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_rc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.urb = type { i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RC_MSG_SIZE_V1_20 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rc kzalloc failed\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@dib0700_rc_urb_completion = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"There's no endpoint for remote controller\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"rc submit urb failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_rc_setup(%struct.dvb_usb_device* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.dib0700_state*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %5, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 1
  %14 = load %struct.dib0700_state*, %struct.dib0700_state** %13, align 8
  store %struct.dib0700_state* %14, %struct.dib0700_state** %6, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.dib0700_state*, %struct.dib0700_state** %6, align 8
  %16 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 66048
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %21 = icmp ne %struct.usb_interface* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %152

23:                                               ; preds = %19
  %24 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %152

37:                                               ; preds = %23
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %38)
  store %struct.urb* %39, %struct.urb** %7, align 8
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = icmp eq %struct.urb* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %152

45:                                               ; preds = %37
  %46 = load i32, i32* @RC_MSG_SIZE_V1_20, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32* @kzalloc(i32 %46, i32 %47)
  %49 = load %struct.urb*, %struct.urb** %7, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.urb*, %struct.urb** %7, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %45
  %56 = call i32 @err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.urb*, %struct.urb** %7, align 8
  %58 = call i32 @usb_free_urb(%struct.urb* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %152

61:                                               ; preds = %45
  %62 = load i32, i32* @EINPROGRESS, align 4
  %63 = sub nsw i32 0, %62
  %64 = load %struct.urb*, %struct.urb** %7, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %67 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %75, %struct.usb_endpoint_descriptor** %8, align 8
  %76 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %77 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %61
  %80 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %81 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @usb_rcvbulkpipe(i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.urb*, %struct.urb** %7, align 8
  %90 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %91 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.urb*, %struct.urb** %7, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* @RC_MSG_SIZE_V1_20, align 4
  %98 = load i32, i32* @dib0700_rc_urb_completion, align 4
  %99 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %100 = call i32 @usb_fill_bulk_urb(%struct.urb* %89, i32 %92, i32 %93, i32* %96, i32 %97, i32 %98, %struct.dvb_usb_device* %99)
  br label %124

101:                                              ; preds = %79
  %102 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %103 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %107 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @usb_rcvintpipe(i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load %struct.urb*, %struct.urb** %7, align 8
  %112 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %113 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.urb*, %struct.urb** %7, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* @RC_MSG_SIZE_V1_20, align 4
  %120 = load i32, i32* @dib0700_rc_urb_completion, align 4
  %121 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %122 = call i32 @usb_fill_int_urb(%struct.urb* %111, i32 %114, i32 %115, i32* %118, i32 %119, i32 %120, %struct.dvb_usb_device* %121, i32 1)
  br label %123

123:                                              ; preds = %105, %101
  br label %124

124:                                              ; preds = %123, %83
  br label %125

125:                                              ; preds = %124, %61
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %125
  %129 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %130 = load %struct.urb*, %struct.urb** %7, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @kfree(i32* %132)
  %134 = load %struct.urb*, %struct.urb** %7, align 8
  %135 = call i32 @usb_free_urb(%struct.urb* %134)
  store i32 0, i32* %3, align 4
  br label %152

136:                                              ; preds = %125
  %137 = load %struct.urb*, %struct.urb** %7, align 8
  %138 = load i32, i32* @GFP_ATOMIC, align 4
  %139 = call i32 @usb_submit_urb(%struct.urb* %137, i32 %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.urb*, %struct.urb** %7, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @kfree(i32* %146)
  %148 = load %struct.urb*, %struct.urb** %7, align 8
  %149 = call i32 @usb_free_urb(%struct.urb* %148)
  br label %150

150:                                              ; preds = %142, %136
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %128, %55, %42, %34, %22
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.dvb_usb_device*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.dvb_usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
