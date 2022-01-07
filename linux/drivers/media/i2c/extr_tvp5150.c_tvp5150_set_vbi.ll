; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_set_vbi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_set_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_vbi_ram_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i32 }

@V4L2_STD_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"VBI can't be configured without knowing number of lines\0A\00", align 1
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@vbi_ram_default = common dso_local global %struct.i2c_vbi_ram_value* null, align 8
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32, i32)* @tvp5150_set_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_set_vbi(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tvp5150*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.i2c_vbi_ram_value*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %19 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %18)
  store %struct.tvp5150* %19, %struct.tvp5150** %12, align 8
  %20 = load %struct.tvp5150*, %struct.tvp5150** %12, align 8
  %21 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @V4L2_STD_ALL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %127

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @V4L2_STD_625_50, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 3
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 6
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 27
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i32 0, i32* %6, align 4
  br label %127

47:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %90, %47
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** @vbi_ram_default, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.i2c_vbi_ram_value* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %48
  %54 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** @vbi_ram_default, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %54, i64 %56
  store %struct.i2c_vbi_ram_value* %57, %struct.i2c_vbi_ram_value** %17, align 8
  %58 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %17, align 8
  %59 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %90

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %17, align 8
  %67 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %65, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %17, align 8
  %75 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %73, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.i2c_vbi_ram_value*, %struct.i2c_vbi_ram_value** %17, align 8
  %82 = getelementptr inbounds %struct.i2c_vbi_ram_value, %struct.i2c_vbi_ram_value* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %93

87:                                               ; preds = %79, %72, %64
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %87, %63
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %48

93:                                               ; preds = %86, %48
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 240
  %97 = or i32 %94, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 6
  %100 = shl i32 %99, 1
  %101 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, 1
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %93
  %107 = load %struct.tvp5150*, %struct.tvp5150** %12, align 8
  %108 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @regmap_write(i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %93
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load %struct.tvp5150*, %struct.tvp5150** %12, align 8
  %119 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @regmap_write(i32 %120, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %117, %113
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %46, %26
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_vbi_ram_value*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
