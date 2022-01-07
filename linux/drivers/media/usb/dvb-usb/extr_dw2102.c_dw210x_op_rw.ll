; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw210x_op_rw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dw2102.c_dw210x_op_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@DW210X_READ_MSG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DW210X_WRITE_MSG = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32, i32*, i32, i32)* @dw210x_op_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw210x_op_rw(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @DW210X_READ_MSG, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %25 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %24, i32 0)
  br label %29

26:                                               ; preds = %7
  %27 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %28 = call i32 @usb_sndctrlpipe(%struct.usb_device* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @DW210X_READ_MSG, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @USB_DIR_IN, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @USB_DIR_OUT, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32* @kmalloc(i32 %40, i32 %41)
  store i32* %42, i32** %17, align 8
  %43 = load i32*, i32** %17, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %81

48:                                               ; preds = %38
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32*, i32** %17, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @memcpy(i32* %53, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @usb_control_msg(%struct.usb_device* %58, i32 %59, i32 %60, i32 %63, i32 %64, i32 %65, i32* %66, i32 %67, i32 2000)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @DW210X_READ_MSG, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @memcpy(i32* %73, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %57
  %78 = load i32*, i32** %17, align 8
  %79 = call i32 @kfree(i32* %78)
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %45
  %82 = load i32, i32* %8, align 4
  ret i32 %82
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
