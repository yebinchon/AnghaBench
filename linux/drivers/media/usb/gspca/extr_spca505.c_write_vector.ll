; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca505.c_write_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca505.c_write_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, [3 x i64]*)* @write_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vector(%struct.gspca_dev* %0, [3 x i64]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca [3 x i64]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store [3 x i64]* %1, [3 x i64]** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load [3 x i64]*, [3 x i64]** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 %11
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = load [3 x i64]*, [3 x i64]** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 %20
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load [3 x i64]*, [3 x i64]** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %24, i64 %26
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %27, i64 0, i64 2
  %29 = load i64, i64* %28, align 8
  %30 = load [3 x i64]*, [3 x i64]** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %30, i64 %32
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %33, i64 0, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @reg_write(%struct.gspca_dev* %17, i64 %23, i64 %29, i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %16
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %8

44:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @reg_write(%struct.gspca_dev*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
