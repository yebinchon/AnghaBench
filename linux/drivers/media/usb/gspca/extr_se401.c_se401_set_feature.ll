; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_se401_set_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_se401_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32 }

@SE401_REQ_SET_EXT_FEATURE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"set feature failed sel %#04x param %#04x error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @se401_set_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se401_set_feature(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_sndctrlpipe(i32 %19, i32 0)
  %21 = load i32, i32* @SE401_REQ_SET_EXT_FEATURE, align 4
  %22 = load i32, i32* @USB_DIR_OUT, align 4
  %23 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @usb_control_msg(i32 %16, i32 %20, i32 %21, i32 %26, i32 %27, i32 %28, i32* null, i32 0, i32 1000)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %12, %32, %13
  ret void
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
