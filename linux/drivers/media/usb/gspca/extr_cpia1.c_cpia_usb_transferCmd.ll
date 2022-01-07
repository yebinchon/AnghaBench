; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_cpia_usb_transferCmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_cpia_usb_transferCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }

@DATA_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@DATA_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unexpected first byte of command: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"usb_control_msg %02x, error %d\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32*)* @cpia_usb_transferCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_usb_transferCmd(%struct.gspca_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 6
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 7
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = or i32 %13, %17
  store i32 %18, i32* %9, align 4
  store i32 3, i32* %10, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DATA_IN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvctrlpipe(i32 %27, i32 0)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %6, align 4
  br label %57

34:                                               ; preds = %2
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DATA_OUT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @usb_sndctrlpipe(i32 %43, i32 0)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %46 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %6, align 4
  br label %56

48:                                               ; preds = %34
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gspca_err(%struct.gspca_dev* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %24
  br label %58

58:                                               ; preds = %104, %57
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 %69, %73
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = or i32 %77, %81
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @usb_control_msg(i32 %61, i32 %62, i32 %65, i32 %66, i32 %74, i32 %82, i32 %85, i32 %86, i32 1000)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %58
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %58
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @EPIPE, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %10, align 4
  br label %58

107:                                              ; preds = %101, %96
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  br label %113

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %48
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
