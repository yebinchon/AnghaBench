; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_i2c_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"i2c_w error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"i2c_w reg %02x no response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*)* @i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_w(%struct.gspca_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @reg_w(%struct.gspca_dev* %6, i32 4288, i32* %7, i32 8)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %14 = call i32 @reg_r(%struct.gspca_dev* %13, i32 4288, i32 1)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %53

20:                                               ; preds = %12
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %36, %28
  br label %53

43:                                               ; preds = %20
  %44 = call i32 @msleep(i32 10)
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %42, %19
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
