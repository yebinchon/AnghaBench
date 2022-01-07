; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_config_xps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_config_xps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_nic_priv = type { i32, i32, %struct.hns3_enet_tqp_vector* }
%struct.hns3_enet_tqp_vector = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { %struct.hns3_enet_ring*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"set xps queue failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_nic_priv*)* @hns3_config_xps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_config_xps(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca %struct.hns3_nic_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %5 = alloca %struct.hns3_enet_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %10 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %7
  %14 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %15 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %14, i32 0, i32 2
  %16 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %16, i64 %18
  store %struct.hns3_enet_tqp_vector* %19, %struct.hns3_enet_tqp_vector** %4, align 8
  %20 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %21 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %22, align 8
  store %struct.hns3_enet_ring* %23, %struct.hns3_enet_ring** %5, align 8
  br label %24

24:                                               ; preds = %47, %13
  %25 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %26 = icmp ne %struct.hns3_enet_ring* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %29 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %4, align 8
  %32 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %31, i32 0, i32 0
  %33 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %34 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_set_xps_queue(i32 %30, i32* %32, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %2, align 8
  %43 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @netdev_warn(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %27
  %48 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %49 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %48, i32 0, i32 0
  %50 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %49, align 8
  store %struct.hns3_enet_ring* %50, %struct.hns3_enet_ring** %5, align 8
  br label %24

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %7

55:                                               ; preds = %7
  ret void
}

declare dso_local i32 @netif_set_xps_queue(i32, i32*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
