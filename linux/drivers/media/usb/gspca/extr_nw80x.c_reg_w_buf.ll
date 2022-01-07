; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_reg_w_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_reg_w_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@I2C0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64*)* @reg_w_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_buf(%struct.gspca_dev* %0, i64* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64* %1, i64** %4, align 8
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i64*, i64** %4, align 8
  %9 = getelementptr inbounds i64, i64* %8, i32 1
  store i64* %9, i64** %4, align 8
  %10 = load i64, i64* %8, align 8
  %11 = shl i64 %10, 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %14, i64** %4, align 8
  %15 = load i64, i64* %13, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i64*, i64** %4, align 8
  %21 = getelementptr inbounds i64, i64* %20, i32 1
  store i64* %21, i64** %4, align 8
  %22 = load i64, i64* %20, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  br label %50

27:                                               ; preds = %7
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 -3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @I2C0, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i64*, i64** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @reg_w(%struct.gspca_dev* %34, i32 %35, i64* %36, i32 %37)
  br label %45

39:                                               ; preds = %27
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i64*, i64** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @i2c_w(%struct.gspca_dev* %40, i32 %41, i64* %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %6, align 4
  %47 = load i64*, i64** %4, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64* %49, i64** %4, align 8
  br label %7

50:                                               ; preds = %26
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i64*, i32) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
