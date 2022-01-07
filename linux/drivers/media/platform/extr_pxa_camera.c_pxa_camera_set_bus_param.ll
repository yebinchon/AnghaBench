; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_set_bus_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_set_bus_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_mbus_config = type { i64, i32 }

@V4L2_MBUS_PARALLEL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_mbus_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Flags incompatible: camera 0x%x, host 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@PXA_CAMERA_HSP = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@PXA_CAMERA_VSP = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@PXA_CAMERA_PCP = common dso_local global i32 0, align 4
@s_mbus_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"camera s_mbus_config(0x%lx) returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_camera_dev*)* @pxa_camera_set_bus_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_set_bus_param(%struct.pxa_camera_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_camera_dev*, align 8
  %4 = alloca %struct.v4l2_mbus_config, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %4, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %4, i32 0, i32 1
  %11 = load i32, i32* @V4L2_MBUS_PARALLEL, align 4
  store i32 %11, i32* %10, align 8
  %12 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %20 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_platform_param(%struct.pxa_camera_dev* %19, i32 %26, i64* %6)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %176

32:                                               ; preds = %1
  %33 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %34 = load i32, i32* @video, align 4
  %35 = load i32, i32* @g_mbus_config, align 4
  %36 = call i32 @sensor_call(%struct.pxa_camera_dev* %33, i32 %34, i32 %35, %struct.v4l2_mbus_config* %4)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @pxa_mbus_config_compatible(%struct.v4l2_mbus_config* %4, i64 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %46 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %45)
  %47 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %4, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %176

53:                                               ; preds = %39
  br label %64

54:                                               ; preds = %32
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ENOIOCTLCMD, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %176

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %78 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PXA_CAMERA_HSP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 8
  %85 = xor i64 %84, -1
  %86 = load i64, i64* %7, align 8
  %87 = and i64 %86, %85
  store i64 %87, i64* %7, align 8
  br label %93

88:                                               ; preds = %76
  %89 = load i64, i64* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 8
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %88, %83
  br label %94

94:                                               ; preds = %93, %71, %64
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %106 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PXA_CAMERA_VSP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 8
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %7, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %7, align 8
  br label %121

116:                                              ; preds = %104
  %117 = load i64, i64* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 8
  %118 = xor i64 %117, -1
  %119 = load i64, i64* %7, align 8
  %120 = and i64 %119, %118
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %116, %111
  br label %122

122:                                              ; preds = %121, %99, %94
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %134 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PXA_CAMERA_PCP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 8
  %141 = xor i64 %140, -1
  %142 = load i64, i64* %7, align 8
  %143 = and i64 %142, %141
  store i64 %143, i64* %7, align 8
  br label %149

144:                                              ; preds = %132
  %145 = load i64, i64* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 8
  %146 = xor i64 %145, -1
  %147 = load i64, i64* %7, align 8
  %148 = and i64 %147, %146
  store i64 %148, i64* %7, align 8
  br label %149

149:                                              ; preds = %144, %139
  br label %150

150:                                              ; preds = %149, %127, %122
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %4, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %154 = load i32, i32* @video, align 4
  %155 = load i32, i32* @s_mbus_config, align 4
  %156 = call i32 @sensor_call(%struct.pxa_camera_dev* %153, i32 %154, i32 %155, %struct.v4l2_mbus_config* %4)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @ENOIOCTLCMD, align 4
  %162 = sub nsw i32 0, %161
  %163 = icmp ne i32 %160, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %166 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %165)
  %167 = load i64, i64* %7, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @dev_dbg(i32 %166, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %167, i32 %168)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %176

171:                                              ; preds = %159, %150
  %172 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %3, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @pxa_camera_setup_cicr(%struct.pxa_camera_dev* %172, i64 %173, i32 %174)
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %171, %164, %59, %44, %30
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @test_platform_param(%struct.pxa_camera_dev*, i32, i64*) #1

declare dso_local i32 @sensor_call(%struct.pxa_camera_dev*, i32, i32, %struct.v4l2_mbus_config*) #1

declare dso_local i64 @pxa_mbus_config_compatible(%struct.v4l2_mbus_config*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64, i64) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @pxa_camera_setup_cicr(%struct.pxa_camera_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
