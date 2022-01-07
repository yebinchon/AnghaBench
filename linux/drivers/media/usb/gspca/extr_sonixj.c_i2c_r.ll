; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_i2c_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_r(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.sd*, %struct.sd** %7, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 130, label %14
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %3, %3, %3
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 144, i32* %15, align 16
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 145, i32* %17, align 16
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.sd*, %struct.sd** %7, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 4
  store i32 0, i32* %26, align 16
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 5
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 6
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 7
  store i32 16, i32* %29, align 4
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %32 = call i32 @i2c_w8(%struct.gspca_dev* %30, i32* %31)
  %33 = call i32 @msleep(i32 2)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = and i32 %35, 129
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 4
  %39 = or i32 %36, %38
  %40 = or i32 %39, 2
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 %40, i32* %41, align 16
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %42, align 8
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %45 = call i32 @i2c_w8(%struct.gspca_dev* %43, i32* %44)
  %46 = call i32 @msleep(i32 2)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %48 = call i32 @reg_r(%struct.gspca_dev* %47, i32 10, i32 5)
  ret void
}

declare dso_local i32 @i2c_w8(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
