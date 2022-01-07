; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_set_flip_real.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_set_flip_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@S5K83A_PAGE_MAP = common dso_local global i32 0, align 4
@S5K83A_FLIP_MASK = common dso_local global i32 0, align 4
@S5K83A_FLIP = common dso_local global i32 0, align 4
@S5K83A_VFLIP_TUNE = common dso_local global i32 0, align 4
@S5K83A_HFLIP_TUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i64, i64)* @s5k83a_set_flip_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k83a_set_flip_real(%struct.gspca_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %10, align 8
  %13 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 5, i32* %13, align 4
  %14 = load %struct.sd*, %struct.sd** %10, align 8
  %15 = load i32, i32* @S5K83A_PAGE_MAP, align 4
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %17 = call i32 @m5602_write_sensor(%struct.sd* %14, i32 %15, i32* %16, i32 1)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %82

22:                                               ; preds = %3
  %23 = load i32, i32* @S5K83A_FLIP_MASK, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, 64
  br label %34

31:                                               ; preds = %22
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %30, %27 ], [ %33, %31 ]
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %35, i32* %36, align 4
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, 128
  br label %46

43:                                               ; preds = %34
  %44 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %42, %39 ], [ %45, %43 ]
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sd*, %struct.sd** %10, align 8
  %50 = load i32, i32* @S5K83A_FLIP, align 4
  %51 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %52 = call i32 @m5602_write_sensor(%struct.sd* %49, i32 %50, i32* %51, i32 1)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %82

57:                                               ; preds = %46
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 11, i32 10
  %62 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = load %struct.sd*, %struct.sd** %10, align 8
  %64 = load i32, i32* @S5K83A_VFLIP_TUNE, align 4
  %65 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %66 = call i32 @m5602_write_sensor(%struct.sd* %63, i32 %64, i32* %65, i32 1)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %57
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 10, i32 11
  %76 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.sd*, %struct.sd** %10, align 8
  %78 = load i32, i32* @S5K83A_HFLIP_TUNE, align 4
  %79 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %80 = call i32 @m5602_write_sensor(%struct.sd* %77, i32 %78, i32* %79, i32 1)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %69, %55, %20
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
