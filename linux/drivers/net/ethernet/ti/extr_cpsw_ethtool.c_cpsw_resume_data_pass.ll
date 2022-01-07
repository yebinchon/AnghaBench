; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_resume_data_pass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_resume_data_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cpsw_resume_data_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_resume_data_pass(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca %struct.cpsw_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.cpsw_priv* %9, %struct.cpsw_priv** %4, align 8
  %10 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %10, i32 0, i32 0
  %12 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  store %struct.cpsw_common* %12, %struct.cpsw_common** %5, align 8
  %13 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %14 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %19 = call i32 @cpsw_fill_rx_channels(%struct.cpsw_priv* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %62

24:                                               ; preds = %17
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpdma_ctlr_start(i32 %27)
  %29 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %30 = call i32 @cpsw_intr_enable(%struct.cpsw_common* %29)
  br label %31

31:                                               ; preds = %24, %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %58, %31
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %35 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %32
  %40 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %41 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.net_device*, %struct.net_device** %46, align 8
  store %struct.net_device* %47, %struct.net_device** %3, align 8
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i64 @netif_running(%struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_tx_start_all_queues(%struct.net_device* %55)
  br label %57

57:                                               ; preds = %54, %50, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %32

61:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %22
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_fill_rx_channels(%struct.cpsw_priv*) #1

declare dso_local i32 @cpdma_ctlr_start(i32) #1

declare dso_local i32 @cpsw_intr_enable(%struct.cpsw_common*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
