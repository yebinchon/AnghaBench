; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe.c_vpbe_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpbe_device = type { i32, i32, %struct.vpbe_enc_mode_info, %struct.osd_state*, %struct.vpbe_config* }
%struct.vpbe_enc_mode_info = type { i32, i32, i32, %struct.v4l2_dv_timings, i32, i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.osd_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)* }
%struct.vpbe_config = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.vpbe_enc_mode_info* }

@EINVAL = common dso_local global i32 0, align 4
@VPBE_ENC_STD = common dso_local global i32 0, align 4
@VPBE_ENC_DV_TIMINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpbe_device*, %struct.vpbe_enc_mode_info*)* @vpbe_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_set_mode(%struct.vpbe_device* %0, %struct.vpbe_enc_mode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpbe_device*, align 8
  %5 = alloca %struct.vpbe_enc_mode_info*, align 8
  %6 = alloca %struct.vpbe_enc_mode_info*, align 8
  %7 = alloca %struct.vpbe_config*, align 8
  %8 = alloca %struct.v4l2_dv_timings, align 4
  %9 = alloca %struct.osd_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vpbe_device* %0, %struct.vpbe_device** %4, align 8
  store %struct.vpbe_enc_mode_info* %1, %struct.vpbe_enc_mode_info** %5, align 8
  store %struct.vpbe_enc_mode_info* null, %struct.vpbe_enc_mode_info** %6, align 8
  %12 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %13 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %12, i32 0, i32 4
  %14 = load %struct.vpbe_config*, %struct.vpbe_config** %13, align 8
  store %struct.vpbe_config* %14, %struct.vpbe_config** %7, align 8
  %15 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %16 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %5, align 8
  %19 = icmp ne %struct.vpbe_enc_mode_info* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %5, align 8
  %22 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %143

28:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %99, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %32 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %30, %38
  br i1 %39, label %40, label %102

40:                                               ; preds = %29
  %41 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %5, align 8
  %42 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %45 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %43, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %98, label %59

59:                                               ; preds = %40
  %60 = load %struct.vpbe_config*, %struct.vpbe_config** %7, align 8
  %61 = getelementptr inbounds %struct.vpbe_config, %struct.vpbe_config* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %67, i64 %69
  store %struct.vpbe_enc_mode_info* %70, %struct.vpbe_enc_mode_info** %6, align 8
  %71 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %72 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VPBE_ENC_STD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %59
  %78 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %79 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %80 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @vpbe_s_std(%struct.vpbe_device* %78, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %143

83:                                               ; preds = %59
  %84 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %85 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @VPBE_ENC_DV_TIMINGS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %92 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %91, i32 0, i32 3
  %93 = bitcast %struct.v4l2_dv_timings* %8 to i8*
  %94 = bitcast %struct.v4l2_dv_timings* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  %95 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %96 = call i32 @vpbe_s_dv_timings(%struct.vpbe_device* %95, %struct.v4l2_dv_timings* %8)
  store i32 %96, i32* %3, align 4
  br label %143

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %40
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %29

102:                                              ; preds = %29
  %103 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %104 = icmp ne %struct.vpbe_enc_mode_info* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %143

108:                                              ; preds = %102
  %109 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %110 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %109, i32 0, i32 1
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %113 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %112, i32 0, i32 3
  %114 = load %struct.osd_state*, %struct.osd_state** %113, align 8
  store %struct.osd_state* %114, %struct.osd_state** %9, align 8
  %115 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %116 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %115, i32 0, i32 2
  %117 = load %struct.vpbe_enc_mode_info*, %struct.vpbe_enc_mode_info** %6, align 8
  %118 = bitcast %struct.vpbe_enc_mode_info* %116 to i8*
  %119 = bitcast %struct.vpbe_enc_mode_info* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 4 %119, i64 24, i1 false)
  %120 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %121 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %122, align 8
  %124 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %125 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %126 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 %123(%struct.osd_state* %124, i32 %128)
  %130 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %131 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32 (%struct.osd_state*, i32)*, i32 (%struct.osd_state*, i32)** %132, align 8
  %134 = load %struct.osd_state*, %struct.osd_state** %9, align 8
  %135 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %136 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.vpbe_enc_mode_info, %struct.vpbe_enc_mode_info* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 %133(%struct.osd_state* %134, i32 %138)
  %140 = load %struct.vpbe_device*, %struct.vpbe_device** %4, align 8
  %141 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %140, i32 0, i32 1
  %142 = call i32 @mutex_unlock(i32* %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %108, %105, %90, %77, %25
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @vpbe_s_std(%struct.vpbe_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vpbe_s_dv_timings(%struct.vpbe_device*, %struct.v4l2_dv_timings*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
