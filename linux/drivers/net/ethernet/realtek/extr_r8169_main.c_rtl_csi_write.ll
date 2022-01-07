; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_csi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_csi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CSIDR = common dso_local global i32 0, align 4
@CSIAR = common dso_local global i32 0, align 4
@CSIAR_WRITE_CMD = common dso_local global i32 0, align 4
@CSIAR_ADDR_MASK = common dso_local global i32 0, align 4
@CSIAR_BYTE_ENABLE = common dso_local global i32 0, align 4
@rtl_csiar_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32, i32)* @rtl_csi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_csi_write(%struct.rtl8169_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %9 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PCI_FUNC(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %15 = load i32, i32* @CSIDR, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @RTL_W32(%struct.rtl8169_private* %14, i32 %15, i32 %16)
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %19 = load i32, i32* @CSIAR, align 4
  %20 = load i32, i32* @CSIAR_WRITE_CMD, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CSIAR_ADDR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = or i32 %20, %23
  %25 = load i32, i32* @CSIAR_BYTE_ENABLE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %26, %28
  %30 = call i32 @RTL_W32(%struct.rtl8169_private* %18, i32 %19, i32 %29)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %32 = call i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private* %31, i32* @rtl_csiar_cond, i32 10, i32 100)
  ret void
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
