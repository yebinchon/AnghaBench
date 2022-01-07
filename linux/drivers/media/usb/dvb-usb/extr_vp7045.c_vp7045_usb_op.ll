; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045.c_vp7045_usb_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp7045.c_vp7045_usb_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"out buffer: \00", align 1
@TH_COMMAND_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"USB control message 'out' went wrong.\00", align 1
@EIO = common dso_local global i32 0, align 4
@TH_COMMAND_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"USB control message 'in' went wrong.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"in buffer: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vp7045_usb_op(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %17, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %17, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp sgt i32 %24, 19
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 19, i32* %12, align 4
  br label %27

27:                                               ; preds = %26, %7
  %28 = load i32, i32* %14, align 4
  %29 = icmp sgt i32 %28, 11
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 11, i32* %14, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %33 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock_interruptible(i32* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %8, align 4
  br label %117

39:                                               ; preds = %31
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32*, i32** %17, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @memcpy(i32* %47, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %42, %39
  %52 = call i32 @deb_xfer(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %17, align 8
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @debug_dump(i32* %53, i32 %55, i32 (i8*)* @deb_xfer)
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %61 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usb_sndctrlpipe(i32 %62, i32 0)
  %64 = load i32, i32* @TH_COMMAND_OUT, align 4
  %65 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %66 = load i32, i32* @USB_DIR_OUT, align 4
  %67 = or i32 %65, %66
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @usb_control_msg(i32 %59, i32 %63, i32 %64, i32 %67, i32 0, i32 0, i32* %68, i32 20, i32 2000)
  %70 = icmp ne i32 %69, 20
  br i1 %70, label %71, label %75

71:                                               ; preds = %51
  %72 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %16, align 4
  br label %112

75:                                               ; preds = %51
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @msleep(i32 %76)
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_rcvctrlpipe(i32 %83, i32 0)
  %85 = load i32, i32* @TH_COMMAND_IN, align 4
  %86 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %87 = load i32, i32* @USB_DIR_IN, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @usb_control_msg(i32 %80, i32 %84, i32 %85, i32 %88, i32 0, i32 0, i32* %89, i32 12, i32 2000)
  %91 = icmp ne i32 %90, 12
  br i1 %91, label %92, label %96

92:                                               ; preds = %75
  %93 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %16, align 4
  br label %112

96:                                               ; preds = %75
  %97 = call i32 @deb_xfer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @debug_dump(i32* %98, i32 12, i32 (i8*)* @deb_xfer)
  %100 = load i32*, i32** %13, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load i32, i32* %14, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32*, i32** %13, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @memcpy(i32* %106, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %102, %96
  br label %112

112:                                              ; preds = %111, %92, %71
  %113 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %114 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %112, %37
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @deb_xfer(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
