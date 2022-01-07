; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_find_mode_by_ival.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_find_mode_by_ival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7251_mode_info = type { i64, i64, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32 }
%struct.ov7251 = type { %struct.ov7251_mode_info* }

@ov7251_mode_info_data = common dso_local global %struct.ov7251_mode_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ov7251_mode_info* (%struct.ov7251*, %struct.v4l2_fract*)* @ov7251_find_mode_by_ival to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ov7251_mode_info* @ov7251_find_mode_by_ival(%struct.ov7251* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.ov7251*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca %struct.ov7251_mode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ov7251* %0, %struct.ov7251** %3, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %12 = load %struct.ov7251*, %struct.ov7251** %3, align 8
  %13 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %12, i32 0, i32 0
  %14 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %13, align 8
  store %struct.ov7251_mode_info* %14, %struct.ov7251_mode_info** %5, align 8
  %15 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %16 = call i32 @avg_fps(%struct.v4l2_fract* %15)
  store i32 %16, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %63, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** @ov7251_mode_info_data, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.ov7251_mode_info* %19)
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %17
  %23 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %5, align 8
  %24 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** @ov7251_mode_info_data, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %26, i64 %28
  %30 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %25, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %22
  %34 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** %5, align 8
  %35 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** @ov7251_mode_info_data, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %37, i64 %39
  %41 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %36, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %22
  br label %63

45:                                               ; preds = %33
  %46 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** @ov7251_mode_info_data, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %46, i64 %48
  %50 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %49, i32 0, i32 2
  %51 = call i32 @avg_fps(%struct.v4l2_fract* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sub i32 %52, %53
  %55 = call i32 @abs(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %45
  br label %63

63:                                               ; preds = %62, %44
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %17

66:                                               ; preds = %17
  %67 = load %struct.ov7251_mode_info*, %struct.ov7251_mode_info** @ov7251_mode_info_data, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ov7251_mode_info, %struct.ov7251_mode_info* %67, i64 %69
  ret %struct.ov7251_mode_info* %70
}

declare dso_local i32 @avg_fps(%struct.v4l2_fract*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov7251_mode_info*) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
