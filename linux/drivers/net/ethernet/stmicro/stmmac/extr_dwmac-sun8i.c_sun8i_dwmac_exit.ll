; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sunxi_priv_data = type { i64, i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i8*)* @sun8i_dwmac_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_dwmac_exit(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sunxi_priv_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sunxi_priv_data*
  store %struct.sunxi_priv_data* %7, %struct.sunxi_priv_data** %5, align 8
  %8 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %9 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %16 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %21 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mdio_mux_uninit(i64 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %26 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %31 = call i32 @sun8i_dwmac_unpower_internal_phy(%struct.sunxi_priv_data* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %35 = call i32 @sun8i_dwmac_unset_syscon(%struct.sunxi_priv_data* %34)
  %36 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %37 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @reset_control_put(i32 %38)
  %40 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %41 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_disable_unprepare(i32 %42)
  %44 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %45 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %50 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @regulator_disable(i64 %51)
  br label %53

53:                                               ; preds = %48, %33
  ret void
}

declare dso_local i32 @mdio_mux_uninit(i64) #1

declare dso_local i32 @sun8i_dwmac_unpower_internal_phy(%struct.sunxi_priv_data*) #1

declare dso_local i32 @sun8i_dwmac_unset_syscon(%struct.sunxi_priv_data*) #1

declare dso_local i32 @reset_control_put(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
