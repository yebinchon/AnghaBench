; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_ent_sd_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vimc/extr_vimc-common.c_vimc_ent_sd_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vimc_ent_device = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vimc_ent_sd_unregister(%struct.vimc_ent_device* %0, %struct.v4l2_subdev* %1) #0 {
  %3 = alloca %struct.vimc_ent_device*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  store %struct.vimc_ent_device* %0, %struct.vimc_ent_device** %3, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %4, align 8
  %5 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %3, align 8
  %6 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @media_entity_cleanup(i32 %7)
  %9 = load %struct.vimc_ent_device*, %struct.vimc_ent_device** %3, align 8
  %10 = getelementptr inbounds %struct.vimc_ent_device, %struct.vimc_ent_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vimc_pads_cleanup(i32 %11)
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %13)
  ret void
}

declare dso_local i32 @media_entity_cleanup(i32) #1

declare dso_local i32 @vimc_pads_cleanup(i32) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
