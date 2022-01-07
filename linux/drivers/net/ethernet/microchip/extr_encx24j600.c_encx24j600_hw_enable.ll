; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i32 }

@EIR = common dso_local global i32 0, align 4
@PCFULIF = common dso_local global i32 0, align 4
@RXABTIF = common dso_local global i32 0, align 4
@TXABTIF = common dso_local global i32 0, align 4
@TXIF = common dso_local global i32 0, align 4
@PKTIF = common dso_local global i32 0, align 4
@LINKIF = common dso_local global i32 0, align 4
@EIE = common dso_local global i32 0, align 4
@PCFULIE = common dso_local global i32 0, align 4
@RXABTIE = common dso_local global i32 0, align 4
@TXABTIE = common dso_local global i32 0, align 4
@TXIE = common dso_local global i32 0, align 4
@PKTIE = common dso_local global i32 0, align 4
@LINKIE = common dso_local global i32 0, align 4
@INTIE = common dso_local global i32 0, align 4
@ENABLERX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*)* @encx24j600_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_hw_enable(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  %3 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %4 = load i32, i32* @EIR, align 4
  %5 = load i32, i32* @PCFULIF, align 4
  %6 = load i32, i32* @RXABTIF, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @TXABTIF, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TXIF, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PKTIF, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @LINKIF, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %3, i32 %4, i32 %15)
  %17 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %18 = load i32, i32* @EIE, align 4
  %19 = load i32, i32* @PCFULIE, align 4
  %20 = load i32, i32* @RXABTIE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TXABTIE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @TXIE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PKTIE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LINKIE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @INTIE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %17, i32 %18, i32 %31)
  %33 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %34 = load i32, i32* @ENABLERX, align 4
  %35 = call i32 @encx24j600_cmd(%struct.encx24j600_priv* %33, i32 %34)
  %36 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %37 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  ret void
}

declare dso_local i32 @encx24j600_clr_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_cmd(%struct.encx24j600_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
