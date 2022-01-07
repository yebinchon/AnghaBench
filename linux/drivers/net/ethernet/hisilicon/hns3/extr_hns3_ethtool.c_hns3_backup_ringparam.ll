; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_backup_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_backup_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { i32* }
%struct.hns3_nic_priv = type { %struct.TYPE_3__*, %struct.hnae3_handle* }
%struct.TYPE_3__ = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns3_enet_ring* (%struct.hns3_nic_priv*)* @hns3_backup_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns3_enet_ring* @hns3_backup_ringparam(%struct.hns3_nic_priv* %0) #0 {
  %2 = alloca %struct.hns3_enet_ring*, align 8
  %3 = alloca %struct.hns3_nic_priv*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.hns3_enet_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.hns3_nic_priv* %0, %struct.hns3_nic_priv** %3, align 8
  %7 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %8 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %7, i32 0, i32 1
  %9 = load %struct.hnae3_handle*, %struct.hnae3_handle** %8, align 8
  store %struct.hnae3_handle* %9, %struct.hnae3_handle** %4, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %11 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hns3_enet_ring* @kcalloc(i32 %14, i32 8, i32 %15)
  store %struct.hns3_enet_ring* %16, %struct.hns3_enet_ring** %5, align 8
  %17 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %18 = icmp ne %struct.hns3_enet_ring* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.hns3_enet_ring* null, %struct.hns3_enet_ring** %2, align 8
  br label %53

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %24 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %30, i64 %32
  %34 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %3, align 8
  %35 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(%struct.hns3_enet_ring* %33, i32 %41, i32 8)
  %43 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %43, i64 %45
  %47 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %5, align 8
  store %struct.hns3_enet_ring* %52, %struct.hns3_enet_ring** %2, align 8
  br label %53

53:                                               ; preds = %51, %19
  %54 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %2, align 8
  ret %struct.hns3_enet_ring* %54
}

declare dso_local %struct.hns3_enet_ring* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.hns3_enet_ring*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
