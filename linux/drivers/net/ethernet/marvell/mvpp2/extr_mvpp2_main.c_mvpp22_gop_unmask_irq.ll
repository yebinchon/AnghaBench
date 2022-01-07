; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_gop_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64, i64, i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_SUM_MASK = common dso_local global i64 0, align 8
@MVPP22_GMAC_INT_SUM_MASK_LINK_STAT = common dso_local global i32 0, align 4
@MVPP22_XLG_EXT_INT_MASK = common dso_local global i64 0, align 8
@MVPP22_XLG_EXT_INT_MASK_XLG = common dso_local global i32 0, align 4
@MVPP22_XLG_EXT_INT_MASK_GIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp22_gop_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_gop_unmask_irq(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %4 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %5 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 @phy_interface_mode_is_rgmii(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @phy_interface_mode_is_8023z(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %17 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15, %9, %1
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MVPP22_GMAC_INT_SUM_MASK, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @MVPP22_GMAC_INT_SUM_MASK_LINK_STAT, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MVPP22_GMAC_INT_SUM_MASK, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  br label %38

38:                                               ; preds = %21, %15
  %39 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %40 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MVPP22_XLG_EXT_INT_MASK, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %3, align 4
  %50 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %51 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @mvpp2_is_xlg(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* @MVPP22_XLG_EXT_INT_MASK_XLG, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %63

59:                                               ; preds = %43
  %60 = load i32, i32* @MVPP22_XLG_EXT_INT_MASK_GIG, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %66 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MVPP22_XLG_EXT_INT_MASK, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  br label %71

71:                                               ; preds = %63, %38
  ret void
}

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i64 @phy_interface_mode_is_8023z(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @mvpp2_is_xlg(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
