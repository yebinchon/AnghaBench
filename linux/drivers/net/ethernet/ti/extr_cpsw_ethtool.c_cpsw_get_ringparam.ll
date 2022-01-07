; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i8*, i32, i8* }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { i8*, i32 }

@CPSW_MAX_QUEUES = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.cpsw_priv*, align 8
  %6 = alloca %struct.cpsw_common*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.cpsw_priv* %8, %struct.cpsw_priv** %5, align 8
  %9 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %10 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %9, i32 0, i32 0
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  store %struct.cpsw_common* %11, %struct.cpsw_common** %6, align 8
  %12 = load %struct.cpsw_common*, %struct.cpsw_common** %6, align 8
  %13 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** @CPSW_MAX_QUEUES, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.cpsw_common*, %struct.cpsw_common** %6, align 8
  %23 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpdma_get_num_tx_descs(i32 %24)
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.cpsw_common*, %struct.cpsw_common** %6, align 8
  %29 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @CPSW_MAX_QUEUES, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.cpsw_common*, %struct.cpsw_common** %6, align 8
  %39 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cpdma_get_num_rx_descs(i32 %40)
  %42 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret void
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpdma_get_num_tx_descs(i32) #1

declare dso_local i32 @cpdma_get_num_rx_descs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
