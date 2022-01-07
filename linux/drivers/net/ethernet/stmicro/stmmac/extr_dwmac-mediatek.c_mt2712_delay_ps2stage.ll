; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mt2712_delay_ps2stage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-mediatek.c_mt2712_delay_ps2stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mediatek_dwmac_plat_data = type { i32, i32, %struct.mac_delay_struct }
%struct.mac_delay_struct = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"phy interface not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mediatek_dwmac_plat_data*)* @mt2712_delay_ps2stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt2712_delay_ps2stage(%struct.mediatek_dwmac_plat_data* %0) #0 {
  %2 = alloca %struct.mediatek_dwmac_plat_data*, align 8
  %3 = alloca %struct.mac_delay_struct*, align 8
  store %struct.mediatek_dwmac_plat_data* %0, %struct.mediatek_dwmac_plat_data** %2, align 8
  %4 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %2, align 8
  %5 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %4, i32 0, i32 2
  store %struct.mac_delay_struct* %5, %struct.mac_delay_struct** %3, align 8
  %6 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %2, align 8
  %7 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %27 [
    i32 133, label %9
    i32 128, label %9
    i32 132, label %18
    i32 129, label %18
    i32 130, label %18
    i32 131, label %18
  ]

9:                                                ; preds = %1, %1
  %10 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %3, align 8
  %11 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 550
  store i32 %13, i32* %11, align 4
  %14 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %3, align 8
  %15 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 550
  store i32 %17, i32* %15, align 4
  br label %32

18:                                               ; preds = %1, %1, %1, %1
  %19 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %3, align 8
  %20 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 170
  store i32 %22, i32* %20, align 4
  %23 = load %struct.mac_delay_struct*, %struct.mac_delay_struct** %3, align 8
  %24 = getelementptr inbounds %struct.mac_delay_struct, %struct.mac_delay_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 170
  store i32 %26, i32* %24, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.mediatek_dwmac_plat_data*, %struct.mediatek_dwmac_plat_data** %2, align 8
  %29 = getelementptr inbounds %struct.mediatek_dwmac_plat_data, %struct.mediatek_dwmac_plat_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %18, %9
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
