; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_mode_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_mode_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i64, i32, i64 }

@MVPP22_XLG_CTRL3_REG = common dso_local global i64 0, align 8
@MVPP22_XLG_CTRL3_MACMODESELECT_MASK = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL3_MACMODESELECT_10G = common dso_local global i32 0, align 4
@MVPP22_XLG_CTRL3_MACMODESELECT_GMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp22_mode_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_mode_reconfigure(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %4 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %5 = call i32 @mvpp2_mac_reset_assert(%struct.mvpp2_port* %4)
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %7 = call i32 @mvpp22_pcs_reset_assert(%struct.mvpp2_port* %6)
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %9 = call i32 @mvpp22_comphy_init(%struct.mvpp2_port* %8)
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %11 = call i32 @mvpp22_gop_init(%struct.mvpp2_port* %10)
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %13 = call i32 @mvpp22_pcs_reset_deassert(%struct.mvpp2_port* %12)
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %1
  %19 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %20 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MVPP22_XLG_CTRL3_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @MVPP22_XLG_CTRL3_MACMODESELECT_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %30 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @mvpp2_is_xlg(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i32, i32* @MVPP22_XLG_CTRL3_MACMODESELECT_10G, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %18
  %39 = load i32, i32* @MVPP22_XLG_CTRL3_MACMODESELECT_GMAC, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MVPP22_XLG_CTRL3_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  br label %50

50:                                               ; preds = %42, %1
  %51 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %52 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %57 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @mvpp2_is_xlg(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %63 = call i32 @mvpp2_xlg_max_rx_size_set(%struct.mvpp2_port* %62)
  br label %67

64:                                               ; preds = %55, %50
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %66 = call i32 @mvpp2_gmac_max_rx_size_set(%struct.mvpp2_port* %65)
  br label %67

67:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @mvpp2_mac_reset_assert(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_pcs_reset_assert(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_comphy_init(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_gop_init(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp22_pcs_reset_deassert(%struct.mvpp2_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @mvpp2_is_xlg(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mvpp2_xlg_max_rx_size_set(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_gmac_max_rx_size_set(%struct.mvpp2_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
