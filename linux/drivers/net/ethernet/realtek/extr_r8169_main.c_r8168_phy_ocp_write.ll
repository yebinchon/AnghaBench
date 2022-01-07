; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168_phy_ocp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_r8168_phy_ocp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@GPHY_OCP = common dso_local global i32 0, align 4
@OCPAR_FLAG = common dso_local global i32 0, align 4
@rtl_ocp_gphy_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, i32, i32)* @r8168_phy_ocp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8168_phy_ocp_write(%struct.rtl8169_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtl8169_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @rtl_ocp_reg_failure(%struct.rtl8169_private* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %24

12:                                               ; preds = %3
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %14 = load i32, i32* @GPHY_OCP, align 4
  %15 = load i32, i32* @OCPAR_FLAG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 15
  %18 = or i32 %15, %17
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @RTL_W32(%struct.rtl8169_private* %13, i32 %14, i32 %20)
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %4, align 8
  %23 = call i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private* %22, i32* @rtl_ocp_gphy_cond, i32 25, i32 10)
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @rtl_ocp_reg_failure(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
