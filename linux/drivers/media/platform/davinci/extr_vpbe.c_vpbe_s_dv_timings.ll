; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, i32, i32, %struct.TYPE_6__, %struct.osd_state*, i64, i64*, %struct.vpbe_config* }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.osd_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)* }
%struct.vpbe_config = type { %struct.vpbe_output* }
%struct.vpbe_output = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.v4l2_dv_timings = type { i32 }

@V4L2_OUT_CAP_DV_TIMINGS = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@VPBE_ENC_DV_TIMINGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_dv_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, %struct.v4l2_dv_timings*)* @vpbe_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_s_dv_timings(%struct.vpbe_device* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.vpbe_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpbe_output*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.osd_state*, align 8
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %13 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %14 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %13, i32 0, i32 7
  %15 = load %struct.vpbe_config*, %struct.vpbe_config** %14, align 8
  store %struct.vpbe_config* %15, %struct.vpbe_config** %6, align 8
  %16 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %17 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  %20 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %19, i32 0, i32 0
  %21 = load %struct.vpbe_output*, %struct.vpbe_output** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %21, i64 %23
  store %struct.vpbe_output* %24, %struct.vpbe_output** %8, align 8
  %25 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %26 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.vpbe_config*, %struct.vpbe_config** %6, align 8
  %29 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %28, i32 0, i32 0
  %30 = load %struct.vpbe_output*, %struct.vpbe_output** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %30, i64 %32
  %34 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @V4L2_OUT_CAP_DV_TIMINGS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @ENODATA, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %158

43:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %47 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %52 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VPBE_ENC_DV_TIMINGS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %50
  %62 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %63 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %70 = call i32 @memcmp(i32* %68, %struct.v4l2_dv_timings* %69, i32 4)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %77

73:                                               ; preds = %61, %50
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %44

77:                                               ; preds = %72, %44
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %80 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %158

86:                                               ; preds = %77
  %87 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %88 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %87, i32 0, i32 3
  %89 = load %struct.vpbe_output*, %struct.vpbe_output** %8, align 8
  %90 = getelementptr inbounds %struct.vpbe_output, %struct.vpbe_output* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = bitcast %struct.TYPE_6__* %88 to i8*
  %96 = bitcast %struct.TYPE_6__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false)
  %97 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %98 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %97, i32 0, i32 2
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %101 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %100, i32 0, i32 6
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @video, align 4
  %108 = load i32, i32* @s_dv_timings, align 4
  %109 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %110 = call i32 @v4l2_subdev_call(i64 %106, i32 %107, i32 %108, %struct.v4l2_dv_timings* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %86
  %114 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %115 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %113
  %119 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %120 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @video, align 4
  %123 = load i32, i32* @s_dv_timings, align 4
  %124 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %125 = call i32 @v4l2_subdev_call(i64 %121, i32 %122, i32 %123, %struct.v4l2_dv_timings* %124)
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %118, %113, %86
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %126
  %130 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %131 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %130, i32 0, i32 4
  %132 = load %struct.osd_state*, %struct.osd_state** %131, align 8
  store %struct.osd_state* %132, %struct.osd_state** %12, align 8
  %133 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %134 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %135, align 8
  %137 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %138 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %139 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 %136(%struct.osd_state* %137, i32 %141)
  %143 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %144 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %145, align 8
  %147 = load %struct.osd_state*, %struct.osd_state** %12, align 8
  %148 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %149 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 %146(%struct.osd_state* %147, i32 %151)
  br label %153

153:                                              ; preds = %129, %126
  %154 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %155 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %154, i32 0, i32 2
  %156 = call i32 @mutex_unlock(i32* %155)
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %83, %40
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @memcmp(i32*, %struct.v4l2_dv_timings*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i64, i32, i32, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
