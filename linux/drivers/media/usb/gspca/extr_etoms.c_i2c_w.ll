; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_i2c_w.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_etoms.c_i2c_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@ET_I2C_BASE = common dso_local global i64 0, align 8
@ET_I2C_COUNT = common dso_local global i64 0, align 8
@ET_I2C_REG = common dso_local global i64 0, align 8
@ET_I2C_DATA0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32*, i32, i32)* @i2c_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_w(%struct.gspca_dev* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %13 = load i64, i64* @ET_I2C_BASE, align 8
  %14 = call i32 @reg_w_val(%struct.gspca_dev* %12, i64 %13, i32 64)
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 7
  %17 = shl i32 %16, 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, 3
  %20 = or i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %22 = load i64, i64* @ET_I2C_COUNT, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @reg_w_val(%struct.gspca_dev* %21, i64 %22, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %26 = load i64, i64* @ET_I2C_REG, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @reg_w_val(%struct.gspca_dev* %25, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %33, %5
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %9, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %35 = load i64, i64* @ET_I2C_DATA0, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @reg_w_val(%struct.gspca_dev* %34, i64 %38, i32 %43)
  br label %29

45:                                               ; preds = %29
  ret i32 0
}

declare dso_local i32 @reg_w_val(%struct.gspca_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
