; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_cfg_video_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-capture.c_camif_cfg_video_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_vp*)* @camif_cfg_video_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_cfg_video_path(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %3 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %4 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %5 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %4, i32 0, i32 0
  %6 = call i32 @s3c_camif_get_scaler_config(%struct.camif_vp* %3, i32* %5)
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %9 = call i32 @camif_hw_set_scaler(%struct.camif_vp* %8)
  %10 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %11 = call i32 @camif_hw_set_flip(%struct.camif_vp* %10)
  %12 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %13 = call i32 @camif_hw_set_target_format(%struct.camif_vp* %12)
  %14 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %15 = call i32 @camif_hw_set_output_dma(%struct.camif_vp* %14)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @s3c_camif_get_scaler_config(%struct.camif_vp*, i32*) #1

declare dso_local i32 @camif_hw_set_scaler(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_flip(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_target_format(%struct.camif_vp*) #1

declare dso_local i32 @camif_hw_set_output_dma(%struct.camif_vp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
