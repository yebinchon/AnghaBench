; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_update_lmac_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_update_lmac_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@NIC_MBOX_MSG_BGX_STATS = common dso_local global i32 0, align 4
@BGX_RX_STATS_COUNT = common dso_local global i32 0, align 4
@BGX_TX_STATS_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_update_lmac_stats(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.nic_mbx, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = bitcast %union.nic_mbx* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %7 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @netif_running(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  %13 = load i32, i32* @NIC_MBOX_MSG_BGX_STATS, align 4
  %14 = bitcast %union.nic_mbx* %4 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %17 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %union.nic_mbx* %4 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = bitcast %union.nic_mbx* %4 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %35, %12
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @BGX_RX_STATS_COUNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = bitcast %union.nic_mbx* %4 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %32 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %31, %union.nic_mbx* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %56

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %23

38:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  %39 = bitcast %union.nic_mbx* %4 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %53, %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @BGX_TX_STATS_COUNT, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = bitcast %union.nic_mbx* %4 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %50 = call i64 @nicvf_send_msg_to_pf(%struct.nicvf* %49, %union.nic_mbx* %4)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %41

56:                                               ; preds = %11, %34, %52, %41
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @netif_running(i32) #2

declare dso_local i64 @nicvf_send_msg_to_pf(%struct.nicvf*, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
