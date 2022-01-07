; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vbi.c_cx8800_stop_vbi_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-vbi.c_cx8800_stop_vbi_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8800_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@MO_VID_DMACNTRL = common dso_local global i32 0, align 4
@VID_CAPTURE_CONTROL = common dso_local global i32 0, align 4
@MO_PCI_INTMSK = common dso_local global i32 0, align 4
@PCI_INT_VIDINT = common dso_local global i32 0, align 4
@MO_VID_INTMSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx8800_stop_vbi_dma(%struct.cx8800_dev* %0) #0 {
  %2 = alloca %struct.cx8800_dev*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  store %struct.cx8800_dev* %0, %struct.cx8800_dev** %2, align 8
  %4 = load %struct.cx8800_dev*, %struct.cx8800_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %4, i32 0, i32 0
  %6 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  store %struct.cx88_core* %6, %struct.cx88_core** %3, align 8
  %7 = load i32, i32* @MO_VID_DMACNTRL, align 4
  %8 = call i32 @cx_clear(i32 %7, i32 136)
  %9 = load i32, i32* @VID_CAPTURE_CONTROL, align 4
  %10 = call i32 @cx_clear(i32 %9, i32 24)
  %11 = load i32, i32* @MO_PCI_INTMSK, align 4
  %12 = load i32, i32* @PCI_INT_VIDINT, align 4
  %13 = call i32 @cx_clear(i32 %11, i32 %12)
  %14 = load i32, i32* @MO_VID_INTMSK, align 4
  %15 = call i32 @cx_clear(i32 %14, i32 983176)
  ret void
}

declare dso_local i32 @cx_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
