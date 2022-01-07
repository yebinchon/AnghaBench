; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168e_1_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168e_1_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_reg = type { i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl8168e_1_hw_phy_config.phy_reg_init = internal constant [19 x %struct.phy_reg] [%struct.phy_reg { i32 31, i32 5 }, %struct.phy_reg { i32 5, i32 35712 }, %struct.phy_reg { i32 6, i32 51350 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 1 }, %struct.phy_reg { i32 11, i32 27680 }, %struct.phy_reg { i32 7, i32 10354 }, %struct.phy_reg { i32 28, i32 61439 }, %struct.phy_reg { i32 31, i32 3 }, %struct.phy_reg { i32 20, i32 25632 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 7 }, %struct.phy_reg { i32 30, i32 47 }, %struct.phy_reg { i32 21, i32 6425 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 7 }, %struct.phy_reg { i32 30, i32 172 }, %struct.phy_reg { i32 24, i32 6 }, %struct.phy_reg { i32 31, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168e_1_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168e_1_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %5, %struct.phy_reg* getelementptr inbounds ([19 x %struct.phy_reg], [19 x %struct.phy_reg]* @rtl8168e_1_hw_phy_config.phy_reg_init, i64 0, i64 0))
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_writephy(%struct.rtl8169_private* %7, i32 31, i32 7)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_writephy(%struct.rtl8169_private* %9, i32 30, i32 35)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %11, i32 23, i32 6, i32 0)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = call i32 @rtl_writephy(%struct.rtl8169_private* %13, i32 31, i32 0)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = call i32 @rtl_writephy(%struct.rtl8169_private* %15, i32 31, i32 2)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %18 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %17, i32 8, i32 32768, i32 32512)
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = call i32 @rtl_writephy(%struct.rtl8169_private* %19, i32 31, i32 0)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = call i32 @rtl_writephy(%struct.rtl8169_private* %21, i32 31, i32 7)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = call i32 @rtl_writephy(%struct.rtl8169_private* %23, i32 30, i32 45)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %26 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %25, i32 24, i32 80, i32 0)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = call i32 @rtl_writephy(%struct.rtl8169_private* %27, i32 31, i32 0)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %29, i32 20, i32 32768, i32 0)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = call i32 @rtl_writephy(%struct.rtl8169_private* %31, i32 31, i32 5)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = call i32 @rtl_writephy(%struct.rtl8169_private* %33, i32 5, i32 35718)
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %36 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %35, i32 6, i32 1, i32 0)
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = call i32 @rtl_writephy(%struct.rtl8169_private* %37, i32 31, i32 0)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = call i32 @rtl_writephy(%struct.rtl8169_private* %39, i32 31, i32 5)
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %42 = call i32 @rtl_writephy(%struct.rtl8169_private* %41, i32 5, i32 35717)
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %43, i32 6, i32 0, i32 8192)
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %46 = call i32 @rtl_writephy(%struct.rtl8169_private* %45, i32 31, i32 7)
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = call i32 @rtl_writephy(%struct.rtl8169_private* %47, i32 30, i32 32)
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %49, i32 21, i32 0, i32 4352)
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = call i32 @rtl_writephy(%struct.rtl8169_private* %51, i32 31, i32 6)
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = call i32 @rtl_writephy(%struct.rtl8169_private* %53, i32 0, i32 23040)
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %56 = call i32 @rtl_writephy(%struct.rtl8169_private* %55, i32 31, i32 0)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = call i32 @rtl_writephy(%struct.rtl8169_private* %57, i32 13, i32 7)
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = call i32 @rtl_writephy(%struct.rtl8169_private* %59, i32 14, i32 60)
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = call i32 @rtl_writephy(%struct.rtl8169_private* %61, i32 13, i32 16391)
  %63 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %64 = call i32 @rtl_writephy(%struct.rtl8169_private* %63, i32 14, i32 0)
  %65 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %66 = call i32 @rtl_writephy(%struct.rtl8169_private* %65, i32 13, i32 0)
  ret void
}

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy_batch(%struct.rtl8169_private*, %struct.phy_reg*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w0w1_phy(%struct.rtl8169_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
