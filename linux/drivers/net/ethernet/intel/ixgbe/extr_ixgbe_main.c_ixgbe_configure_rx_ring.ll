; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_configure_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i64, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ixgbe_ring = type { i32, i32, i32, %struct.TYPE_10__*, i32, i32, i64, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@ixgbe_zca_free = common dso_local global i32 0, align 4
@MEM_TYPE_ZERO_COPY = common dso_local global i32 0, align 4
@MEM_TYPE_PAGE_SHARED = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_RXDCTL_RLPMLMASK = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_RLPML_EN = common dso_local global i32 0, align 4
@__IXGBE_RX_3K_BUFFER = common dso_local global i32 0, align 4
@IXGBE_MAX_2K_FRAME_BUILD_SKB = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_configure_rx_ring(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %4, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 1
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %5, align 8
  %13 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %20 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %19, i32 0, i32 7
  %21 = call i32 @xdp_rxq_info_unreg_mem_model(i32* %20)
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %24 = call %struct.TYPE_10__* @ixgbe_xsk_umem(%struct.ixgbe_adapter* %22, %struct.ixgbe_ring* %23)
  %25 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %26 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %25, i32 0, i32 3
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %26, align 8
  %27 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %28 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %27, i32 0, i32 3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load i32, i32* @ixgbe_zca_free, align 4
  %33 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %34 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %37 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %36, i32 0, i32 7
  %38 = load i32, i32* @MEM_TYPE_ZERO_COPY, align 4
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %40 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %39, i32 0, i32 8
  %41 = call i32 @xdp_rxq_info_reg_mem_model(i32* %37, i32 %38, %struct.TYPE_9__* %40)
  %42 = call i32 @WARN_ON(i32 %41)
  br label %49

43:                                               ; preds = %2
  %44 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %44, i32 0, i32 7
  %46 = load i32, i32* @MEM_TYPE_PAGE_SHARED, align 4
  %47 = call i32 @xdp_rxq_info_reg_mem_model(i32* %45, i32 %46, %struct.TYPE_9__* null)
  %48 = call i32 @WARN_ON(i32 %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @IXGBE_RXDCTL(i32 %51)
  %53 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %50, i64 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @IXGBE_RXDCTL(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i64 %60, i32 %61)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %64 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %63)
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @IXGBE_RDBAL(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @DMA_BIT_MASK(i32 32)
  %70 = and i32 %68, %69
  %71 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i64 %67, i32 %70)
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @IXGBE_RDBAH(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 32
  %77 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %72, i64 %74, i32 %76)
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @IXGBE_RDLEN(i32 %79)
  %81 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %82 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %78, i64 %80, i32 %86)
  %88 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %89 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %88)
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @IXGBE_RDH(i32 %91)
  %93 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %90, i64 %92, i32 0)
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @IXGBE_RDT(i32 %95)
  %97 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %94, i64 %96, i32 0)
  %98 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @IXGBE_RDT(i32 %101)
  %103 = add nsw i64 %100, %102
  %104 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %105 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %104, i32 0, i32 6
  store i64 %103, i64* %105, align 8
  %106 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %107 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %108 = call i32 @ixgbe_configure_srrctl(%struct.ixgbe_adapter* %106, %struct.ixgbe_ring* %107)
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %111 = call i32 @ixgbe_configure_rscctl(%struct.ixgbe_adapter* %109, %struct.ixgbe_ring* %110)
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %49
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, -4194304
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, 525344
  store i32 %122, i32* %8, align 4
  br label %154

