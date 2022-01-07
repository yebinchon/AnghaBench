; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_reg_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_reg_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.gspca_dev = type { i64* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"GET %02x 0000 %04x %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"reg_r %02x failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @reg_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sd*, %struct.sd** %4, align 8
  %10 = bitcast %struct.sd* %9 to %struct.gspca_dev*
  store %struct.gspca_dev* %10, %struct.gspca_dev** %6, align 8
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

17:                                               ; preds = %2
  %18 = load %struct.sd*, %struct.sd** %4, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %23 [
    i32 130, label %21
    i32 129, label %21
    i32 128, label %22
  ]

21:                                               ; preds = %17, %17
  store i32 3, i32* %8, align 4
  br label %24

22:                                               ; preds = %17
  store i32 11, i32* %8, align 4
  br label %24

23:                                               ; preds = %17
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %22, %21
  %25 = call i32 @udelay(i32 150)
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sd*, %struct.sd** %4, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_rcvctrlpipe(i32 %33, i32 0)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @USB_DIR_IN, align 4
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @usb_control_msg(i32 %29, i32 %34, i32 %35, i32 %40, i32 0, i32 %41, i32* %45, i32 1, i32 500)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %24
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %57 = load i32, i32* @D_USBI, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @gspca_dbg(%struct.gspca_dev* %56, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  br label %75

62:                                               ; preds = %24
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @gspca_err(%struct.gspca_dev* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.sd*, %struct.sd** %4, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %62, %49
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
