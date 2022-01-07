; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_stop_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_stop_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@VCR_CAPINTC = common dso_local global i32 0, align 4
@VCR_CI_ENABLE = common dso_local global i32 0, align 4
@S_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_camera*)* @viacam_stop_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viacam_stop_engine(%struct.via_camera* %0) #0 {
  %2 = alloca %struct.via_camera*, align 8
  store %struct.via_camera* %0, %struct.via_camera** %2, align 8
  %3 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %4 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %9 = call i32 @viacam_int_disable(%struct.via_camera* %8)
  %10 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %11 = load i32, i32* @VCR_CAPINTC, align 4
  %12 = load i32, i32* @VCR_CI_ENABLE, align 4
  %13 = call i32 @viacam_write_reg_mask(%struct.via_camera* %10, i32 %11, i32 0, i32 %12)
  %14 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %15 = load i32, i32* @VCR_CAPINTC, align 4
  %16 = call i32 @viacam_read_reg(%struct.via_camera* %14, i32 %15)
  %17 = load i32, i32* @S_IDLE, align 4
  %18 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %19 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %21 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock_irq(i32* %23)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @viacam_int_disable(%struct.via_camera*) #1

declare dso_local i32 @viacam_write_reg_mask(%struct.via_camera*, i32, i32, i32) #1

declare dso_local i32 @viacam_read_reg(%struct.via_camera*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
