; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_rx_set_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_rx_set_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sky2_port = type { i64, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@SKY2_HW_NEW_LE = common dso_local global i32 0, align 4
@RSS_CFG = common dso_local global i64 0, align 8
@HASH_ALL = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@RSS_KEY = common dso_local global i64 0, align 8
@RX_GMF_CTRL_T = common dso_local global i64 0, align 8
@RX_STFW_ENA = common dso_local global i32 0, align 4
@rxqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@BMU_ENA_RX_RSS_HASH = common dso_local global i32 0, align 4
@BMU_DIS_RX_RSS_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @rx_set_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_set_rss(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %10)
  store %struct.sky2_port* %11, %struct.sky2_port** %5, align 8
  %12 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %13 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %12, i32 0, i32 1
  %14 = load %struct.sky2_hw*, %struct.sky2_hw** %13, align 8
  store %struct.sky2_hw* %14, %struct.sky2_hw** %6, align 8
  store i32 4, i32* %8, align 4
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %16 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SKY2_HW_NEW_LE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  store i32 10, i32* %8, align 4
  %22 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %23 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %24 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RSS_CFG, align 8
  %27 = call i32 @SK_REG(i64 %25, i64 %26)
  %28 = load i32, i32* @HASH_ALL, align 4
  %29 = call i32 @sky2_write32(%struct.sky2_hw* %22, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @NETIF_F_RXHASH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %30
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %37 = call i32 @netdev_rss_key_fill(i32* %36, i32 40)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %58, %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %44 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %45 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RSS_KEY, align 8
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = call i32 @SK_REG(i64 %46, i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sky2_write32(%struct.sky2_hw* %43, i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %63 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %64 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RX_GMF_CTRL_T, align 8
  %67 = call i32 @SK_REG(i64 %65, i64 %66)
  %68 = load i32, i32* @RX_STFW_ENA, align 4
  %69 = call i32 @sky2_write32(%struct.sky2_hw* %62, i32 %67, i32 %68)
  %70 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %71 = load i32*, i32** @rxqaddr, align 8
  %72 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %73 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @Q_CSR, align 4
  %78 = call i32 @Q_ADDR(i32 %76, i32 %77)
  %79 = load i32, i32* @BMU_ENA_RX_RSS_HASH, align 4
  %80 = call i32 @sky2_write32(%struct.sky2_hw* %70, i32 %78, i32 %79)
  br label %93

81:                                               ; preds = %30
  %82 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %83 = load i32*, i32** @rxqaddr, align 8
  %84 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %85 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @Q_CSR, align 4
  %90 = call i32 @Q_ADDR(i32 %88, i32 %89)
  %91 = load i32, i32* @BMU_DIS_RX_RSS_HASH, align 4
  %92 = call i32 @sky2_write32(%struct.sky2_hw* %82, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %81, %61
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i64, i64) #1

declare dso_local i32 @netdev_rss_key_fill(i32*, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
