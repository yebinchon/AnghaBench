; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_apply_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7670.c_ov7670_apply_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov7670_info = type { i32, i8, %struct.TYPE_3__*, i64, %struct.ov7670_win_size* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8 }
%struct.ov7670_win_size = type { i8, %struct.TYPE_4__*, i32, i32, i32, i32 }

@REG_COM7 = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@COM10_VS_NEG = common dso_local global i8 0, align 1
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@COM10_HREF_REV = common dso_local global i8 0, align 1
@COM10_PCLK_HB = common dso_local global i8 0, align 1
@REG_COM10 = common dso_local global i32 0, align 4
@REG_CLKRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov7670_apply_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_apply_fmt(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.ov7670_info*, align 8
  %5 = alloca %struct.ov7670_win_size*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %9)
  store %struct.ov7670_info* %10, %struct.ov7670_info** %4, align 8
  %11 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %12 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %11, i32 0, i32 4
  %13 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %12, align 8
  store %struct.ov7670_win_size* %13, %struct.ov7670_win_size** %5, align 8
  store i8 0, i8* %7, align 1
  %14 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %15 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %6, align 1
  %22 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %5, align 8
  %23 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %6, align 1
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %31 = load i32, i32* @REG_COM7, align 4
  %32 = load i8, i8* %6, align 1
  %33 = call i32 @ov7670_write(%struct.v4l2_subdev* %30, i32 %31, i8 zeroext %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %2, align 4
  br label %147

38:                                               ; preds = %1
  %39 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %40 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i8, i8* @COM10_VS_NEG, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %7, align 1
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %54 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i8, i8* @COM10_HREF_REV, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %7, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %7, align 1
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %68 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i8, i8* @COM10_PCLK_HB, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %7, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %7, align 1
  br label %78

78:                                               ; preds = %71, %66
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %80 = load i32, i32* @REG_COM10, align 4
  %81 = load i8, i8* %7, align 1
  %82 = call i32 @ov7670_write(%struct.v4l2_subdev* %79, i32 %80, i8 zeroext %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %147

87:                                               ; preds = %78
  %88 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %89 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %90 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 1
  %95 = call i32 @ov7670_write_array(%struct.v4l2_subdev* %88, %struct.TYPE_4__* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %147

100:                                              ; preds = %87
  %101 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %102 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %5, align 8
  %103 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %5, align 8
  %106 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %5, align 8
  %109 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %5, align 8
  %112 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ov7670_set_hw(%struct.v4l2_subdev* %101, i32 %104, i32 %107, i32 %110, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %100
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %2, align 4
  br label %147

119:                                              ; preds = %100
  %120 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %5, align 8
  %121 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = icmp ne %struct.TYPE_4__* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %126 = load %struct.ov7670_win_size*, %struct.ov7670_win_size** %5, align 8
  %127 = getelementptr inbounds %struct.ov7670_win_size, %struct.ov7670_win_size* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = call i32 @ov7670_write_array(%struct.v4l2_subdev* %125, %struct.TYPE_4__* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %147

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %119
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %137 = load i32, i32* @REG_CLKRC, align 4
  %138 = load %struct.ov7670_info*, %struct.ov7670_info** %4, align 8
  %139 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %138, i32 0, i32 1
  %140 = load i8, i8* %139, align 4
  %141 = call i32 @ov7670_write(%struct.v4l2_subdev* %136, i32 %137, i8 zeroext %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %144, %132, %117, %98, %85, %36
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local i32 @ov7670_write_array(%struct.v4l2_subdev*, %struct.TYPE_4__*) #1

declare dso_local i32 @ov7670_set_hw(%struct.v4l2_subdev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
