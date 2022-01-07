; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_ezusb_write_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_ezusb_write_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32*, %struct.go7007_usb* }
%struct.go7007_usb = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"WriteInterrupt: %04x %04x\0A\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@HPI_STATUS_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"device is hung, status reg = 0x%04x\0A\00", align 1
@INT_PARAM_ADDR = common dso_local global i32 0, align 4
@INT_INDEX_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"error in WriteInterrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32, i32)* @go7007_usb_ezusb_write_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_ezusb_write_interrupt(%struct.go7007* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.go7007_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.go7007*, %struct.go7007** %5, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 2
  %15 = load %struct.go7007_usb*, %struct.go7007_usb** %14, align 8
  store %struct.go7007_usb* %15, %struct.go7007_usb** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 500, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %56, %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %59

22:                                               ; preds = %19
  %23 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %24 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %27 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %31 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @HPI_STATUS_ADDR, align 4
  %36 = load %struct.go7007*, %struct.go7007** %5, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 20, i32 %34, i32 0, i32 %35, i32* %38, i32 4, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %59

44:                                               ; preds = %22
  %45 = load %struct.go7007*, %struct.go7007** %5, align 8
  %46 = getelementptr inbounds %struct.go7007, %struct.go7007* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %59

54:                                               ; preds = %44
  %55 = call i32 @msleep(i32 10)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %19

59:                                               ; preds = %53, %43, %19
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %109

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 100
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.go7007*, %struct.go7007** %5, align 8
  %68 = getelementptr inbounds %struct.go7007, %struct.go7007* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store i32 -1, i32* %4, align 4
  br label %116

72:                                               ; preds = %63
  %73 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %74 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %77 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_sndctrlpipe(i32 %78, i32 0)
  %80 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %81 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @INT_PARAM_ADDR, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @usb_control_msg(i32 %75, i32 %79, i32 18, i32 %82, i32 %83, i32 %84, i32* null, i32 0, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  br label %109

90:                                               ; preds = %72
  %91 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %92 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  %95 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @usb_sndctrlpipe(i32 %96, i32 0)
  %98 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %99 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @INT_INDEX_ADDR, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @usb_control_msg(i32 %93, i32 %97, i32 18, i32 %100, i32 %101, i32 %102, i32* null, i32 0, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  br label %109

108:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %116

109:                                              ; preds = %107, %89, %62
  %110 = load %struct.go7007*, %struct.go7007** %5, align 8
  %111 = getelementptr inbounds %struct.go7007, %struct.go7007* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %109, %108, %66
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
