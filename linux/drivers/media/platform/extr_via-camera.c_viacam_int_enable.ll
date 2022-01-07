; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_viacam_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { i32 }

@VCR_INTCTRL = common dso_local global i32 0, align 4
@VCR_IC_INTEN = common dso_local global i32 0, align 4
@VCR_IC_EAV = common dso_local global i32 0, align 4
@VCR_IC_EVBI = common dso_local global i32 0, align 4
@VCR_IC_FFULL = common dso_local global i32 0, align 4
@VDE_I_C0AVEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via_camera*)* @viacam_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viacam_int_enable(%struct.via_camera* %0) #0 {
  %2 = alloca %struct.via_camera*, align 8
  store %struct.via_camera* %0, %struct.via_camera** %2, align 8
  %3 = load %struct.via_camera*, %struct.via_camera** %2, align 8
  %4 = load i32, i32* @VCR_INTCTRL, align 4
  %5 = load i32, i32* @VCR_IC_INTEN, align 4
  %6 = load i32, i32* @VCR_IC_EAV, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @VCR_IC_EVBI, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VCR_IC_FFULL, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @viacam_write_reg(%struct.via_camera* %3, i32 %4, i32 %11)
  %13 = load i32, i32* @VDE_I_C0AVEN, align 4
  %14 = call i32 @viafb_irq_enable(i32 %13)
  ret void
}

declare dso_local i32 @viacam_write_reg(%struct.via_camera*, i32, i32) #1

declare dso_local i32 @viafb_irq_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
