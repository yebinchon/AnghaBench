; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_csi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_csi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CSIAR = common dso_local global i32 0, align 4
@CSIAR_ADDR_MASK = common dso_local global i32 0, align 4
@CSIAR_BYTE_ENABLE = common dso_local global i32 0, align 4
@rtl_csiar_cond = common dso_local global i32 0, align 4
@CSIDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @rtl_csi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_csi_read(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %7 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @PCI_FUNC(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %13 = load i32, i32* @CSIAR, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CSIAR_ADDR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %16, %18
  %20 = load i32, i32* @CSIAR_BYTE_ENABLE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @RTL_W32(%struct.rtl8169_private* %12, i32 %13, i32 %21)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %24 = call i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private* %23, i32* @rtl_csiar_cond, i32 10, i32 100)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %28 = load i32, i32* @CSIDR, align 4
  %29 = call i32 @RTL_R32(%struct.rtl8169_private* %27, i32 %28)
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ -1, %30 ]
  ret i32 %32
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private*, i32*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
