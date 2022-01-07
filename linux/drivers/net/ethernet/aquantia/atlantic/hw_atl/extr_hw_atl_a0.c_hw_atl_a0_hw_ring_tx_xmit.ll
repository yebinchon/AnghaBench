; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_ring_tx_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_ring_tx_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_ring_s = type { i64, %struct.aq_ring_buff_s*, i32* }
%struct.aq_ring_buff_s = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hw_atl_txd_s = type { i32, i32, i64 }

@HW_ATL_A0_TXD_SIZE = common dso_local global i64 0, align 8
@HW_ATL_A0_TXD_CTL_CMD_TCP = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_DESC_TYPE_TXC = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_CMD_IPV6 = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_BLEN = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_DESC_TYPE_TXD = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL2_LEN = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_CMD_LSO = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL2_CTX_EN = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_CMD_IPCSO = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_CMD_TUCSO = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_EOP = common dso_local global i32 0, align 4
@HW_ATL_A0_TXD_CTL_CMD_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, i32)* @hw_atl_a0_hw_ring_tx_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_a0_hw_ring_tx_xmit(%struct.aq_hw_s* %0, %struct.aq_ring_s* %1, i32 %2) #0 {
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aq_ring_buff_s*, align 8
  %8 = alloca %struct.hw_atl_txd_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store %struct.aq_ring_s* %1, %struct.aq_ring_s** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.aq_ring_buff_s* null, %struct.aq_ring_buff_s** %7, align 8
  store %struct.hw_atl_txd_s* null, %struct.hw_atl_txd_s** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %14 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %13, i32 0, i32 1
  %15 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %14, align 8
  %16 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %17 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %15, i64 %18
  store %struct.aq_ring_buff_s* %19, %struct.aq_ring_buff_s** %7, align 8
  %20 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %21 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %26 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %25, i32 0, i32 13
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %31 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %37

33:                                               ; preds = %24, %3
  %34 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %35 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %227, %37
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %230

43:                                               ; preds = %39
  %44 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %45 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %48 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HW_ATL_A0_TXD_SIZE, align 8
  %51 = mul i64 %49, %50
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = bitcast i32* %52 to %struct.hw_atl_txd_s*
  store %struct.hw_atl_txd_s* %53, %struct.hw_atl_txd_s** %8, align 8
  %54 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %55 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %57 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %59 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %61 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %60, i32 0, i32 1
  %62 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %61, align 8
  %63 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %64 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %62, i64 %65
  store %struct.aq_ring_buff_s* %66, %struct.aq_ring_buff_s** %7, align 8
  %67 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %68 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %67, i32 0, i32 12
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %131

71:                                               ; preds = %43
  %72 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %73 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 31
  %76 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %77 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 24
  %80 = or i32 %75, %79
  %81 = load i32, i32* @HW_ATL_A0_TXD_CTL_CMD_TCP, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @HW_ATL_A0_TXD_CTL_DESC_TYPE_TXC, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %86 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %90 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %91, 16
  %93 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %94 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 8
  %97 = or i32 %92, %96
  %98 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %99 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = ashr i32 %100, 1
  %102 = or i32 %97, %101
  %103 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %104 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %108 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %111 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %109, %112
  %114 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %115 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* %10, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %120 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %121 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %120, i32 0, i32 11
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %71
  %125 = load i32, i32* @HW_ATL_A0_TXD_CTL_CMD_IPV6, align 4
  %126 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %127 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %71
  br label %219

131:                                              ; preds = %43
  %132 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %133 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %9, align 4
  %135 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %136 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %139 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* @HW_ATL_A0_TXD_CTL_BLEN, align 4
  %141 = load i32, i32* %9, align 4
  %142 = shl i32 %141, 4
  %143 = and i32 %140, %142
  %144 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %145 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load i32, i32* @HW_ATL_A0_TXD_CTL_DESC_TYPE_TXD, align 4
  %149 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %150 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i32, i32* @HW_ATL_A0_TXD_CTL2_LEN, align 4
  %154 = load i32, i32* %10, align 4
  %155 = shl i32 %154, 14
  %156 = and i32 %153, %155
  %157 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %158 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %131
  %164 = load i32, i32* @HW_ATL_A0_TXD_CTL_CMD_LSO, align 4
  %165 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %166 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* @HW_ATL_A0_TXD_CTL2_CTX_EN, align 4
  %170 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %171 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %163, %131
  %175 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %176 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %175, i32 0, i32 9
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load i32, i32* @HW_ATL_A0_TXD_CTL_CMD_IPCSO, align 4
  %181 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %182 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %179, %174
  %186 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %187 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %186, i32 0, i32 8
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %185
  %191 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %192 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %191, i32 0, i32 7
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190, %185
  %196 = load i32, i32* @HW_ATL_A0_TXD_CTL_CMD_TUCSO, align 4
  %197 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %198 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %195, %190
  %202 = load %struct.aq_ring_buff_s*, %struct.aq_ring_buff_s** %7, align 8
  %203 = getelementptr inbounds %struct.aq_ring_buff_s, %struct.aq_ring_buff_s* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @unlikely(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %201
  %208 = load i32, i32* @HW_ATL_A0_TXD_CTL_EOP, align 4
  %209 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %210 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* @HW_ATL_A0_TXD_CTL_CMD_WB, align 4
  %214 = load %struct.hw_atl_txd_s*, %struct.hw_atl_txd_s** %8, align 8
  %215 = getelementptr inbounds %struct.hw_atl_txd_s, %struct.hw_atl_txd_s* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %207, %201
  br label %219

219:                                              ; preds = %218, %130
  %220 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %221 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %222 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i64 @aq_ring_next_dx(%struct.aq_ring_s* %220, i64 %223)
  %225 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %226 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %219
  %228 = load i32, i32* %11, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %39

230:                                              ; preds = %39
  %231 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %232 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %233 = call i32 @hw_atl_a0_hw_tx_ring_tail_update(%struct.aq_hw_s* %231, %struct.aq_ring_s* %232)
  %234 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %235 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %234)
  ret i32 %235
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @aq_ring_next_dx(%struct.aq_ring_s*, i64) #1

declare dso_local i32 @hw_atl_a0_hw_tx_ring_tail_update(%struct.aq_hw_s*, %struct.aq_ring_s*) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
