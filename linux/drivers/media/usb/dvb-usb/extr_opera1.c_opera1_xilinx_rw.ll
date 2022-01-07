; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_xilinx_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_opera1.c_opera1_xilinx_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@OPERA_READ_MSG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OPERA_WRITE_MSG = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@OPERA_TUNER_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32*, i32, i32)* @opera1_xilinx_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opera1_xilinx_rw(%struct.usb_device* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @OPERA_READ_MSG, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %24 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %23, i32 0)
  br label %28

25:                                               ; preds = %6
  %26 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %27 = call i32 @usb_sndctrlpipe(%struct.usb_device* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @OPERA_READ_MSG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @USB_DIR_IN, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @USB_DIR_OUT, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kmalloc(i32 %39, i32 %40)
  store i32* %41, i32** %16, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %108

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @OPERA_WRITE_MSG, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %16, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @memcpy(i32* %52, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @usb_control_msg(%struct.usb_device* %57, i32 %58, i32 %59, i32 %62, i32 %63, i32 0, i32* %64, i32 %65, i32 2000)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @OPERA_TUNER_REQ, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %56
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %15, align 4
  %74 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %76 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %75, i32 0)
  %77 = load i32, i32* @OPERA_TUNER_REQ, align 4
  %78 = load i32, i32* @USB_DIR_IN, align 4
  %79 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @usb_control_msg(%struct.usb_device* %74, i32 %76, i32 %77, i32 %80, i32 1, i32 0, i32* %81, i32 1, i32 2000)
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %89, label %84

84:                                               ; preds = %70
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %70
  store i32 0, i32* %14, align 4
  br label %104

90:                                               ; preds = %84
  %91 = load i32, i32* %15, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %56
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @OPERA_READ_MSG, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %11, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @memcpy(i32* %99, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  br label %104

104:                                              ; preds = %103, %89
  %105 = load i32*, i32** %16, align 8
  %106 = call i32 @kfree(i32* %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %44
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
