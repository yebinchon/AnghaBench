; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64, i64, i64, i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_MASK = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_MASK_LINK_STAT = common dso_local global i32 0, align 4
@MVPP22_XLG_INT_MASK = common dso_local global i64 0, align 8
@MVPP22_XLG_INT_MASK_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp22_gop_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_gop_setup_irq(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %4 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %10 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @phy_interface_mode_is_rgmii(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %16 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @phy_interface_mode_is_8023z(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %22 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20, %14, %8, %1
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %28 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MVPP22_GMAC_INT_MASK, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @MVPP22_GMAC_INT_MASK_LINK_STAT, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %38 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MVPP22_GMAC_INT_MASK, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %26, %20
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %50 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MVPP22_XLG_INT_MASK, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @MVPP22_XLG_INT_MASK_LINK, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %60 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MVPP22_XLG_INT_MASK, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  br label %65

65:                                               ; preds = %48, %43
  %66 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %67 = call i32 @mvpp22_gop_unmask_irq(%struct.mvpp2_port* %66)
  ret void
}

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mvpp22_gop_unmask_irq(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
