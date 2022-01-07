; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i64, i32, i64, i32, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.et131x_adapter = type { %struct.ce_stats, %struct.TYPE_2__* }
%struct.ce_stats = type { i32, i64, i32, i64, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.net_device_stats }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @et131x_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @et131x_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.ce_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.et131x_adapter* %7, %struct.et131x_adapter** %3, align 8
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %4, align 8
  %12 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %12, i32 0, i32 0
  store %struct.ce_stats* %13, %struct.ce_stats** %5, align 8
  %14 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %15 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %18 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %22 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %26 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %30 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %34 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %33, i32 0, i32 7
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %36 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %39 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %41 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %44 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %46 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %49 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %51 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %54 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %56 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %59 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %61 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ce_stats*, %struct.ce_stats** %5, align 8
  %66 = getelementptr inbounds %struct.ce_stats, %struct.ce_stats* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %70
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
