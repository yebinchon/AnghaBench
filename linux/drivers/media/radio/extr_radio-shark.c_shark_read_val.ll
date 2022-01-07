; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark.c_shark_read_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark.c_shark_read_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tea575x = type { %struct.shark_device* }
%struct.shark_device = type { i32*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TB_LEN = common dso_local global i32 0, align 4
@SHARK_OUT_EP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"request-status error: %d\0A\00", align 1
@SHARK_IN_EP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"get-status error: %d\0A\00", align 1
@TEA575X_BIT_BAND_MASK = common dso_local global i32 0, align 4
@TEA575X_BIT_BAND_FM = common dso_local global i32 0, align 4
@TEA575X_BIT_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tea575x*)* @shark_read_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shark_read_val(%struct.snd_tea575x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_tea575x*, align 8
  %4 = alloca %struct.shark_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_tea575x* %0, %struct.snd_tea575x** %3, align 8
  %9 = load %struct.snd_tea575x*, %struct.snd_tea575x** %3, align 8
  %10 = getelementptr inbounds %struct.snd_tea575x, %struct.snd_tea575x* %9, i32 0, i32 0
  %11 = load %struct.shark_device*, %struct.shark_device** %10, align 8
  store %struct.shark_device* %11, %struct.shark_device** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %13 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @TB_LEN, align 4
  %16 = call i32 @memset(i32* %14, i32 0, i32 %15)
  %17 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %18 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 128, i32* %20, align 4
  %21 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %22 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %25 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SHARK_OUT_EP, align 4
  %28 = call i32 @usb_sndintpipe(i32 %26, i32 %27)
  %29 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %30 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @TB_LEN, align 4
  %33 = call i32 @usb_interrupt_msg(i32 %23, i32 %28, i32* %31, i32 %32, i32* %7, i32 1000)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %38 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %37, i32 0, i32 3
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @v4l2_err(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %42 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %2, align 4
  br label %113

44:                                               ; preds = %1
  %45 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %46 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %49 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SHARK_IN_EP, align 4
  %52 = call i32 @usb_rcvintpipe(i32 %50, i32 %51)
  %53 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %54 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @TB_LEN, align 4
  %57 = call i32 @usb_interrupt_msg(i32 %47, i32 %52, i32* %55, i32 %56, i32* %7, i32 1000)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %44
  %61 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %62 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %61, i32 0, i32 3
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @v4l2_err(i32* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %66 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %2, align 4
  br label %113

68:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %74 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %80, 8
  %82 = sub nsw i32 24, %81
  %83 = shl i32 %79, %82
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %69

89:                                               ; preds = %69
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %92 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @TEA575X_BIT_BAND_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @TEA575X_BIT_BAND_FM, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @TEA575X_BIT_MONO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %105 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  br label %111

107:                                              ; preds = %98, %89
  %108 = load %struct.shark_device*, %struct.shark_device** %4, align 8
  %109 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %111, %60, %36
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
