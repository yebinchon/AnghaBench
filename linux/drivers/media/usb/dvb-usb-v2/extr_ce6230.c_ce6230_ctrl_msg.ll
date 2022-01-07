; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_ce6230.c_ce6230_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_ce6230.c_ce6230_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_req = type { i32, i32*, i32, i32, i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: unknown command=%02x\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CE6230_USB_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: usb_control_msg() failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.usb_req*)* @ce6230_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce6230_ctrl_msg(%struct.dvb_usb_device* %0, %struct.usb_req* %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca %struct.usb_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store %struct.usb_req* %1, %struct.usb_req** %4, align 8
  %12 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %13 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %16 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %19 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %22 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %32 [
    i32 131, label %24
    i32 133, label %24
    i32 129, label %24
    i32 130, label %28
    i32 132, label %28
    i32 128, label %28
  ]

24:                                               ; preds = %2, %2, %2
  %25 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %26 = load i32, i32* @USB_DIR_IN, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %44

28:                                               ; preds = %2, %2, %2
  %29 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %30 = load i32, i32* @USB_DIR_OUT, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* @KBUILD_MODNAME, align 4
  %38 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %39 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %139

44:                                               ; preds = %28, %24
  %45 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %46 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32* @kmalloc(i32 %47, i32 %48)
  store i32* %49, i32** %11, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %139

55:                                               ; preds = %44
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %58 = load i32, i32* @USB_DIR_OUT, align 4
  %59 = or i32 %57, %58
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %64 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %67 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i32* %62, i32* %65, i32 %68)
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @usb_sndctrlpipe(%struct.TYPE_5__* %72, i32 0)
  store i32 %73, i32* %6, align 4
  br label %79

74:                                               ; preds = %55
  %75 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %76 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = call i32 @usb_rcvctrlpipe(%struct.TYPE_5__* %77, i32 0)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %74, %61
  %80 = call i32 @msleep(i32 1)
  %81 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %91 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CE6230_USB_TIMEOUT, align 4
  %94 = call i32 @usb_control_msg(%struct.TYPE_5__* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32* %89, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %96 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %104 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dvb_usb_dbg_usb_control_msg(%struct.TYPE_5__* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32* %102, i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %79
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %111 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* @KBUILD_MODNAME, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115)
  br label %118

117:                                              ; preds = %79
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %109
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %124 = load i32, i32* @USB_DIR_IN, align 4
  %125 = or i32 %123, %124
  %126 = icmp eq i32 %122, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %129 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = load %struct.usb_req*, %struct.usb_req** %4, align 8
  %133 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @memcpy(i32* %130, i32* %131, i32 %134)
  br label %136

136:                                              ; preds = %127, %121, %118
  %137 = load i32*, i32** %11, align 8
  %138 = call i32 @kfree(i32* %137)
  br label %139

139:                                              ; preds = %136, %52, %32
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @dvb_usb_dbg_usb_control_msg(%struct.TYPE_5__*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
