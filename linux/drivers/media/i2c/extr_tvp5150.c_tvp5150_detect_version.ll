; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_detect_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_detect_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tvp5150 = type { i32, i32, i32, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TVP5150_MSB_DEV_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"reading ID registers failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"tvp%04x (%u.%u) chip found @ 0x%02x (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"tvp5150a detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"tvp5150am1 detected.\0A\00", align 1
@TVP5150_REV_SELECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"tvp5151 detected.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"*** unknown tvp%04x chip detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tvp5150*)* @tvp5150_detect_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_detect_version(%struct.tvp5150* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tvp5150*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.tvp5150* %0, %struct.tvp5150** %3, align 8
  %8 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %9 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %8, i32 0, i32 3
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %13 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TVP5150_MSB_DEV_ID, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %17 = call i32 @regmap_bulk_read(i32 %14, i32 %15, i32* %16, i32 4)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %123

26:                                               ; preds = %1
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = shl i32 %28, 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %29, %31
  %33 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %34 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %37, %39
  %41 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %42 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %47 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 1
  %57 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, ...) @dev_info(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50, i32 %52, i32 %56, i32 %61)
  %63 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %64 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 20816
  br i1 %66, label %67, label %77

67:                                               ; preds = %26
  %68 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %69 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 801
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @dev_info(i32 %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %122

77:                                               ; preds = %67, %26
  %78 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %79 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 20816
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %84 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1024
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @dev_info(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %93 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TVP5150_REV_SELECT, align 4
  %96 = call i32 @regmap_write(i32 %94, i32 %95, i32 0)
  br label %121

97:                                               ; preds = %82, %77
  %98 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %99 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 20817
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %104 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 256
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %109 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_info(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %120

112:                                              ; preds = %102, %97
  %113 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.tvp5150*, %struct.tvp5150** %3, align 8
  %117 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_info(i32 %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %112, %107
  br label %121

121:                                              ; preds = %120, %87
  br label %122

122:                                              ; preds = %121, %72
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %122, %20
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
