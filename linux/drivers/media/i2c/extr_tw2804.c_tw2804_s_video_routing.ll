; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_s_video_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw2804.c_tw2804_s_video_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tw2804 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"channel %d is not between 1 and 4!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"initializing TW2804 channel %d\0A\00", align 1
@global_registers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"error initializing TW2804 global registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@channel_registers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"error initializing TW2804 channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @tw2804_s_video_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw2804_s_video_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tw2804*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %14 = call %struct.tw2804* @to_state(%struct.v4l2_subdev* %13)
  store %struct.tw2804* %14, %struct.tw2804** %10, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %80

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %23 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %127

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %40 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %44 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %48 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %36
  %52 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %53 = load i32, i32* @global_registers, align 4
  %54 = call i64 @write_regs(%struct.i2c_client* %52, i32 %53, i32 0)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %127

62:                                               ; preds = %51, %36
  %63 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %64 = load i32, i32* @channel_registers, align 4
  %65 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %66 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @write_regs(%struct.i2c_client* %63, i32 %64, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %74 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %127

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %19, %4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %127

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %89 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %127

93:                                               ; preds = %86
  %94 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %95 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %96 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @read_reg(%struct.i2c_client* %94, i32 34, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = and i32 %105, -5
  store i32 %106, i32* %12, align 4
  br label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %114 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write_reg(%struct.i2c_client* %111, i32 34, i32 %112, i32 %115)
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %110, %93
  %118 = load i32, i32* %12, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.tw2804*, %struct.tw2804** %10, align 8
  %123 = getelementptr inbounds %struct.tw2804, %struct.tw2804* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %5, align 4
  br label %127

126:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %124, %92, %83, %70, %56, %29
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.tw2804* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @write_regs(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @read_reg(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @write_reg(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
