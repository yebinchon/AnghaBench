; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_gcoalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_gcoalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8* }
%struct.gfar_private = type { i32, %struct.gfar_priv_tx_q**, %struct.gfar_priv_rx_q** }
%struct.gfar_priv_tx_q = type { i32 }
%struct.gfar_priv_rx_q = type { i32 }

@FSL_GIANFAR_DEV_HAS_COALESCE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @gfar_gcoalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_gcoalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca %struct.gfar_priv_rx_q*, align 8
  %8 = alloca %struct.gfar_priv_tx_q*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %13)
  store %struct.gfar_private* %14, %struct.gfar_private** %6, align 8
  store %struct.gfar_priv_rx_q* null, %struct.gfar_priv_rx_q** %7, align 8
  store %struct.gfar_priv_tx_q* null, %struct.gfar_priv_tx_q** %8, align 8
  %15 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %16 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FSL_GIANFAR_DEV_HAS_COALESCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %101

32:                                               ; preds = %24
  %33 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %34 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %33, i32 0, i32 2
  %35 = load %struct.gfar_priv_rx_q**, %struct.gfar_priv_rx_q*** %34, align 8
  %36 = getelementptr inbounds %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %35, i64 0
  %37 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %36, align 8
  store %struct.gfar_priv_rx_q* %37, %struct.gfar_priv_rx_q** %7, align 8
  %38 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %39 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %38, i32 0, i32 1
  %40 = load %struct.gfar_priv_tx_q**, %struct.gfar_priv_tx_q*** %39, align 8
  %41 = getelementptr inbounds %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %40, i64 0
  %42 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %41, align 8
  store %struct.gfar_priv_tx_q* %42, %struct.gfar_priv_tx_q** %8, align 8
  %43 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %7, align 8
  %44 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @get_ictt_value(i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.gfar_priv_rx_q*, %struct.gfar_priv_rx_q** %7, align 8
  %48 = getelementptr inbounds %struct.gfar_priv_rx_q, %struct.gfar_priv_rx_q* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @get_icft_value(i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %8, align 8
  %52 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @get_ictt_value(i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load %struct.gfar_priv_tx_q*, %struct.gfar_priv_tx_q** %8, align 8
  %56 = getelementptr inbounds %struct.gfar_priv_tx_q, %struct.gfar_priv_tx_q* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @get_icft_value(i32 %57)
  store i64 %58, i64* %12, align 8
  %59 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i8* @gfar_ticks2usecs(%struct.gfar_private* %59, i64 %60)
  %62 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %62, i32 0, i32 16
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i8* @gfar_ticks2usecs(%struct.gfar_private* %67, i64 %68)
  %70 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %70, i32 0, i32 15
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %75, i32 0, i32 14
  store i64 0, i64* %76, align 8
  %77 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %77, i32 0, i32 13
  store i64 0, i64* %78, align 8
  %79 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %79, i32 0, i32 12
  store i64 0, i64* %80, align 8
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %83, i32 0, i32 10
  store i64 0, i64* %84, align 8
  %85 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %85, i32 0, i32 9
  store i64 0, i64* %86, align 8
  %87 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %87, i32 0, i32 8
  store i64 0, i64* %88, align 8
  %89 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %89, i32 0, i32 7
  store i64 0, i64* %90, align 8
  %91 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %91, i32 0, i32 6
  store i64 0, i64* %92, align 8
  %93 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %32, %29, %21
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_ictt_value(i32) #1

declare dso_local i64 @get_icft_value(i32) #1

declare dso_local i8* @gfar_ticks2usecs(%struct.gfar_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
