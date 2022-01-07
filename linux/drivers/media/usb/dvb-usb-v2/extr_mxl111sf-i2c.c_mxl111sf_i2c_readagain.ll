; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_readagain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_readagain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"read %d bytes\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"error!\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%02x\09 %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, i64, i64*)* @mxl111sf_i2c_readagain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_readagain(%struct.mxl111sf_state* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mxl111sf_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [26 x i64], align 16
  %8 = alloca [24 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %14

14:                                               ; preds = %23, %3
  %15 = load i64, i64* %10, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* %9, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %9, align 8
  %20 = icmp slt i64 %18, 5
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %25 = call i64 @mxl111sf_i2c_check_fifo(%struct.mxl111sf_state* %24)
  store i64 %25, i64* %10, align 8
  br label %14

26:                                               ; preds = %21
  %27 = getelementptr inbounds [26 x i64], [26 x i64]* %7, i64 0, i64 0
  store i64 221, i64* %27, align 16
  %28 = getelementptr inbounds [26 x i64], [26 x i64]* %7, i64 0, i64 1
  store i64 0, i64* %28, align 8
  store i64 2, i64* %9, align 8
  br label %29

29:                                               ; preds = %35, %26
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %30, 26
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds [26 x i64], [26 x i64]* %7, i64 0, i64 %33
  store i64 254, i64* %34, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %29

38:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %56, %38
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = mul nsw i64 %44, 3
  %46 = add nsw i64 2, %45
  %47 = getelementptr inbounds [26 x i64], [26 x i64]* %7, i64 0, i64 %46
  store i64 12, i64* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = mul nsw i64 %48, 3
  %50 = add nsw i64 3, %49
  %51 = getelementptr inbounds [26 x i64], [26 x i64]* %7, i64 0, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = mul nsw i64 %52, 3
  %54 = add nsw i64 4, %53
  %55 = getelementptr inbounds [26 x i64], [26 x i64]* %7, i64 0, i64 %54
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %43
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %61 = getelementptr inbounds [26 x i64], [26 x i64]* %7, i64 0, i64 0
  %62 = getelementptr inbounds [24 x i64], [24 x i64]* %8, i64 0, i64 0
  %63 = call i32 @mxl111sf_i2c_get_data(%struct.mxl111sf_state* %60, i32 0, i64* %61, i64* %62)
  %64 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %4, align 8
  %65 = call i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state* %64)
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %98

69:                                               ; preds = %59
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %94, %69
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i64, i64* %9, align 8
  %76 = mul nsw i64 %75, 3
  %77 = add nsw i64 %76, 1
  %78 = getelementptr inbounds [24 x i64], [24 x i64]* %8, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* %9, align 8
  %84 = mul nsw i64 %83, 3
  %85 = add nsw i64 %84, 1
  %86 = getelementptr inbounds [24 x i64], [24 x i64]* %8, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = mul nsw i64 %88, 3
  %90 = add nsw i64 %89, 2
  %91 = getelementptr inbounds [24 x i64], [24 x i64]* %8, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i8*, ...) @mxl_i2c(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %87, i64 %92)
  br label %94

94:                                               ; preds = %74
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %70

97:                                               ; preds = %70
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %67
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @mxl_i2c(i8*, ...) #1

declare dso_local i64 @mxl111sf_i2c_check_fifo(%struct.mxl111sf_state*) #1

declare dso_local i32 @mxl111sf_i2c_get_data(%struct.mxl111sf_state*, i32, i64*, i64*) #1

declare dso_local i32 @mxl111sf_i2c_check_status(%struct.mxl111sf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
