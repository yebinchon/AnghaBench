; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_ctlr_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mcam_ctlr_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32, i32 (%struct.mcam_camera*)* }

@REG_CTRL1 = common dso_local global i32 0, align 4
@C1_PWRDWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcam_camera*)* @mcam_ctlr_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcam_ctlr_power_down(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  %3 = alloca i64, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %4 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %5 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %9 = load i32, i32* @REG_CTRL1, align 4
  %10 = load i32, i32* @C1_PWRDWN, align 4
  %11 = call i32 @mcam_reg_set_bit(%struct.mcam_camera* %8, i32 %9, i32 %10)
  %12 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %13 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %12, i32 0, i32 1
  %14 = load i32 (%struct.mcam_camera*)*, i32 (%struct.mcam_camera*)** %13, align 8
  %15 = icmp ne i32 (%struct.mcam_camera*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %18 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %17, i32 0, i32 1
  %19 = load i32 (%struct.mcam_camera*)*, i32 (%struct.mcam_camera*)** %18, align 8
  %20 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %21 = call i32 %19(%struct.mcam_camera* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %24 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mcam_reg_set_bit(%struct.mcam_camera*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
