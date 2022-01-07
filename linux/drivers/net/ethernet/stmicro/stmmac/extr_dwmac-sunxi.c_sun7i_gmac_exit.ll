; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_gmac_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sunxi.c_sun7i_gmac_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sunxi_priv_data = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i8*)* @sun7i_gmac_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun7i_gmac_exit(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sunxi_priv_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sunxi_priv_data*
  store %struct.sunxi_priv_data* %7, %struct.sunxi_priv_data** %5, align 8
  %8 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %9 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %14 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_disable(i32 %15)
  %17 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %18 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %21 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @clk_unprepare(i32 %22)
  %24 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %25 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %5, align 8
  %30 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @regulator_disable(i64 %31)
  br label %33

33:                                               ; preds = %28, %19
  ret void
}

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
