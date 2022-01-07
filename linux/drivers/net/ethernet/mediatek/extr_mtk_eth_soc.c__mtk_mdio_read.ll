; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c__mtk_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c__mtk_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_eth = type { i32 }

@PHY_IAC_ACCESS = common dso_local global i32 0, align 4
@PHY_IAC_START = common dso_local global i32 0, align 4
@PHY_IAC_READ = common dso_local global i32 0, align 4
@PHY_IAC_REG_SHIFT = common dso_local global i32 0, align 4
@PHY_IAC_ADDR_SHIFT = common dso_local global i32 0, align 4
@MTK_PHY_IAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_eth*, i32, i32)* @_mtk_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mtk_mdio_read(%struct.mtk_eth* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_eth*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_eth* %0, %struct.mtk_eth** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %10 = call i64 @mtk_mdio_busy_wait(%struct.mtk_eth* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 65535, i32* %4, align 4
  br label %40

13:                                               ; preds = %3
  %14 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %15 = load i32, i32* @PHY_IAC_ACCESS, align 4
  %16 = load i32, i32* @PHY_IAC_START, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PHY_IAC_READ, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PHY_IAC_REG_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PHY_IAC_ADDR_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* @MTK_PHY_IAC, align 4
  %29 = call i32 @mtk_w32(%struct.mtk_eth* %14, i32 %27, i32 %28)
  %30 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %31 = call i64 @mtk_mdio_busy_wait(%struct.mtk_eth* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %13
  store i32 65535, i32* %4, align 4
  br label %40

34:                                               ; preds = %13
  %35 = load %struct.mtk_eth*, %struct.mtk_eth** %5, align 8
  %36 = load i32, i32* @MTK_PHY_IAC, align 4
  %37 = call i32 @mtk_r32(%struct.mtk_eth* %35, i32 %36)
  %38 = and i32 %37, 65535
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %33, %12
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i64 @mtk_mdio_busy_wait(%struct.mtk_eth*) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i32, i32) #1

declare dso_local i32 @mtk_r32(%struct.mtk_eth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
