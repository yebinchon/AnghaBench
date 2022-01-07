; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c___find_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/m5mols/extr_m5mols_core.c___find_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m5mols_resolution = type { i32, i32, i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i64, i32 }

@m5mols_reg_res = common dso_local global %struct.m5mols_resolution* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*, i32*, i32*)* @__find_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__find_resolution(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.m5mols_resolution*, align 8
  %11 = alloca %struct.m5mols_resolution*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** @m5mols_reg_res, align 8
  %17 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %16, i64 0
  store %struct.m5mols_resolution* %17, %struct.m5mols_resolution** %10, align 8
  store %struct.m5mols_resolution* null, %struct.m5mols_resolution** %11, align 8
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @__find_restype(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** @m5mols_reg_res, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.m5mols_resolution* %22)
  store i32 %23, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  br label %24

24:                                               ; preds = %59, %4
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %13, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %10, align 8
  %31 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %10, align 8
  %36 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = call i32 @abs(i64 %41)
  %43 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %10, align 8
  %44 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = call i32 @abs(i64 %49)
  %51 = add nsw i32 %42, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %10, align 8
  store %struct.m5mols_resolution* %57, %struct.m5mols_resolution** %11, align 8
  br label %58

58:                                               ; preds = %55, %34
  br label %59

59:                                               ; preds = %58, %28
  %60 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %10, align 8
  %61 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %60, i32 1
  store %struct.m5mols_resolution* %61, %struct.m5mols_resolution** %10, align 8
  br label %24

62:                                               ; preds = %24
  %63 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %11, align 8
  %64 = icmp ne %struct.m5mols_resolution* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %11, align 8
  %67 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %11, align 8
  %72 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.m5mols_resolution*, %struct.m5mols_resolution** %11, align 8
  %77 = getelementptr inbounds %struct.m5mols_resolution, %struct.m5mols_resolution* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %5, align 4
  br label %85

82:                                               ; preds = %62
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %65
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @__find_restype(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.m5mols_resolution*) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
