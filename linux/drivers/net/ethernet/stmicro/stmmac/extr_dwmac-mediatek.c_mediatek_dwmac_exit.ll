; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mediatek_dwmac_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mediatek_dwmac_plat_data = type { i32, %struct.mediatek_dwmac_variant* }
%struct.mediatek_dwmac_variant = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i8*)* @mediatek_dwmac_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mediatek_dwmac_exit(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %6 = alloca %struct.mediatek_dwmac_variant*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mediatek_dwmac_plat_data*
  store %struct.mediatek_dwmac_plat_data* %8, %struct.mediatek_dwmac_plat_data** %5, align 8
  %9 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %5, align 8
  %10 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %9, i32 0, i32 1
  %11 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %10, align 8
  store %struct.mediatek_dwmac_variant* %11, %struct.mediatek_dwmac_variant** %6, align 8
  %12 = load %struct.mediatek_dwmac_variant*, %struct.mediatek_dwmac_variant** %6, align 8
  %13 = getelementptr inbounds %struct.mediatek_dwmac_variant, %struct.mediatek_dwmac_variant* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %5, align 8
  %16 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_bulk_disable_unprepare(i32 %14, i32 %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_put_sync(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @pm_runtime_disable(i32* %23)
  ret void
}

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
