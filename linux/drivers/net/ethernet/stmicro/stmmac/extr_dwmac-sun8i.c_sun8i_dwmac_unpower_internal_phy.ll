; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_unpower_internal_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_unpower_internal_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_priv_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_priv_data*)* @sun8i_dwmac_unpower_internal_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dwmac_unpower_internal_phy(%struct.sunxi_priv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunxi_priv_data*, align 8
  store %struct.sunxi_priv_data* %0, %struct.sunxi_priv_data** %3, align 8
  %4 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %3, align 8
  %5 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %3, align 8
  %11 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %3, align 8
  %15 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reset_control_assert(i32 %16)
  %18 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %3, align 8
  %19 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
