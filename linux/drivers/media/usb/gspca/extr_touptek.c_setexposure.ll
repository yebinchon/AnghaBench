; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_touptek.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid width %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"exposure: 0x%04X ms\0A\0A\00", align 1
@REG_COARSE_INTEGRATION_TIME_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 800
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 5
  store i32 %15, i32* %5, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 1600
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 3
  store i32 %21, i32* %5, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 3264
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 %26, 3
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %5, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @gspca_err(%struct.gspca_dev* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %52

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %19
  br label %39

39:                                               ; preds = %38, %13
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = load i32, i32* @D_STREAM, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @gspca_dbg(%struct.gspca_dev* %40, i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @REG_COARSE_INTEGRATION_TIME_, align 4
  %47 = call i32 @reg_w(%struct.gspca_dev* %44, i32 %45, i32 %46)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @REG_COARSE_INTEGRATION_TIME_, align 4
  %51 = call i32 @reg_w(%struct.gspca_dev* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %29
  ret void
}

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
