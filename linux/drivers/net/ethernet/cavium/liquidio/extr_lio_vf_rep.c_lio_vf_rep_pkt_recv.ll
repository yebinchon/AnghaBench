; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_pkt_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_pkt_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_recv_info = type { %struct.octeon_recv_pkt* }
%struct.octeon_recv_pkt = type { i32, %struct.sk_buff**, i32*, %union.octeon_rh, i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%union.octeon_rh = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lio_vf_rep_desc = type { i32 }
%struct.octeon_device = type { i32 }
%struct.TYPE_3__ = type { i32 }

@LIO_IFSTATE_RUNNING = common dso_local global i32 0, align 4
@BYTES_PER_DHLEN_UNIT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_recv_info*, i8*)* @lio_vf_rep_pkt_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_vf_rep_pkt_recv(%struct.octeon_recv_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_recv_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.octeon_recv_pkt*, align 8
  %7 = alloca %struct.lio_vf_rep_desc*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca %union.octeon_rh*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.octeon_recv_info* %0, %struct.octeon_recv_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_recv_info, %struct.octeon_recv_info* %14, i32 0, i32 0
  %16 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %15, align 8
  store %struct.octeon_recv_pkt* %16, %struct.octeon_recv_pkt** %6, align 8
  %17 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %18 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.octeon_device* @lio_get_device(i32 %19)
  store %struct.octeon_device* %20, %struct.octeon_device** %9, align 8
  %21 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %22 = icmp ne %struct.octeon_device* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %91

24:                                               ; preds = %2
  %25 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %26 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %25, i32 0, i32 1
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 0
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %11, align 8
  %30 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %31 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %30, i32 0, i32 3
  store %union.octeon_rh* %31, %union.octeon_rh** %10, align 8
  %32 = load %union.octeon_rh*, %union.octeon_rh** %10, align 8
  %33 = bitcast %union.octeon_rh* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call %struct.net_device* @lio_vf_rep_get_ndev(%struct.octeon_device* %36, i32 %37)
  store %struct.net_device* %38, %struct.net_device** %8, align 8
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  br label %91

42:                                               ; preds = %24
  %43 = load %struct.net_device*, %struct.net_device** %8, align 8
  %44 = call %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device* %43)
  store %struct.lio_vf_rep_desc* %44, %struct.lio_vf_rep_desc** %7, align 8
  %45 = load %struct.lio_vf_rep_desc*, %struct.lio_vf_rep_desc** %7, align 8
  %46 = getelementptr inbounds %struct.lio_vf_rep_desc, %struct.lio_vf_rep_desc* %45, i32 0, i32 0
  %47 = call i32 @atomic_read(i32* %46)
  %48 = load i32, i32* @LIO_IFSTATE_RUNNING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %53 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %42
  br label %91

57:                                               ; preds = %51
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  store %struct.net_device* %58, %struct.net_device** %60, align 8
  %61 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %64 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @lio_vf_rep_copy_packet(%struct.octeon_device* %61, %struct.sk_buff* %62, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load %union.octeon_rh*, %union.octeon_rh** %10, align 8
  %71 = bitcast %union.octeon_rh* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BYTES_PER_DHLEN_UNIT, align 4
  %75 = mul nsw i32 %73, %74
  %76 = call i32 @skb_pull(%struct.sk_buff* %69, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load %struct.net_device*, %struct.net_device** %79, align 8
  %81 = call i32 @eth_type_trans(%struct.sk_buff* %77, %struct.net_device* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @CHECKSUM_NONE, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %88 = call i32 @netif_rx(%struct.sk_buff* %87)
  %89 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %4, align 8
  %90 = call i32 @octeon_free_recv_info(%struct.octeon_recv_info* %89)
  store i32 0, i32* %3, align 4
  br label %113

91:                                               ; preds = %56, %41, %23
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %107, %91
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %95 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %100 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %99, i32 0, i32 1
  %101 = load %struct.sk_buff**, %struct.sk_buff*** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %101, i64 %103
  %105 = load %struct.sk_buff*, %struct.sk_buff** %104, align 8
  %106 = call i32 @recv_buffer_free(%struct.sk_buff* %105)
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %92

110:                                              ; preds = %92
  %111 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %4, align 8
  %112 = call i32 @octeon_free_recv_info(%struct.octeon_recv_info* %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %110, %57
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.octeon_device* @lio_get_device(i32) #1

declare dso_local %struct.net_device* @lio_vf_rep_get_ndev(%struct.octeon_device*, i32) #1

declare dso_local %struct.lio_vf_rep_desc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @lio_vf_rep_copy_packet(%struct.octeon_device*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @octeon_free_recv_info(%struct.octeon_recv_info*) #1

declare dso_local i32 @recv_buffer_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
