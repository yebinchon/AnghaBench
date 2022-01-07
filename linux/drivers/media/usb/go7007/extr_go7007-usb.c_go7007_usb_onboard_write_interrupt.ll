; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_onboard_write_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_onboard_write_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32*, i32, %struct.go7007_usb* }
%struct.go7007_usb = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"WriteInterrupt: %04x %04x\0A\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"error in WriteInterrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32, i32)* @go7007_usb_onboard_write_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_onboard_write_interrupt(%struct.go7007* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.go7007_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.go7007*, %struct.go7007** %5, align 8
  %12 = getelementptr inbounds %struct.go7007, %struct.go7007* %11, i32 0, i32 2
  %13 = load %struct.go7007_usb*, %struct.go7007_usb** %12, align 8
  store %struct.go7007_usb* %13, %struct.go7007_usb** %8, align 8
  store i32 500, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 255
  %19 = load %struct.go7007*, %struct.go7007** %5, align 8
  %20 = getelementptr inbounds %struct.go7007, %struct.go7007* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  %25 = load %struct.go7007*, %struct.go7007** %5, align 8
  %26 = getelementptr inbounds %struct.go7007, %struct.go7007* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 255
  %31 = load %struct.go7007*, %struct.go7007** %5, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 8
  %37 = load %struct.go7007*, %struct.go7007** %5, align 8
  %38 = getelementptr inbounds %struct.go7007, %struct.go7007* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %36, i32* %40, align 4
  %41 = load %struct.go7007*, %struct.go7007** %5, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  store i32 0, i32* %44, align 4
  %45 = load %struct.go7007*, %struct.go7007** %5, align 8
  %46 = getelementptr inbounds %struct.go7007, %struct.go7007* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  store i32 0, i32* %48, align 4
  %49 = load %struct.go7007*, %struct.go7007** %5, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 0, i32* %52, align 4
  %53 = load %struct.go7007*, %struct.go7007** %5, align 8
  %54 = getelementptr inbounds %struct.go7007, %struct.go7007* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 0, i32* %56, align 4
  %57 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %58 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %61 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usb_sndctrlpipe(i32 %62, i32 2)
  %64 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %65 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.go7007*, %struct.go7007** %5, align 8
  %68 = getelementptr inbounds %struct.go7007, %struct.go7007* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @usb_control_msg(i32 %59, i32 %63, i32 0, i32 %66, i32 21930, i32 61680, i32* %69, i32 8, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %3
  %75 = load %struct.go7007*, %struct.go7007** %5, align 8
  %76 = getelementptr inbounds %struct.go7007, %struct.go7007* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
