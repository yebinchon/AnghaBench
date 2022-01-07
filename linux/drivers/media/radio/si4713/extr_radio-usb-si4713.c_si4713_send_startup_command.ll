; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_send_startup_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si4713/extr_radio-usb-si4713.c_si4713_send_startup_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_usb_device = type { i32*, i32 }

@jiffies = common dso_local global i32 0, align 4
@USB_RESP_TIMEOUT = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@SI4713_CTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_usb_device*)* @si4713_send_startup_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_send_startup_command(%struct.si4713_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si4713_usb_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.si4713_usb_device* %0, %struct.si4713_usb_device** %3, align 8
  %7 = load i32, i32* @jiffies, align 4
  %8 = load i32, i32* @USB_RESP_TIMEOUT, align 4
  %9 = call i32 @usecs_to_jiffies(i32 %8)
  %10 = add nsw i32 %7, %9
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %14 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %17 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %20 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @usb_sndctrlpipe(i32 %21, i32 0)
  %23 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %24 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @BUFFER_LENGTH, align 4
  %27 = load i32, i32* @USB_TIMEOUT, align 4
  %28 = call i32 @usb_control_msg(i32 %18, i32 %22, i32 9, i32 33, i32 831, i32 0, i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %112

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %110, %33
  %35 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %36 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %39 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @usb_rcvctrlpipe(i32 %40, i32 0)
  %42 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %43 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @BUFFER_LENGTH, align 4
  %46 = load i32, i32* @USB_TIMEOUT, align 4
  %47 = call i32 @usb_control_msg(i32 %37, i32 %41, i32 1, i32 161, i32 831, i32 0, i32* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %112

52:                                               ; preds = %34
  %53 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %54 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %103, label %59

59:                                               ; preds = %52
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %101 [
    i32 50, label %63
    i32 20, label %72
    i32 18, label %72
    i32 6, label %83
  ]

63:                                               ; preds = %59
  %64 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %65 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %112

71:                                               ; preds = %63
  br label %102

72:                                               ; preds = %59, %59
  %73 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %74 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SI4713_CTS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %112

82:                                               ; preds = %72
  br label %102

83:                                               ; preds = %59
  %84 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %85 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SI4713_CTS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.si4713_usb_device*, %struct.si4713_usb_device** %3, align 8
  %94 = getelementptr inbounds %struct.si4713_usb_device, %struct.si4713_usb_device* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 9
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 0, i32* %2, align 4
  br label %112

100:                                              ; preds = %92, %83
  br label %102

101:                                              ; preds = %59
  store i32 0, i32* %2, align 4
  br label %112

102:                                              ; preds = %100, %82, %71
  br label %103

103:                                              ; preds = %102, %52
  %104 = load i64, i64* %4, align 8
  %105 = call i64 @time_is_before_jiffies(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %112

110:                                              ; preds = %103
  %111 = call i32 @msleep(i32 3)
  br label %34

112:                                              ; preds = %107, %101, %99, %81, %70, %50, %31
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
