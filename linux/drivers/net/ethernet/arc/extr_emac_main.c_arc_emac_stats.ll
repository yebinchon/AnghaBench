; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.arc_emac_priv = type { i32 }

@R_RXERR = common dso_local global i32 0, align 4
@R_MISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @arc_emac_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @arc_emac_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arc_emac_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.arc_emac_priv* %11, %struct.arc_emac_priv** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %4, align 8
  %14 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %15 = load i32, i32* @R_RXERR, align 4
  %16 = call i64 @arc_reg_get(%struct.arc_emac_priv* %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %3, align 8
  %18 = load i32, i32* @R_MISS, align 4
  %19 = call i64 @arc_reg_get(%struct.arc_emac_priv* %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = lshr i64 %21, 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = lshr i64 %23, 16
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %27 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %46 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %56 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  ret %struct.net_device_stats* %59
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @arc_reg_get(%struct.arc_emac_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
