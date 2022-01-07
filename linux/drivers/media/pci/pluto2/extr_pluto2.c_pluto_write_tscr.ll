; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_write_tscr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_write_tscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32 }

@TSCR_ADEF = common dso_local global i32 0, align 4
@TS_DMA_PACKETS = common dso_local global i32 0, align 4
@REG_TSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pluto*, i32)* @pluto_write_tscr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_write_tscr(%struct.pluto* %0, i32 %1) #0 {
  %3 = alloca %struct.pluto*, align 8
  %4 = alloca i32, align 4
  store %struct.pluto* %0, %struct.pluto** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @TSCR_ADEF, align 4
  %6 = xor i32 %5, -1
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @TS_DMA_PACKETS, align 4
  %10 = sdiv i32 %9, 2
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.pluto*, %struct.pluto** %3, align 8
  %14 = load i32, i32* @REG_TSCR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pluto_writereg(%struct.pluto* %13, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @pluto_writereg(%struct.pluto*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
