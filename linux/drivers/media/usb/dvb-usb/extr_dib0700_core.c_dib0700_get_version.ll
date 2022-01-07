; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dib0700_core.c_dib0700_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.dib0700_state* }
%struct.dib0700_state = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"could not acquire lock\00", align 1
@EINTR = common dso_local global i32 0, align 4
@REQUEST_GET_VERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_get_version(%struct.dvb_usb_device* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dib0700_state*, align 8
  %13 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 2
  %16 = load %struct.dib0700_state*, %struct.dib0700_state** %15, align 8
  store %struct.dib0700_state* %16, %struct.dib0700_state** %12, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = call i32 @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINTR, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %170

25:                                               ; preds = %5
  %26 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %27 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %30 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_rcvctrlpipe(i32 %31, i32 0)
  %33 = load i32, i32* @REQUEST_GET_VERSION, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = load i32, i32* @USB_DIR_IN, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %38 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(i32 %28, i32 %32, i32 %33, i32 %36, i32 0, i32 0, i32* %39, i32 16, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %25
  %45 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %46 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 24
  %51 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %52 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %50, %56
  %58 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %59 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %57, %63
  %65 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %66 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %64, %69
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %44, %25
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %77 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 24
  %82 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %83 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %81, %87
  %89 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %90 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 6
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %88, %94
  %96 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %97 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %95, %100
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %75, %72
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %134

106:                                              ; preds = %103
  %107 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %108 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 24
  %113 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %114 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 9
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %112, %118
  %120 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %121 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 10
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 8
  %126 = or i32 %119, %125
  %127 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %128 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 11
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %126, %131
  %133 = load i32*, i32** %10, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %106, %103
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %165

137:                                              ; preds = %134
  %138 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %139 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 12
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 24
  %144 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %145 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 13
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 16
  %150 = or i32 %143, %149
  %151 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %152 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 14
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 8
  %157 = or i32 %150, %156
  %158 = load %struct.dib0700_state*, %struct.dib0700_state** %12, align 8
  %159 = getelementptr inbounds %struct.dib0700_state, %struct.dib0700_state* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 15
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %157, %162
  %164 = load i32*, i32** %11, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %137, %134
  %166 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %167 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %165, %21
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
