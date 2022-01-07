; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca561.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 60, i32* %8, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %11 = call i32 @reg_w_val(%struct.gspca_dev* %10, i32 34820, i32 146)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @reg_w_val(%struct.gspca_dev* %12, i32 34817, i32 %13)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, 1
  %18 = call i32 @reg_w_val(%struct.gspca_dev* %15, i32 34818, i32 %17)
  br label %19

19:                                               ; preds = %48, %3
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %21 = call i32 @reg_r(%struct.gspca_dev* %20, i32 34819, i32 1)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %19
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %30 = call i32 @reg_r(%struct.gspca_dev* %29, i32 34816, i32 1)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %37 = call i32 @reg_r(%struct.gspca_dev* %36, i32 34821, i32 1)
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %39, %44
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %19
  %47 = call i32 @msleep(i32 10)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %19, label %52

52:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
