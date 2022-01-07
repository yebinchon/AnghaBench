; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_mchip_vrj_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_mchip_vrj_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCHIP_VRJ_BUS_MODE = common dso_local global i32 0, align 4
@MCHIP_VRJ_SIGNAL_ACTIVE_LEVEL = common dso_local global i32 0, align 4
@MCHIP_VRJ_PDAT_USE = common dso_local global i32 0, align 4
@MCHIP_VRJ_IRQ_FLAG = common dso_local global i32 0, align 4
@MCHIP_VRJ_MODE_SPECIFY = common dso_local global i32 0, align 4
@MCHIP_VRJ_NUM_LINES = common dso_local global i32 0, align 4
@MCHIP_VRJ_NUM_PIXELS = common dso_local global i32 0, align 4
@MCHIP_VRJ_NUM_COMPONENTS = common dso_local global i32 0, align 4
@MCHIP_VRJ_LIMIT_COMPRESSED_LO = common dso_local global i32 0, align 4
@MCHIP_VRJ_LIMIT_COMPRESSED_HI = common dso_local global i32 0, align 4
@MCHIP_VRJ_COMP_DATA_FORMAT = common dso_local global i32 0, align 4
@MCHIP_VRJ_RESTART_INTERVAL = common dso_local global i32 0, align 4
@MCHIP_VRJ_SOF1 = common dso_local global i32 0, align 4
@MCHIP_VRJ_SOF2 = common dso_local global i32 0, align 4
@MCHIP_VRJ_SOF3 = common dso_local global i32 0, align 4
@MCHIP_VRJ_SOF4 = common dso_local global i32 0, align 4
@MCHIP_VRJ_SOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mchip_vrj_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mchip_vrj_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @MCHIP_VRJ_BUS_MODE, align 4
  %4 = call i32 @mchip_set(i32 %3, i32 5)
  %5 = load i32, i32* @MCHIP_VRJ_SIGNAL_ACTIVE_LEVEL, align 4
  %6 = call i32 @mchip_set(i32 %5, i32 31)
  %7 = load i32, i32* @MCHIP_VRJ_PDAT_USE, align 4
  %8 = call i32 @mchip_set(i32 %7, i32 1)
  %9 = load i32, i32* @MCHIP_VRJ_IRQ_FLAG, align 4
  %10 = call i32 @mchip_set(i32 %9, i32 160)
  %11 = load i32, i32* @MCHIP_VRJ_MODE_SPECIFY, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @mchip_set(i32 %11, i32 %12)
  %14 = load i32, i32* @MCHIP_VRJ_NUM_LINES, align 4
  %15 = call i32 (...) @mchip_vsize()
  %16 = call i32 @mchip_set(i32 %14, i32 %15)
  %17 = load i32, i32* @MCHIP_VRJ_NUM_PIXELS, align 4
  %18 = call i32 (...) @mchip_hsize()
  %19 = call i32 @mchip_set(i32 %17, i32 %18)
  %20 = load i32, i32* @MCHIP_VRJ_NUM_COMPONENTS, align 4
  %21 = call i32 @mchip_set(i32 %20, i32 27)
  %22 = load i32, i32* @MCHIP_VRJ_LIMIT_COMPRESSED_LO, align 4
  %23 = call i32 @mchip_set(i32 %22, i32 65535)
  %24 = load i32, i32* @MCHIP_VRJ_LIMIT_COMPRESSED_HI, align 4
  %25 = call i32 @mchip_set(i32 %24, i32 65535)
  %26 = load i32, i32* @MCHIP_VRJ_COMP_DATA_FORMAT, align 4
  %27 = call i32 @mchip_set(i32 %26, i32 12)
  %28 = load i32, i32* @MCHIP_VRJ_RESTART_INTERVAL, align 4
  %29 = call i32 @mchip_set(i32 %28, i32 0)
  %30 = load i32, i32* @MCHIP_VRJ_SOF1, align 4
  %31 = call i32 @mchip_set(i32 %30, i32 1537)
  %32 = load i32, i32* @MCHIP_VRJ_SOF2, align 4
  %33 = call i32 @mchip_set(i32 %32, i32 5378)
  %34 = load i32, i32* @MCHIP_VRJ_SOF3, align 4
  %35 = call i32 @mchip_set(i32 %34, i32 5379)
  %36 = load i32, i32* @MCHIP_VRJ_SOF4, align 4
  %37 = call i32 @mchip_set(i32 %36, i32 5526)
  %38 = load i32, i32* @MCHIP_VRJ_SOS, align 4
  %39 = call i32 @mchip_set(i32 %38, i32 3792)
  %40 = call i32 (...) @mchip_load_tables()
  ret void
}

declare dso_local i32 @mchip_set(i32, i32) #1

declare dso_local i32 @mchip_vsize(...) #1

declare dso_local i32 @mchip_hsize(...) #1

declare dso_local i32 @mchip_load_tables(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
