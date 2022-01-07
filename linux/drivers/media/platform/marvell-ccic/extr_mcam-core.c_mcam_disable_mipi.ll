; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_disable_mipi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_disable_mipi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32 }

@REG_CSI2_CTRL0 = common dso_local global i32 0, align 4
@REG_CSI2_DPHY3 = common dso_local global i32 0, align 4
@REG_CSI2_DPHY5 = common dso_local global i32 0, align 4
@REG_CSI2_DPHY6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*)* @mcam_disable_mipi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_disable_mipi(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %3 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %4 = load i32, i32* @REG_CSI2_CTRL0, align 4
  %5 = call i32 @mcam_reg_write(%struct.mcam_camera* %3, i32 %4, i32 0)
  %6 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %7 = load i32, i32* @REG_CSI2_DPHY3, align 4
  %8 = call i32 @mcam_reg_write(%struct.mcam_camera* %6, i32 %7, i32 0)
  %9 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %10 = load i32, i32* @REG_CSI2_DPHY5, align 4
  %11 = call i32 @mcam_reg_write(%struct.mcam_camera* %9, i32 %10, i32 0)
  %12 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %13 = load i32, i32* @REG_CSI2_DPHY6, align 4
  %14 = call i32 @mcam_reg_write(%struct.mcam_camera* %12, i32 %13, i32 0)
  %15 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %16 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  ret void
}

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