123:                                              ; preds = %49
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %123
  %131 = load i32, i32* @IXGBE_RXDCTL_RLPMLMASK, align 4
  %132 = load i32, i32* @IXGBE_RXDCTL_RLPML_EN, align 4
  %133 = or i32 %131, %132
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %138 = call i64 @ring_uses_build_skb(%struct.ixgbe_ring* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %130
  %141 = load i32, i32* @__IXGBE_RX_3K_BUFFER, align 4
  %142 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %143 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %142, i32 0, i32 5
  %144 = call i32 @test_bit(i32 %141, i32* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* @IXGBE_MAX_2K_FRAME_BUILD_SKB, align 4
  %148 = load i32, i32* @IXGBE_RXDCTL_RLPML_EN, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %8, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %146, %140, %130
  br label %153

153:                                              ; preds = %152, %123
  br label %154

154:                                              ; preds = %153, %118
  %155 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %156 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %155, i32 0, i32 3
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = icmp ne %struct.TYPE_10__* %157, null
  br i1 %158, label %159, label %188

159:                                              ; preds = %154
  %160 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %161 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %159
  %167 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %168 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %167, i32 0, i32 3
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @XDP_PACKET_HEADROOM, align 4
  %173 = sub nsw i32 %171, %172
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* @IXGBE_RXDCTL_RLPMLMASK, align 4
  %175 = load i32, i32* @IXGBE_RXDCTL_RLPML_EN, align 4
  %176 = or i32 %174, %175
  %177 = xor i32 %176, -1
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %178, %177
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @IXGBE_RXDCTL_RLPML_EN, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %187 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %166, %159, %154
  %189 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %190 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %193 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 4, %195
  %197 = trunc i64 %196 to i32
  %198 = call i32 @memset(i32 %191, i32 0, i32 %197)
  %199 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %200 = call %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring* %199, i32 0)
  store %union.ixgbe_adv_rx_desc* %200, %union.ixgbe_adv_rx_desc** %6, align 8
  %201 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %202 = bitcast %union.ixgbe_adv_rx_desc* %201 to %struct.TYPE_8__*
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  %205 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %206 = load i32, i32* %8, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %8, align 4
  %208 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i64 @IXGBE_RXDCTL(i32 %209)
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %208, i64 %210, i32 %211)
  %213 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %214 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %215 = call i32 @ixgbe_rx_desc_queue_enable(%struct.ixgbe_adapter* %213, %struct.ixgbe_ring* %214)
  %216 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %217 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %216, i32 0, i32 3
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = icmp ne %struct.TYPE_10__* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %188
  %221 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %222 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %223 = call i32 @ixgbe_desc_unused(%struct.ixgbe_ring* %222)
  %224 = call i32 @ixgbe_alloc_rx_buffers_zc(%struct.ixgbe_ring* %221, i32 %223)
  br label %230

225:                                              ; preds = %188
  %226 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %227 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %228 = call i32 @ixgbe_desc_unused(%struct.ixgbe_ring* %227)
  %229 = call i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring* %226, i32 %228)
  br label %230

230:                                              ; preds = %225, %220
  ret void
}

declare dso_local i32 @xdp_rxq_info_unreg_mem_model(i32*) #1

declare dso_local %struct.TYPE_10__* @ixgbe_xsk_umem(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i64) #1

declare dso_local i64 @IXGBE_RXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i64, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i64 @IXGBE_RDBAL(i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @IXGBE_RDBAH(i32) #1

declare dso_local i64 @IXGBE_RDLEN(i32) #1

declare dso_local i64 @IXGBE_RDH(i32) #1

declare dso_local i64 @IXGBE_RDT(i32) #1

declare dso_local i32 @ixgbe_configure_srrctl(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_configure_rscctl(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i64 @ring_uses_build_skb(%struct.ixgbe_ring*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %union.ixgbe_adv_rx_desc* @IXGBE_RX_DESC(%struct.ixgbe_ring*, i32) #1

declare dso_local i32 @ixgbe_rx_desc_queue_enable(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_alloc_rx_buffers_zc(%struct.ixgbe_ring*, i32) #1

declare dso_local i32 @ixgbe_desc_unused(%struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_alloc_rx_buffers(%struct.ixgbe_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
