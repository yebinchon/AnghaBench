; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_try_frame_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_noon010pc30.c_noon010_try_frame_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noon010_frmsize = type { i64, i64 }
%struct.v4l2_mbus_framefmt = type { i64, i64 }

@noon010_sizes = common dso_local global %struct.noon010_frmsize* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_mbus_framefmt*, %struct.noon010_frmsize**)* @noon010_try_frame_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noon010_try_frame_size(%struct.v4l2_mbus_framefmt* %0, %struct.noon010_frmsize** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.noon010_frmsize**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.noon010_frmsize*, align 8
  %9 = alloca %struct.noon010_frmsize*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %4, align 8
  store %struct.noon010_frmsize** %1, %struct.noon010_frmsize*** %5, align 8
  store i32 -1, i32* %6, align 4
  %11 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** @noon010_sizes, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.noon010_frmsize* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** @noon010_sizes, align 8
  %14 = getelementptr inbounds %struct.noon010_frmsize, %struct.noon010_frmsize* %13, i64 0
  store %struct.noon010_frmsize* %14, %struct.noon010_frmsize** %8, align 8
  store %struct.noon010_frmsize* null, %struct.noon010_frmsize** %9, align 8
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %8, align 8
  %21 = getelementptr inbounds %struct.noon010_frmsize, %struct.noon010_frmsize* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = call i32 @abs(i64 %26)
  %28 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %8, align 8
  %29 = getelementptr inbounds %struct.noon010_frmsize, %struct.noon010_frmsize* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i32 @abs(i64 %34)
  %36 = add nsw i32 %27, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %19
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %8, align 8
  store %struct.noon010_frmsize* %42, %struct.noon010_frmsize** %9, align 8
  br label %43

43:                                               ; preds = %40, %19
  %44 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %8, align 8
  %45 = getelementptr inbounds %struct.noon010_frmsize, %struct.noon010_frmsize* %44, i32 1
  store %struct.noon010_frmsize* %45, %struct.noon010_frmsize** %8, align 8
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %9, align 8
  %48 = icmp ne %struct.noon010_frmsize* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %9, align 8
  %51 = getelementptr inbounds %struct.noon010_frmsize, %struct.noon010_frmsize* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %9, align 8
  %56 = getelementptr inbounds %struct.noon010_frmsize, %struct.noon010_frmsize* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.noon010_frmsize**, %struct.noon010_frmsize*** %5, align 8
  %61 = icmp ne %struct.noon010_frmsize** %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load %struct.noon010_frmsize*, %struct.noon010_frmsize** %9, align 8
  %64 = load %struct.noon010_frmsize**, %struct.noon010_frmsize*** %5, align 8
  store %struct.noon010_frmsize* %63, %struct.noon010_frmsize** %64, align 8
  br label %65

65:                                               ; preds = %62, %49
  store i32 0, i32* %3, align 4
  br label %69

66:                                               ; preds = %46
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ARRAY_SIZE(%struct.noon010_frmsize*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
