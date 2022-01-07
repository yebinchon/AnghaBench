; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8169_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@PHYAR = common dso_local global i32 0, align 4
@rtl_phyar_cond = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @r8169_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8169_mdio_read(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %7 = load i32, i32* @PHYAR, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 31
  %10 = shl i32 %9, 16
  %11 = or i32 0, %10
  %12 = call i32 @RTL_W32(%struct.rtl8169_private* %6, i32 %7, i32 %11)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %14 = call i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private* %13, i32* @rtl_phyar_cond, i32 25, i32 20)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %18 = load i32, i32* @PHYAR, align 4
  %19 = call i32 @RTL_R32(%struct.rtl8169_private* %17, i32 %18)
  %20 = and i32 %19, 65535
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %20, %16 ], [ %23, %21 ]
  store i32 %25, i32* %5, align 4
  %26 = call i32 @udelay(i32 20)
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private*, i32*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
