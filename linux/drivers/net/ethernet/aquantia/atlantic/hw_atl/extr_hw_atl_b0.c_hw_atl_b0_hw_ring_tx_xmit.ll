; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_tx_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_tx_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_ring_s = type { i64, %struct.aq_ring_buff_s*, i32* }
%struct.aq_ring_buff_s = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hw_atl_txd_s = type { i32, i32, i64 }

@HW_ATL_B0_TXD_SIZE = common dso_local global i64 0, align 8
@HW_ATL_B0_TXD_CTL_CMD_TCP = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_DESC_TYPE_TXC = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_CMD_IPV6 = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_BLEN = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_DESC_TYPE_TXD = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL2_LEN = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL2_CTX_EN = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_CMD_LSO = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_CMD_IPCSO = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_CMD_TUCSO = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_CMD_VLAN = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_EOP = common dso_local global i32 0, align 4
@HW_ATL_B0_TXD_CTL_CMD_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32)* @hw_atl_b0_hw_ring_tx_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_ring_tx_xmit(%struct.aq_hw_s* %0, %struct.aq_ring_s* %1, i32 %2) #0 {
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aq_ring_buff_s*, align 8
  %8 = alloca %struct.hw_atl_txd_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store %struct.aq_ring_s* %1, %struct.aq_ring_s** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.aq_ring_buff_s* null, %struct.aq_ring_buff_s** %7, align 8
  store %struct.hw_atl_txd_s* null, %struct.hw_atl_txd_s** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %15 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %14, i32 0, i32 1
  %16 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %15, align 8
  %17 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %18 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %16, i64 %19
  store %struct.aq_ring_buff_s* %20, %struct.aq_ring_buff_s** %7, align 8
  %21 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %22 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %27 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %26, i32 0, i32 15
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %32 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  br label %38

34:                                               ; preds = %25, %3
  %35 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %36 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %282, %38
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %285

44:                                               ; preds = %40
  %45 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %46 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %49 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HW_ATL_B0_TXD_SIZE, align 8
  %52 = mul i64 %50, %51
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = bitcast i32* %53 to %struct.hw_atl_txd_s*
  store %struct.hw_atl_txd_s* %54, %struct.hw_atl_txd_s** %8, align 8
  %55 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %56 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %58 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %60 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %62 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %61, i32 0, i32 1
  %63 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %62, align 8
  %64 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %65 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %63, i64 %66
  store %struct.aq_ring_buff_s* %67, %struct.aq_ring_buff_s** %7, align 8
  %68 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %69 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %68, i32 0, i32 13
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %141

72:                                               ; preds = %44
  %73 = load i32, i32* @HW_ATL_B0_TXD_CTL_CMD_TCP, align 4
  %74 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %75 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @HW_ATL_B0_TXD_CTL_DESC_TYPE_TXC, align 4
  %79 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %80 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %84 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 31
  %87 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %88 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 24
  %91 = or i32 %86, %90
  %92 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %93 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %97 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 %98, 16
  %100 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %101 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  store i32 1, i32* %13, align 4
  %104 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %105 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %108 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %106, %109
  %111 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %112 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %110, %113
  %115 = load i32, i32* %10, align 4
  %116 = sub i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %118 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %117, i32 0, i32 14
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %72
  %122 = load i32, i32* @HW_ATL_B0_TXD_CTL_CMD_IPV6, align 4
  %123 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %124 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %72
  %128 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %129 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 8
  %132 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %133 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = ashr i32 %134, 1
  %136 = or i32 %131, %135
  %137 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %138 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %127, %44
  %142 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %143 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %142, i32 0, i32 12
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %141
  %147 = load i32, i32* @HW_ATL_B0_TXD_CTL_DESC_TYPE_TXC, align 4
  %148 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %149 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %153 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %154, 4
  %156 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %157 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  store i32 1, i32* %12, align 4
  br label %160

160:                                              ; preds = %146, %141
  %161 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %162 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %161, i32 0, i32 13
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %274, label %165

165:                                              ; preds = %160
  %166 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %167 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %166, i32 0, i32 12
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %274, label %170

170:                                              ; preds = %165
  %171 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %172 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %9, align 4
  %174 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %175 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %174, i32 0, i32 11
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %178 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load i32, i32* @HW_ATL_B0_TXD_CTL_BLEN, align 4
  %180 = load i32, i32* %9, align 4
  %181 = shl i32 %180, 4
  %182 = and i32 %179, %181
  %183 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %184 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* @HW_ATL_B0_TXD_CTL_DESC_TYPE_TXD, align 4
  %188 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %189 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load i32, i32* @HW_ATL_B0_TXD_CTL2_LEN, align 4
  %193 = load i32, i32* %10, align 4
  %194 = shl i32 %193, 14
  %195 = and i32 %192, %194
  %196 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %197 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %170
  %203 = load i32, i32* %12, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %202, %170
  %206 = load i32, i32* @HW_ATL_B0_TXD_CTL2_CTX_EN, align 4
  %207 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %208 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %202
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i32, i32* @HW_ATL_B0_TXD_CTL_CMD_LSO, align 4
  %216 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %217 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %211
  %221 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %222 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %221, i32 0, i32 10
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* @HW_ATL_B0_TXD_CTL_CMD_IPCSO, align 4
  %227 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %228 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %225, %220
  %232 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %233 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %232, i32 0, i32 9
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %238 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %237, i32 0, i32 8
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %236, %231
  %242 = load i32, i32* @HW_ATL_B0_TXD_CTL_CMD_TUCSO, align 4
  %243 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %244 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %236
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %256

250:                                              ; preds = %247
  %251 = load i32, i32* @HW_ATL_B0_TXD_CTL_CMD_VLAN, align 4
  %252 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %253 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %250, %247
  %257 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %258 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %257, i32 0, i32 7
  %259 = load i64, i64* %258, align 8
  %260 = call i64 @unlikely(i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %256
  %263 = load i32, i32* @HW_ATL_B0_TXD_CTL_EOP, align 4
  %264 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %265 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load i32, i32* @HW_ATL_B0_TXD_CTL_CMD_WB, align 4
  %269 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %270 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = or i32 %271, %268
  store i32 %272, i32* %270, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %273

273:                                              ; preds = %262, %256
  br label %274

274:                                              ; preds = %273, %165, %160
  %275 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %276 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %277 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @aq_ring_next_dx(%struct.aq_ring_s* %275, i64 %278)
  %280 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %281 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %280, i32 0, i32 0
  store i64 %279, i64* %281, align 8
  br label %282

282:                                              ; preds = %274
  %283 = load i32, i32* %11, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %11, align 4
  br label %40

285:                                              ; preds = %40
  %286 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %287 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %288 = call i32 @hw_atl_b0_hw_tx_ring_tail_update(%struct.aq_hw_s* %286, %struct.aq_ring_s* %287)
  %289 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %290 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %289)
  ret i32 %290
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @aq_ring_next_dx(%struct.aq_ring_s*, i64) #1

declare dso_local i32 @hw_atl_b0_hw_tx_ring_tail_update(%struct.aq_hw_s*, %struct.aq_ring_s*) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
