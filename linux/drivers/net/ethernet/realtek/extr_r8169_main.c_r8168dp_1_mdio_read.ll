; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168dp_1_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168dp_1_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@OCPDR_READ_CMD = common dso_local global i32 0, align 4
@OCPAR = common dso_local global i32 0, align 4
@OCPAR_GPHY_READ_CMD = common dso_local global i32 0, align 4
@EPHY_RXER_NUM = common dso_local global i32 0, align 4
@rtl_ocpar_cond = common dso_local global i32 0, align 4
@OCPDR = common dso_local global i32 0, align 4
@OCPDR_DATA_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @r8168dp_1_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8168dp_1_mdio_read(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @OCPDR_READ_CMD, align 4
  %8 = call i32 @r8168dp_1_mdio_access(%struct.rtl8169_private* %5, i32 %6, i32 %7)
  %9 = call i32 @mdelay(i32 1)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %11 = load i32, i32* @OCPAR, align 4
  %12 = load i32, i32* @OCPAR_GPHY_READ_CMD, align 4
  %13 = call i32 @RTL_W32(%struct.rtl8169_private* %10, i32 %11, i32 %12)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %15 = load i32, i32* @EPHY_RXER_NUM, align 4
  %16 = call i32 @RTL_W32(%struct.rtl8169_private* %14, i32 %15, i32 0)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %18 = call i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private* %17, i32* @rtl_ocpar_cond, i32 1000, i32 100)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %22 = load i32, i32* @OCPDR, align 4
  %23 = call i32 @RTL_R32(%struct.rtl8169_private* %21, i32 %22)
  %24 = load i32, i32* @OCPDR_DATA_MASK, align 4
  %25 = and i32 %23, %24
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i32 [ %25, %20 ], [ %28, %26 ]
  ret i32 %30
}

declare dso_local i32 @r8168dp_1_mdio_access(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private*, i32*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
