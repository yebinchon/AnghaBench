; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_rx_stall_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_rx_stall_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arc_emac_priv = type { i64, i64, %struct.arc_emac_bd* }
%struct.arc_emac_bd = type { i32 }

@FOR_EMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @arc_emac_rx_stall_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_emac_rx_stall_check(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.arc_emac_priv*, align 8
  %8 = alloca %struct.arc_emac_bd*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.arc_emac_priv* %10, %struct.arc_emac_priv** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %7, align 8
  %15 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %7, align 8
  %18 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %7, align 8
  %26 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %25, i32 0, i32 2
  %27 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %26, align 8
  %28 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %7, align 8
  %29 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %27, i64 %30
  store %struct.arc_emac_bd* %31, %struct.arc_emac_bd** %8, align 8
  %32 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %8, align 8
  %33 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load i32, i32* @FOR_EMAC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @arc_emac_restart(%struct.net_device* %40)
  %42 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %7, align 8
  %43 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %39, %24
  br label %45

45:                                               ; preds = %44, %21, %16
  ret void
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @arc_emac_restart(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
