; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_disable_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_disable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32 }

@REG_TSCR = common dso_local global i32 0, align 4
@TSCR_DEM = common dso_local global i32 0, align 4
@TSCR_MSKO = common dso_local global i32 0, align 4
@TSCR_MSKA = common dso_local global i32 0, align 4
@TSCR_MSKL = common dso_local global i32 0, align 4
@TSCR_IACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pluto*)* @pluto_disable_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_disable_irqs(%struct.pluto* %0) #0 {
  %2 = alloca %struct.pluto*, align 8
  %3 = alloca i32, align 4
  store %struct.pluto* %0, %struct.pluto** %2, align 8
  %4 = load %struct.pluto*, %struct.pluto** %2, align 8
  %5 = load i32, i32* @REG_TSCR, align 4
  %6 = call i32 @pluto_readreg(%struct.pluto* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @TSCR_DEM, align 4
  %8 = load i32, i32* @TSCR_MSKO, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TSCR_MSKA, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TSCR_MSKL, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @TSCR_IACK, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.pluto*, %struct.pluto** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pluto_write_tscr(%struct.pluto* %19, i32 %20)
  ret void
}

declare dso_local i32 @pluto_readreg(%struct.pluto*, i32) #1

declare dso_local i32 @pluto_write_tscr(%struct.pluto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
