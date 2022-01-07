; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airspy = type { i32*, i32, i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unknown command %02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"usb_control_msg() failed %d request %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airspy*, i32, i32, i32, i32*, i32)* @airspy_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_ctrl_msg(%struct.airspy* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.airspy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.airspy* %0, %struct.airspy** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %34 [
    i32 135, label %18
    i32 134, label %18
    i32 137, label %26
    i32 128, label %26
    i32 136, label %26
    i32 132, label %26
    i32 130, label %26
    i32 129, label %26
    i32 133, label %26
    i32 131, label %26
  ]

18:                                               ; preds = %6, %6
  %19 = load %struct.airspy*, %struct.airspy** %8, align 8
  %20 = getelementptr inbounds %struct.airspy, %struct.airspy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndctrlpipe(i32 %21, i32 0)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %24 = load i32, i32* @USB_DIR_OUT, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %16, align 4
  br label %42

26:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %27 = load %struct.airspy*, %struct.airspy** %8, align 8
  %28 = getelementptr inbounds %struct.airspy, %struct.airspy* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_rcvctrlpipe(i32 %29, i32 0)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %16, align 4
  br label %42

34:                                               ; preds = %6
  %35 = load %struct.airspy*, %struct.airspy** %8, align 8
  %36 = getelementptr inbounds %struct.airspy, %struct.airspy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %14, align 4
  br label %102

42:                                               ; preds = %26, %18
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @USB_DIR_IN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.airspy*, %struct.airspy** %8, align 8
  %49 = getelementptr inbounds %struct.airspy, %struct.airspy* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @memcpy(i32* %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.airspy*, %struct.airspy** %8, align 8
  %56 = getelementptr inbounds %struct.airspy, %struct.airspy* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.airspy*, %struct.airspy** %8, align 8
  %64 = getelementptr inbounds %struct.airspy, %struct.airspy* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @usb_control_msg(i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32* %65, i32 %66, i32 1000)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.airspy*, %struct.airspy** %8, align 8
  %69 = getelementptr inbounds %struct.airspy, %struct.airspy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.airspy*, %struct.airspy** %8, align 8
  %76 = getelementptr inbounds %struct.airspy, %struct.airspy* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @airspy_dbg_usb_control_msg(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32* %77, i32 %78)
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %54
  %83 = load %struct.airspy*, %struct.airspy** %8, align 8
  %84 = getelementptr inbounds %struct.airspy, %struct.airspy* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %102

89:                                               ; preds = %54
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @USB_DIR_IN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32*, i32** %12, align 8
  %96 = load %struct.airspy*, %struct.airspy** %8, align 8
  %97 = getelementptr inbounds %struct.airspy, %struct.airspy* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @memcpy(i32* %95, i32* %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %89
  store i32 0, i32* %7, align 4
  br label %104

102:                                              ; preds = %82, %34
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @airspy_dbg_usb_control_msg(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
