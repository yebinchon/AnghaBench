; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.sh_eth_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@TROCR = common dso_local global i32 0, align 4
@CDCR = common dso_local global i32 0, align 4
@LCCR = common dso_local global i32 0, align 4
@CERCR = common dso_local global i32 0, align 4
@CEECR = common dso_local global i32 0, align 4
@CNDCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @sh_eth_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @sh_eth_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sh_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %5)
  store %struct.sh_eth_private* %6, %struct.sh_eth_private** %4, align 8
  %7 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %8 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %2, align 8
  br label %72

16:                                               ; preds = %1
  %17 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %18 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store %struct.net_device_stats* %23, %struct.net_device_stats** %2, align 8
  br label %72

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %27, i32 0, i32 2
  %29 = load i32, i32* @TROCR, align 4
  %30 = call i32 @sh_eth_update_stat(%struct.net_device* %25, i32* %28, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 1
  %35 = load i32, i32* @CDCR, align 4
  %36 = call i32 @sh_eth_update_stat(%struct.net_device* %31, i32* %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %39, i32 0, i32 0
  %41 = load i32, i32* @LCCR, align 4
  %42 = call i32 @sh_eth_update_stat(%struct.net_device* %37, i32* %40, i32 %41)
  %43 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %44 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %24
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %52, i32 0, i32 0
  %54 = load i32, i32* @CERCR, align 4
  %55 = call i32 @sh_eth_update_stat(%struct.net_device* %50, i32* %53, i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 0
  %60 = load i32, i32* @CEECR, align 4
  %61 = call i32 @sh_eth_update_stat(%struct.net_device* %56, i32* %59, i32 %60)
  br label %69

62:                                               ; preds = %24
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %65, i32 0, i32 0
  %67 = load i32, i32* @CNDCR, align 4
  %68 = call i32 @sh_eth_update_stat(%struct.net_device* %63, i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %62, %49
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  store %struct.net_device_stats* %71, %struct.net_device_stats** %2, align 8
  br label %72

72:                                               ; preds = %69, %21, %13
  %73 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  ret %struct.net_device_stats* %73
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_update_stat(%struct.net_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
