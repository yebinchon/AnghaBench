; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_register_mdio_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_register_mdio_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sunxi_priv_data* }
%struct.sunxi_priv_data = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"mdio-mux\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mdio_mux_syscon_switch_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @sun8i_dwmac_register_mdio_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dwmac_register_mdio_mux(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.sunxi_priv_data*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %10, align 8
  store %struct.sunxi_priv_data* %11, %struct.sunxi_priv_data** %6, align 8
  %12 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_get_child_by_name(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %1
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load i32, i32* @mdio_mux_syscon_switch_fn, align 4
  %29 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %6, align 8
  %30 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %29, i32 0, i32 0
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %32 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %33 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mdio_mux_init(%struct.TYPE_4__* %26, %struct.device_node* %27, i32 %28, i32* %30, %struct.stmmac_priv* %31, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %23, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @mdio_mux_init(%struct.TYPE_4__*, %struct.device_node*, i32, i32*, %struct.stmmac_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
