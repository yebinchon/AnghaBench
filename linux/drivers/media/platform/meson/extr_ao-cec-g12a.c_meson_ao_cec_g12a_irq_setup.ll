; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_g12a_device = type { i32 }

@CECB_INTR_DONE = common dso_local global i32 0, align 4
@CECB_INTR_EOM = common dso_local global i32 0, align 4
@CECB_INTR_NACK = common dso_local global i32 0, align 4
@CECB_INTR_ARB_LOSS = common dso_local global i32 0, align 4
@CECB_INTR_INITIATOR_ERR = common dso_local global i32 0, align 4
@CECB_INTR_FOLLOWER_ERR = common dso_local global i32 0, align 4
@CECB_INTR_MASKN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_ao_cec_g12a_device*, i32)* @meson_ao_cec_g12a_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_ao_cec_g12a_irq_setup(%struct.meson_ao_cec_g12a_device* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.meson_ao_cec_g12a_device* %0, %struct.meson_ao_cec_g12a_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CECB_INTR_DONE, align 4
  %7 = load i32, i32* @CECB_INTR_EOM, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CECB_INTR_NACK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CECB_INTR_ARB_LOSS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CECB_INTR_INITIATOR_ERR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CECB_INTR_FOLLOWER_ERR, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %3, align 8
  %18 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CECB_INTR_MASKN_REG, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = call i32 @regmap_write(i32 %19, i32 %20, i32 %27)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
