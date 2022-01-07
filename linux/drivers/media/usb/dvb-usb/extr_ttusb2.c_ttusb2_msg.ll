; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_ttusb2_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_ttusb2.c_ttusb2_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.ttusb2_state* }
%struct.ttusb2_state = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"there might have been an error during control message transfer. (rlen = %d, was %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32)* @ttusb2_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb2_msg(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dvb_usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ttusb2_state*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = load %struct.ttusb2_state*, %struct.ttusb2_state** %19, align 8
  store %struct.ttusb2_state* %20, %struct.ttusb2_state** %14, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 4, %21
  %23 = icmp sgt i32 %22, 64
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %129

27:                                               ; preds = %6
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @kzalloc(i32 %29, i32 %30)
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %129

37:                                               ; preds = %27
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @kzalloc(i32 64, i32 %38)
  store i32* %39, i32** %16, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @kfree(i32* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %129

47:                                               ; preds = %37
  %48 = load i32*, i32** %15, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 170, i32* %49, align 4
  %50 = load %struct.ttusb2_state*, %struct.ttusb2_state** %14, align 8
  %51 = getelementptr inbounds %struct.ttusb2_state, %struct.ttusb2_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @memcpy(i32* %63, i32* %64, i32 %65)
  %67 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %8, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 4
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @dvb_usb_generic_rw(%struct.dvb_usb_device* %67, i32* %68, i32 %70, i32* %71, i32 64, i32 0)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %103, label %75

75:                                               ; preds = %47
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 85
  br i1 %79, label %103, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %103, label %88

88:                                               ; preds = %80
  %89 = load i32*, i32** %16, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* %13, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = load i32*, i32** %16, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97, %88, %80, %75, %47
  %104 = load i32, i32* %13, align 4
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @warn(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %107)
  %109 = load i32*, i32** %15, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @kfree(i32* %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %129

115:                                              ; preds = %97, %94
  %116 = load i32, i32* %13, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32*, i32** %12, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @memcpy(i32* %119, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %115
  %125 = load i32*, i32** %15, align 8
  %126 = call i32 @kfree(i32* %125)
  %127 = load i32*, i32** %16, align 8
  %128 = call i32 @kfree(i32* %127)
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %124, %103, %42, %34, %24
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dvb_usb_generic_rw(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
