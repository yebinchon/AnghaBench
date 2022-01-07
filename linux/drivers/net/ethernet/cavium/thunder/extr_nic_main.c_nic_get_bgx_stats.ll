; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_get_bgx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_get_bgx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32, i32* }
%struct.bgx_stats_msg = type { i64, i32, i64 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32 }

@NIC_MBOX_MSG_BGX_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*, %struct.bgx_stats_msg*)* @nic_get_bgx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_get_bgx_stats(%struct.nicpf* %0, %struct.bgx_stats_msg* %1) #0 {
  %3 = alloca %struct.nicpf*, align 8
  %4 = alloca %struct.bgx_stats_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.nic_mbx, align 8
  store %struct.nicpf* %0, %struct.nicpf** %3, align 8
  store %struct.bgx_stats_msg* %1, %struct.bgx_stats_msg** %4, align 8
  %8 = bitcast %union.nic_mbx* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %10 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %13 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %19 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %22 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @NIC_MBOX_MSG_BGX_STATS, align 4
  %28 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %31 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %36 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %41 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %46 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %2
  %50 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %51 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %56 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @bgx_get_rx_stats(i32 %52, i32 %53, i32 %54, i32 %57)
  %59 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %73

61:                                               ; preds = %2
  %62 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %63 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %68 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @bgx_get_tx_stats(i32 %64, i32 %65, i32 %66, i32 %69)
  %71 = bitcast %union.nic_mbx* %7 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %61, %49
  %74 = load %struct.nicpf*, %struct.nicpf** %3, align 8
  %75 = load %struct.bgx_stats_msg*, %struct.bgx_stats_msg** %4, align 8
  %76 = getelementptr inbounds %struct.bgx_stats_msg, %struct.bgx_stats_msg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @nic_send_msg_to_vf(%struct.nicpf* %74, i64 %77, %union.nic_mbx* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NIC_GET_BGX_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i32 @NIC_GET_LMAC_FROM_VF_LMAC_MAP(i32) #2

declare dso_local i32 @bgx_get_rx_stats(i32, i32, i32, i32) #2

declare dso_local i32 @bgx_get_tx_stats(i32, i32, i32, i32) #2

declare dso_local i32 @nic_send_msg_to_vf(%struct.nicpf*, i64, %union.nic_mbx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
