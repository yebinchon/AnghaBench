; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_ctlr_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_cafe-driver.c_cafe_ctlr_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32 }

@REG_GL_FCR = common dso_local global i32 0, align 4
@GFCR_GPIO_ON = common dso_local global i32 0, align 4
@REG_GL_GPIOR = common dso_local global i32 0, align 4
@GGPIO_OUT = common dso_local global i32 0, align 4
@GGPIO_VAL = common dso_local global i32 0, align 4
@REG_GPR = common dso_local global i32 0, align 4
@GPR_C1EN = common dso_local global i32 0, align 4
@GPR_C0EN = common dso_local global i32 0, align 4
@GPR_C0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcam_camera*)* @cafe_ctlr_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_ctlr_power_up(%struct.mcam_camera* %0) #0 {
  %2 = alloca %struct.mcam_camera*, align 8
  store %struct.mcam_camera* %0, %struct.mcam_camera** %2, align 8
  %3 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %4 = load i32, i32* @REG_GL_FCR, align 4
  %5 = load i32, i32* @GFCR_GPIO_ON, align 4
  %6 = call i32 @mcam_reg_write(%struct.mcam_camera* %3, i32 %4, i32 %5)
  %7 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %8 = load i32, i32* @REG_GL_GPIOR, align 4
  %9 = load i32, i32* @GGPIO_OUT, align 4
  %10 = load i32, i32* @GGPIO_VAL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @mcam_reg_write(%struct.mcam_camera* %7, i32 %8, i32 %11)
  %13 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %14 = load i32, i32* @REG_GPR, align 4
  %15 = load i32, i32* @GPR_C1EN, align 4
  %16 = load i32, i32* @GPR_C0EN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mcam_reg_write(%struct.mcam_camera* %13, i32 %14, i32 %17)
  %19 = load %struct.mcam_camera*, %struct.mcam_camera** %2, align 8
  %20 = load i32, i32* @REG_GPR, align 4
  %21 = load i32, i32* @GPR_C1EN, align 4
  %22 = load i32, i32* @GPR_C0EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GPR_C0, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @mcam_reg_write(%struct.mcam_camera* %19, i32 %20, i32 %25)
  ret i32 0
}

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
