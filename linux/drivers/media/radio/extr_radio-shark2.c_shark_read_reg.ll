; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_shark_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_shark_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_tea5777 = type { i32, %struct.shark_device* }
%struct.shark_device = type { i32*, i32 }

@TB_LEN = common dso_local global i32 0, align 4
@SHARK_OUT_EP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"request-read error: %d\0A\00", align 1
@SHARK_IN_EP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"read error: %d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"shark2-read: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_tea5777*, i32*)* @shark_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shark_read_reg(%struct.radio_tea5777* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radio_tea5777*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.shark_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radio_tea5777* %0, %struct.radio_tea5777** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %12 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %11, i32 0, i32 1
  %13 = load %struct.shark_device*, %struct.shark_device** %12, align 8
  store %struct.shark_device* %13, %struct.shark_device** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %15 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @TB_LEN, align 4
  %18 = call i32 @memset(i32* %16, i32 0, i32 %17)
  %19 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %20 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 130, i32* %22, align 4
  %23 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %24 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %27 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SHARK_OUT_EP, align 4
  %30 = call i32 @usb_sndintpipe(i32 %28, i32 %29)
  %31 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %32 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @TB_LEN, align 4
  %35 = call i32 @usb_interrupt_msg(i32 %25, i32 %30, i32* %33, i32 %34, i32* %9, i32 1000)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %2
  %39 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %40 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @v4l2_err(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %100

45:                                               ; preds = %2
  %46 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %47 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %50 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SHARK_IN_EP, align 4
  %53 = call i32 @usb_rcvintpipe(i32 %51, i32 %52)
  %54 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %55 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @TB_LEN, align 4
  %58 = call i32 @usb_interrupt_msg(i32 %48, i32 %53, i32* %56, i32 %57, i32* %9, i32 1000)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %45
  %62 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %63 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @v4l2_err(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %100

68:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %86, %68
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %89

72:                                               ; preds = %69
  %73 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %74 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 8
  %82 = sub nsw i32 16, %81
  %83 = shl i32 %79, %82
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %72
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %69

89:                                               ; preds = %69
  %90 = load i32, i32* @debug, align 4
  %91 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %92 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %95 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @v4l2_dbg(i32 1, i32 %90, i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 3, i32* %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %89, %61, %38
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @v4l2_err(i32, i8*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
