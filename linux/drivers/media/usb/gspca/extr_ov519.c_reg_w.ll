; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_reg_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_reg_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.gspca_dev = type { i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SET %02x %04x %04x\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SET %02x 0000 %04x %02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"reg_w %02x failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*, i32, i32)* @reg_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w(%struct.sd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = bitcast %struct.sd* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sd*, %struct.sd** %4, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %97

18:                                               ; preds = %3
  %19 = call i32 @udelay(i32 150)
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %50 [
    i32 131, label %23
    i32 130, label %23
    i32 129, label %24
    i32 128, label %25
  ]

23:                                               ; preds = %18, %18
  store i32 2, i32* %9, align 4
  br label %51

24:                                               ; preds = %18
  store i32 10, i32* %9, align 4
  br label %25

25:                                               ; preds = %18, %24
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %27 = load i32, i32* @D_USBO, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @gspca_dbg(%struct.gspca_dev* %26, i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load %struct.sd*, %struct.sd** %4, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sd*, %struct.sd** %4, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @usb_sndctrlpipe(i32 %39, i32 0)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @USB_DIR_OUT, align 4
  %43 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @usb_control_msg(i32 %35, i32 %40, i32 %41, i32 %46, i32 %47, i32 %48, i32* null, i32 0, i32 500)
  store i32 %49, i32* %8, align 4
  br label %85

50:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %23
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %53 = load i32, i32* @D_USBO, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @gspca_dbg(%struct.gspca_dev* %52, i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.sd*, %struct.sd** %4, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %58, i32* %63, align 4
  %64 = load %struct.sd*, %struct.sd** %4, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sd*, %struct.sd** %4, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @usb_sndctrlpipe(i32 %71, i32 0)
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @USB_DIR_OUT, align 4
  %75 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.sd*, %struct.sd** %4, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @usb_control_msg(i32 %67, i32 %72, i32 %73, i32 %78, i32 0, i32 %79, i32* %83, i32 1, i32 500)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %51, %25
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @gspca_err(%struct.gspca_dev* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.sd*, %struct.sd** %4, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %17, %88, %85
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
