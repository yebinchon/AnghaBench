; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_g_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_g_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.adv748x_hdmi = type { %struct.v4l2_dv_timings }
%struct.adv748x_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @adv748x_hdmi_g_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_g_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_dv_timings*, align 8
  %5 = alloca %struct.adv748x_hdmi*, align 8
  %6 = alloca %struct.adv748x_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev* %7)
  store %struct.adv748x_hdmi* %8, %struct.adv748x_hdmi** %5, align 8
  %9 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %5, align 8
  %10 = call %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi* %9)
  store %struct.adv748x_state* %10, %struct.adv748x_state** %6, align 8
  %11 = load %struct.adv748x_state*, %struct.adv748x_state** %6, align 8
  %12 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %4, align 8
  %15 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %5, align 8
  %16 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %15, i32 0, i32 0
  %17 = bitcast %struct.v4l2_dv_timings* %14 to i8*
  %18 = bitcast %struct.v4l2_dv_timings* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.adv748x_state*, %struct.adv748x_state** %6, align 8
  %20 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret i32 0
}

declare dso_local %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
