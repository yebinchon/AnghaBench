; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_mask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_mask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64, i64, i64 }

@MVPP22_XLG_EXT_INT_MASK = common dso_local global i64 0, align 8
@MVPP22_XLG_EXT_INT_MASK_XLG = common dso_local global i32 0, align 4
@MVPP22_XLG_EXT_INT_MASK_GIG = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_SUM_MASK = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_SUM_MASK_LINK_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp22_gop_mask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_gop_mask_irq(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %4 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MVPP22_XLG_EXT_INT_MASK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @MVPP22_XLG_EXT_INT_MASK_XLG, align 4
  %16 = load i32, i32* @MVPP22_XLG_EXT_INT_MASK_GIG, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MVPP22_XLG_EXT_INT_MASK, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  br label %28

28:                                               ; preds = %8, %1
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %30 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @phy_interface_mode_is_rgmii(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %36 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @phy_interface_mode_is_8023z(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %42 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40, %34, %28
  %47 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %48 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MVPP22_GMAC_INT_SUM_MASK, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @MVPP22_GMAC_INT_SUM_MASK_LINK_STAT, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %59 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MVPP22_GMAC_INT_SUM_MASK, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  br label %64

64:                                               ; preds = %46, %40
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
