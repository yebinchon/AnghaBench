; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32 }
%struct.nicvf = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%union.nic_mbx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@BGX_MODE_SGMII = common dso_local global i64 0, align 8
@BGX_MODE_QSGMII = common dso_local global i64 0, align 8
@BGX_MODE_RGMII = common dso_local global i64 0, align 8
@NIC_MBOX_MSG_PFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @nicvf_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %union.nic_mbx, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.nicvf* @netdev_priv(%struct.net_device* %7)
  store %struct.nicvf* %8, %struct.nicvf** %5, align 8
  %9 = bitcast %union.nic_mbx* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BGX_MODE_SGMII, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %17 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BGX_MODE_QSGMII, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %23 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BGX_MODE_RGMII, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %15, %2
  br label %56

28:                                               ; preds = %21
  %29 = load i32, i32* @NIC_MBOX_MSG_PFC, align 4
  %30 = bitcast %union.nic_mbx* %6 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = bitcast %union.nic_mbx* %6 to %struct.TYPE_3__*
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %35 = call i32 @nicvf_send_msg_to_pf(%struct.nicvf* %34, %union.nic_mbx* %6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %28
  %38 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %39 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %45 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %51 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %27, %37, %28
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
