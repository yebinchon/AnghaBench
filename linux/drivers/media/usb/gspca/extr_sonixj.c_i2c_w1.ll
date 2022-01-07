; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_i2c_w1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_i2c_w1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32*, i32 }
%struct.sd = type { i32, i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c_w1 [%02x] = %02x\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"i2c_w1 err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i8*, i8*)* @i2c_w1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_w1(%struct.gspca_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %96

16:                                               ; preds = %3
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = load i32, i32* @D_USBO, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @gspca_dbg(%struct.gspca_dev* %17, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  %22 = load %struct.sd*, %struct.sd** %7, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %30 [
    i32 130, label %25
    i32 128, label %25
    i32 129, label %25
  ]

25:                                               ; preds = %16, %16, %16
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 160, i32* %29, align 4
  br label %35

30:                                               ; preds = %16
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 161, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.sd*, %struct.sd** %7, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %38, i32* %42, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %46 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %44, i32* %48, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %50, i32* %54, align 4
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 0, i32* %58, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 0, i32* %62, align 4
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  store i32 0, i32* %66, align 4
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 7
  store i32 16, i32* %70, align 4
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @usb_sndctrlpipe(i32 %76, i32 0)
  %78 = load i32, i32* @USB_DIR_OUT, align 4
  %79 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @usb_control_msg(i32 %73, i32 %77, i32 8, i32 %82, i32 8, i32 0, i32* %85, i32 8, i32 500)
  store i32 %86, i32* %8, align 4
  %87 = call i32 @msleep(i32 2)
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %35
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %95 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %15, %90, %35
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
