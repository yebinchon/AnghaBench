; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts524a_read_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rts5249.c_rts524a_read_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_pcr*, i32, i32*)* @rts524a_read_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts524a_read_phy(%struct.rtsx_pcr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rtsx_pcr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 127
  %13 = or i32 %12, 64
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %13, %10 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  %18 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @__rtsx_pci_read_phy_register(%struct.rtsx_pcr* %18, i32 %19, i32* %20)
  ret i32 %21
}

declare dso_local i32 @__rtsx_pci_read_phy_register(%struct.rtsx_pcr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
