; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.mvneta_port = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvneta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mvneta_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mvneta_port* @netdev_priv(%struct.net_device* %7)
  store %struct.mvneta_port* %8, %struct.mvneta_port** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %12 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_disable_unprepare(i32 %13)
  %15 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %16 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %20 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @free_percpu(i32 %21)
  %23 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %24 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @free_percpu(i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @irq_dispose_mapping(i32 %29)
  %31 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %32 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @phylink_destroy(i32 %33)
  %35 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %36 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %1
  %40 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %41 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %44 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %47 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1, %48
  %50 = call i32 @mvneta_bm_pool_destroy(i64 %42, i32 %45, i32 %49)
  %51 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %52 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %55 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %58 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 1, %59
  %61 = call i32 @mvneta_bm_pool_destroy(i64 %53, i32 %56, i32 %60)
  %62 = load %struct.mvneta_port*, %struct.mvneta_port** %4, align 8
  %63 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @mvneta_bm_put(i64 %64)
  br label %66

66:                                               ; preds = %39, %1
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mvneta_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @phylink_destroy(i32) #1

declare dso_local i32 @mvneta_bm_pool_destroy(i64, i32, i32) #1

declare dso_local i32 @mvneta_bm_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
