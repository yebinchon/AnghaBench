; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_readw_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_readw_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnet = type { i32 }

@MACREG_ADDR = common dso_local global i32 0, align 4
@MACREG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnet*, i32)* @dnet_readw_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_readw_mac(%struct.dnet* %0, i32 %1) #0 {
  %3 = alloca %struct.dnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dnet* %0, %struct.dnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dnet*, %struct.dnet** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MACREG_ADDR, align 4
  %9 = call i32 @dnet_writel(%struct.dnet* %6, i32 %7, i32 %8)
  %10 = call i32 @ndelay(i32 500)
  %11 = load %struct.dnet*, %struct.dnet** %3, align 8
  %12 = load i32, i32* @MACREG_DATA, align 4
  %13 = call i32 @dnet_readl(%struct.dnet* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  ret i32 %14
}

declare dso_local i32 @dnet_writel(%struct.dnet*, i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dnet_readl(%struct.dnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
