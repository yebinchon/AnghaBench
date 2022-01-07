; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_rx_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_rx_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }
%struct.nfp_net_dp = type { i32, i64, i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32 }
%struct.nfp_net_rx_ring = type { %struct.nfp_net_rx_buf*, i32, %struct.nfp_net_rx_desc* }
%struct.nfp_net_rx_buf = type { i64, i64 }
%struct.nfp_net_rx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@PCIE_DESC_RX_DD = common dso_local global i32 0, align 4
@PCIE_DESC_RX_META_LEN_MASK = common dso_local global i32 0, align 4
@NFP_NET_RX_BUF_HEADROOM = common dso_local global i32 0, align 4
@NFP_NET_CFG_RX_OFFSET_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"incorrect metadata for ctrl packet (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_rx_ring*)* @nfp_ctrl_rx_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_ctrl_rx_one(%struct.nfp_net* %0, %struct.nfp_net_dp* %1, %struct.nfp_net_r_vector* %2, %struct.nfp_net_rx_ring* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.nfp_net_dp*, align 8
  %8 = alloca %struct.nfp_net_r_vector*, align 8
  %9 = alloca %struct.nfp_net_rx_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfp_net_rx_buf*, align 8
  %16 = alloca %struct.nfp_net_rx_desc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %6, align 8
  store %struct.nfp_net_dp* %1, %struct.nfp_net_dp** %7, align 8
  store %struct.nfp_net_r_vector* %2, %struct.nfp_net_r_vector** %8, align 8
  store %struct.nfp_net_rx_ring* %3, %struct.nfp_net_rx_ring** %9, align 8
  %21 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %22 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %23 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @D_IDX(%struct.nfp_net_rx_ring* %21, i32 %24)
  store i32 %25, i32* %20, align 4
  %26 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %27 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %26, i32 0, i32 2
  %28 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %27, align 8
  %29 = load i32, i32* %20, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %28, i64 %30
  store %struct.nfp_net_rx_desc* %31, %struct.nfp_net_rx_desc** %16, align 8
  %32 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %16, align 8
  %33 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCIE_DESC_RX_DD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %197

40:                                               ; preds = %4
  %41 = call i32 (...) @dma_rmb()
  %42 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %43 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %47 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %46, i32 0, i32 0
  %48 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %47, align 8
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %48, i64 %50
  store %struct.nfp_net_rx_buf* %51, %struct.nfp_net_rx_buf** %15, align 8
  %52 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %16, align 8
  %53 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PCIE_DESC_RX_META_LEN_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %16, align 8
  %59 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le16_to_cpu(i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sub i32 %63, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* @NFP_NET_RX_BUF_HEADROOM, align 4
  %67 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %68 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %66, %69
  store i32 %70, i32* %14, align 4
  %71 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %72 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NFP_NET_CFG_RX_OFFSET_DYNAMIC, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %40
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %88

80:                                               ; preds = %40
  %81 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %82 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %80, %76
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %93 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %92, i32 0, i32 1
  %94 = call i32 @u64_stats_update_begin(i32* %93)
  %95 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %96 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %101 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %105 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %104, i32 0, i32 1
  %106 = call i32 @u64_stats_update_end(i32* %105)
  %107 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %108 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %15, align 8
  %109 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = zext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @nfp_net_dma_sync_cpu_rx(%struct.nfp_net_dp* %107, i64 %113, i32 %114)
  %116 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %117 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %15, align 8
  %118 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = zext i32 %120 to i64
  %122 = add nsw i64 %119, %121
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @nfp_ctrl_meta_ok(%struct.nfp_net* %116, i64 %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %88
  %131 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %131, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %132)
  %134 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %135 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %136 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %137 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %15, align 8
  %138 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %134, %struct.nfp_net_r_vector* %135, %struct.nfp_net_rx_ring* %136, %struct.nfp_net_rx_buf* %137, %struct.sk_buff* null)
  store i32 1, i32* %5, align 4
  br label %197

139:                                              ; preds = %88
  %140 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %15, align 8
  %141 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %144 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call %struct.sk_buff* @build_skb(i64 %142, i32 %145)
  store %struct.sk_buff* %146, %struct.sk_buff** %18, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %155 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %156 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %157 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %15, align 8
  %158 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %154, %struct.nfp_net_r_vector* %155, %struct.nfp_net_rx_ring* %156, %struct.nfp_net_rx_buf* %157, %struct.sk_buff* null)
  store i32 1, i32* %5, align 4
  br label %197

159:                                              ; preds = %139
  %160 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %161 = call i8* @nfp_net_napi_alloc_one(%struct.nfp_net_dp* %160, i32* %17)
  store i8* %161, i8** %19, align 8
  %162 = load i8*, i8** %19, align 8
  %163 = icmp ne i8* %162, null
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %159
  %169 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %170 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %8, align 8
  %171 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %172 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %15, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %174 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %169, %struct.nfp_net_r_vector* %170, %struct.nfp_net_rx_ring* %171, %struct.nfp_net_rx_buf* %172, %struct.sk_buff* %173)
  store i32 1, i32* %5, align 4
  br label %197

175:                                              ; preds = %159
  %176 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %177 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %15, align 8
  %178 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp* %176, i64 %179)
  %181 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %182 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %9, align 8
  %183 = load i8*, i8** %19, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @nfp_net_rx_give_one(%struct.nfp_net_dp* %181, %struct.nfp_net_rx_ring* %182, i8* %183, i32 %184)
  %186 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @skb_reserve(%struct.sk_buff* %186, i32 %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @skb_put(%struct.sk_buff* %189, i32 %190)
  %192 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %193 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %196 = call i32 @nfp_app_ctrl_rx(i32 %194, %struct.sk_buff* %195)
  store i32 1, i32* %5, align 4
  br label %197

197:                                              ; preds = %175, %168, %153, %130, %39
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @D_IDX(%struct.nfp_net_rx_ring*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @nfp_net_dma_sync_cpu_rx(%struct.nfp_net_dp*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nfp_ctrl_meta_ok(%struct.nfp_net*, i64, i32) #1

declare dso_local i32 @nn_dp_warn(%struct.nfp_net_dp*, i8*, i32) #1

declare dso_local i32 @nfp_net_rx_drop(%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_buf*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @build_skb(i64, i32) #1

declare dso_local i8* @nfp_net_napi_alloc_one(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp*, i64) #1

declare dso_local i32 @nfp_net_rx_give_one(%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfp_app_ctrl_rx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
