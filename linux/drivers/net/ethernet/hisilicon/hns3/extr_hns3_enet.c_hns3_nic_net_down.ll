; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_net_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns3_nic_priv = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.TYPE_8__*)* }
%struct.hnae3_handle = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hns3_nic_net_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_nic_net_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hnae3_ae_ops*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hns3_nic_priv* %8, %struct.hns3_nic_priv** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %9)
  store %struct.hnae3_handle* %10, %struct.hnae3_handle** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %14 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %19 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i32 @hns3_vector_disable(i32* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %11

28:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %32 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %38 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hns3_tqp_disable(i32 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %51 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %55, align 8
  store %struct.hnae3_ae_ops* %56, %struct.hnae3_ae_ops** %5, align 8
  %57 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %58 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_8__*)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %49
  %62 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %5, align 8
  %63 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %63, align 8
  %65 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %66 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 %64(%struct.TYPE_8__* %67)
  br label %69

69:                                               ; preds = %61, %49
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = call i32 @hns3_free_rx_cpu_rmap(%struct.net_device* %70)
  %72 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %73 = call i32 @hns3_nic_uninit_irq(%struct.hns3_nic_priv* %72)
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @hns3_nic_resetting(%struct.net_device* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %69
  %78 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %79 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i32 @hns3_clear_all_ring(%struct.TYPE_8__* %80, i32 0)
  br label %82

82:                                               ; preds = %77, %69
  %83 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %84 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = call i32 @hns3_reset_tx_queue(%struct.TYPE_8__* %85)
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @hns3_vector_disable(i32*) #1

declare dso_local i32 @hns3_tqp_disable(i32) #1

declare dso_local i32 @hns3_free_rx_cpu_rmap(%struct.net_device*) #1

declare dso_local i32 @hns3_nic_uninit_irq(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_resetting(%struct.net_device*) #1

declare dso_local i32 @hns3_clear_all_ring(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @hns3_reset_tx_queue(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
