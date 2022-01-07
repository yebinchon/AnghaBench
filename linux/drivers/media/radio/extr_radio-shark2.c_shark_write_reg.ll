; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_shark_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-shark2.c_shark_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_tea5777 = type { i32, %struct.shark_device* }
%struct.shark_device = type { i32*, i32 }

@TB_LEN = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"shark2-write: %*ph\0A\00", align 1
@SHARK_OUT_EP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"write error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_tea5777*, i32)* @shark_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shark_write_reg(%struct.radio_tea5777* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radio_tea5777*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.shark_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radio_tea5777* %0, %struct.radio_tea5777** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %11 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %10, i32 0, i32 1
  %12 = load %struct.shark_device*, %struct.shark_device** %11, align 8
  store %struct.shark_device* %12, %struct.shark_device** %6, align 8
  %13 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %14 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @TB_LEN, align 4
  %17 = call i32 @memset(i32* %15, i32 0, i32 %16)
  %18 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %19 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 129, i32* %21, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %39, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 6
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 8
  %29 = sub nsw i32 40, %28
  %30 = ashr i32 %26, %29
  %31 = and i32 %30, 255
  %32 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %33 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %31, i32* %38, align 4
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* @debug, align 4
  %44 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %45 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %48 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @v4l2_dbg(i32 1, i32 %43, i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 7, i32* %49)
  %51 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %52 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %55 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SHARK_OUT_EP, align 4
  %58 = call i32 @usb_sndintpipe(i32 %56, i32 %57)
  %59 = load %struct.shark_device*, %struct.shark_device** %6, align 8
  %60 = getelementptr inbounds %struct.shark_device, %struct.shark_device* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @TB_LEN, align 4
  %63 = call i32 @usb_interrupt_msg(i32 %53, i32 %58, i32* %61, i32 %62, i32* %9, i32 1000)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %42
  %67 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %68 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @v4l2_err(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %66
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @usb_interrupt_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @v4l2_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
