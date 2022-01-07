; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca501.c_write_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca501.c_write_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Reg write failed for 0x%02x,0x%02x,0x%02x\0A\00", align 1
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

8:                                                ; preds = %79, %2
  %9 = load [3 x i64]*, [3 x i64]** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 %11
  %13 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %8
  %17 = load [3 x i64]*, [3 x i64]** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 %19
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %20, i64 0, i64 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load [3 x i64]*, [3 x i64]** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %25, i64 %27
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %28, i64 0, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %24, %16, %8
  %33 = phi i1 [ true, %16 ], [ true, %8 ], [ %31, %24 ]
  br i1 %33, label %34, label %82

34:                                               ; preds = %32
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %36 = load [3 x i64]*, [3 x i64]** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %36, i64 %38
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %39, i64 0, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load [3 x i64]*, [3 x i64]** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %42, i64 %44
  %46 = getelementptr inbounds [3 x i64], [3 x i64]* %45, i64 0, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = load [3 x i64]*, [3 x i64]** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %48, i64 %50
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %51, i64 0, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @reg_write(%struct.gspca_dev* %35, i64 %41, i64 %47, i64 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %34
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %59 = load [3 x i64]*, [3 x i64]** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x i64], [3 x i64]* %59, i64 %61
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %62, i64 0, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load [3 x i64]*, [3 x i64]** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i64], [3 x i64]* %65, i64 %67
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %68, i64 0, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = load [3 x i64]*, [3 x i64]** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i64], [3 x i64]* %71, i64 %73
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %74, i64 0, i64 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @gspca_err(%struct.gspca_dev* %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %70, i64 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %34
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %8

82:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %57
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @reg_write(%struct.gspca_dev*, i64, i64, i64) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
