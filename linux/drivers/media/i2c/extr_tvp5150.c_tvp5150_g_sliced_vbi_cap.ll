; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_g_sliced_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_g_sliced_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_vbi_ram_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_cap = type { i32, i32** }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"g_sliced_vbi_cap\0A\00", align 1
@vbi_ram_default = common dso_local global %struct.i2c_vbi_ram_value* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_cap*)* @tvp5150_g_sliced_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_g_sliced_vbi_cap(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_cap* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_vbi_ram_value*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_cap* %1, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @debug, align 4
  %12 = call i32 @dev_dbg_lvl(i32 %10, i32 1, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %14 = call i32 @memset(%struct.v4l2_sliced_vbi_cap* %13, i32 0, i32 16)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %70, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** @vbi_ram_default, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.i2c_vbi_ram_value* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %15
  %21 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** @vbi_ram_default, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %21, i64 %23
  store %struct.i2c_vbi_ram_value* %24, %struct.i2c_vbi_ram_value** %7, align 8
  %25 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %26 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %70

31:                                               ; preds = %20
  %32 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %33 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %58, %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %39 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %37, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %36
  %44 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %45 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %47
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %7, align 8
  %63 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_sliced_vbi_cap*, %struct.v4l2_sliced_vbi_cap** %4, align 8
  %67 = getelementptr inbounds %struct.v4l2_sliced_vbi_cap, %struct.v4l2_sliced_vbi_cap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %61, %30
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %15

73:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @dev_dbg_lvl(i32, i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.v4l2_sliced_vbi_cap*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_vbi_ram_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
