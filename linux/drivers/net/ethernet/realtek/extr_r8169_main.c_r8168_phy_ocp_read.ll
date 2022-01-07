; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168_phy_ocp_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168_phy_ocp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@GPHY_OCP = common dso_local global i32 0, align 4
@rtl_ocp_gphy_cond = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, i32)* @r8168_phy_ocp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8168_phy_ocp_read(%struct.rtl8169_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @rtl_ocp_reg_failure(%struct.rtl8169_private* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %13 = load i32, i32* @GPHY_OCP, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 15
  %16 = call i32 @RTL_W32(%struct.rtl8169_private* %12, i32 %13, i32 %15)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %18 = call i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private* %17, i32* @rtl_ocp_gphy_cond, i32 25, i32 10)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %22 = load i32, i32* @GPHY_OCP, align 4
  %23 = call i32 @RTL_R32(%struct.rtl8169_private* %21, i32 %22)
  %24 = and i32 %23, 65535
  br label %28

25:                                               ; preds = %11
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %24, %20 ], [ %27, %25 ]
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @rtl_ocp_reg_failure(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i64 @rtl_udelay_loop_wait_high(%struct.rtl8169_private*, i32*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
