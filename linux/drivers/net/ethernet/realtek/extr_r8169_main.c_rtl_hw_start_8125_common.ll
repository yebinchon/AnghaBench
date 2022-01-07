; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8125_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8125_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@Config1 = common dso_local global i32 0, align 4
@rtl_mac_ocp_e00e_cond = common dso_local global i32 0, align 4
@MISC = common dso_local global i32 0, align 4
@RXDV_GATED_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8125_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8125_common(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @RTL_W16(%struct.rtl8169_private* %5, i32 898, i32 8731)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @RTL_W8(%struct.rtl8169_private* %7, i32 17664, i32 0)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @RTL_W16(%struct.rtl8169_private* %9, i32 18432, i32 0)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %11, i32 54282, i32 16, i32 0)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = load i32, i32* @Config1, align 4
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = load i32, i32* @Config1, align 4
  %17 = call i32 @RTL_R8(%struct.rtl8169_private* %15, i32 %16)
  %18 = and i32 %17, -17
  %19 = call i32 @RTL_W8(%struct.rtl8169_private* %13, i32 %14, i32 %18)
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %20, i32 49472, i32 65535)
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %22, i32 49474, i32 65535)
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %24, i32 54242, i32 4095, i32 937)
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %26, i32 54244, i32 255, i32 0)
  %28 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %29 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %28, i32 59488, i32 0, i32 128)
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %30, i32 60248, i32 1, i32 0)
  %32 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %33 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %32, i32 58900, i32 1792, i32 1024)
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %34, i32 58942, i32 3120, i32 32)
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %36, i32 49332, i32 0, i32 12)
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %38, i32 60266, i32 255, i32 51)
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %41 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %40, i32 60240, i32 992, i32 64)
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %42, i32 57430, i32 240, i32 48)
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %44, i32 57408, i32 4096, i32 0)
  %46 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %47 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %46, i32 57536, i32 20239, i32 17411)
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %49 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %48, i32 57426, i32 128, i32 103)
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %50, i32 49324, i32 128, i32 7936)
  %52 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %53 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %52, i32 54320, i32 4095, i32 1151)
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %54, i32 59468, i32 0, i32 192)
  %56 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %57 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %56, i32 59932, i32 4, i32 0)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %59 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %58, i32 60244, i32 0, i32 1)
  %60 = call i32 @udelay(i32 1)
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = call i32 @r8168_mac_ocp_modify(%struct.rtl8169_private* %61, i32 60244, i32 1, i32 0)
  %63 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %64 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %65 = call i32 @RTL_R16(%struct.rtl8169_private* %64, i32 6272)
  %66 = and i32 %65, -49
  %67 = call i32 @RTL_W16(%struct.rtl8169_private* %63, i32 6272, i32 %66)
  %68 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %69 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %68, i32 57496, i32 49922)
  %70 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %71 = call i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private* %70, i32* @rtl_mac_ocp_e00e_cond, i32 1000, i32 10)
  %72 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %73 = call i32 @rtl8125_config_eee_mac(%struct.rtl8169_private* %72)
  %74 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %75 = load i32, i32* @MISC, align 4
  %76 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %77 = load i32, i32* @MISC, align 4
  %78 = call i32 @RTL_R32(%struct.rtl8169_private* %76, i32 %77)
  %79 = load i32, i32* @RXDV_GATED_EN, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @RTL_W32(%struct.rtl8169_private* %74, i32 %75, i32 %81)
  %83 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @rtl_pcie_state_l2l3_disable(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W16(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @r8168_mac_ocp_modify(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @RTL_R8(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @r8168_mac_ocp_write(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @RTL_R16(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_udelay_loop_wait_low(%struct.rtl8169_private*, i32*, i32, i32) #1

declare dso_local i32 @rtl8125_config_eee_mac(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @RTL_R32(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
