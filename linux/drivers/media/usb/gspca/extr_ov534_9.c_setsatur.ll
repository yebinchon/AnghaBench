; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_setsatur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_setsatur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@setsatur.matrix = internal constant [5 x [2 x i32]] [[2 x i32] [i32 20, i32 56], [2 x i32] [i32 30, i32 84], [2 x i32] [i32 40, i32 112], [2 x i32] [i32 50, i32 140], [2 x i32] [i32 72, i32 144]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i64)* @setsatur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsatur(%struct.gspca_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @setsatur.matrix, i64 0, i64 %8
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @setsatur.matrix, i64 0, i64 %12
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @sccb_write(%struct.gspca_dev* %19, i32 79, i32 %20)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sccb_write(%struct.gspca_dev* %22, i32 80, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = call i32 @sccb_write(%struct.gspca_dev* %25, i32 81, i32 0)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @sccb_write(%struct.gspca_dev* %27, i32 82, i32 %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sccb_write(%struct.gspca_dev* %30, i32 83, i32 %31)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @sccb_write(%struct.gspca_dev* %33, i32 84, i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = call i32 @sccb_write(%struct.gspca_dev* %36, i32 88, i32 26)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = call i32 @sccb_read(%struct.gspca_dev* %38, i32 65)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @sccb_write(%struct.gspca_dev* %40, i32 255, i32 0)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @sccb_write(%struct.gspca_dev* %42, i32 65, i32 %43)
  ret void
}

declare dso_local i32 @sccb_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sccb_read(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
