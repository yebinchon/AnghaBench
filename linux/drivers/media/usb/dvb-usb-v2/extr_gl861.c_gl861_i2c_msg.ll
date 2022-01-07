; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_gl861_i2c_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_gl861.c_gl861_i2c_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GL861_REQ_I2C_WRITE = common dso_local global i32 0, align 4
@GL861_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GL861_REQ_I2C_READ = common dso_local global i32 0, align 4
@GL861_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: wlen=%d, aborting\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @gl861_i2c_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl861_i2c_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %9, align 4
  %22 = shl i32 %21, 9
  store i32 %22, i32* %15, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 0
  br label %28

28:                                               ; preds = %25, %6
  %29 = phi i1 [ true, %6 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @GL861_REQ_I2C_WRITE, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* @GL861_WRITE, align 4
  store i32 %35, i32* %18, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @kmemdup(i32* %36, i32 %37, i32 %38)
  store i32* %39, i32** %19, align 8
  br label %46

40:                                               ; preds = %28
  %41 = load i32, i32* @GL861_REQ_I2C_READ, align 4
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* @GL861_READ, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @kmalloc(i32 %43, i32 %44)
  store i32* %45, i32** %19, align 8
  br label %46

46:                                               ; preds = %40, %33
  %47 = load i32*, i32** %19, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %109

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %67 [
    i32 1, label %54
    i32 2, label %58
  ]

54:                                               ; preds = %52
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  br label %79

58:                                               ; preds = %52
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %15, align 4
  br label %79

67:                                               ; preds = %52
  %68 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %69 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* @KBUILD_MODNAME, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32*, i32** %19, align 8
  %76 = call i32 @kfree(i32* %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %109

79:                                               ; preds = %58, %54
  %80 = call i32 @usleep_range(i32 1000, i32 2000)
  %81 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %82 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %85 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = call i32 @usb_rcvctrlpipe(%struct.TYPE_3__* %86, i32 0)
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32*, i32** %19, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @usb_control_msg(%struct.TYPE_3__* %83, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32* %92, i32 %93, i32 2000)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %79
  %98 = load i32, i32* %20, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32*, i32** %12, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @memcpy(i32* %101, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %97, %79
  %106 = load i32*, i32** %19, align 8
  %107 = call i32 @kfree(i32* %106)
  %108 = load i32, i32* %20, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %105, %67, %49
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
