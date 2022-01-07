; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_update_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_update_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ALX_MIB_RX_OK = common dso_local global i32 0, align 4
@ALX_MIB_RX_BCAST = common dso_local global i32 0, align 4
@ALX_MIB_RX_MCAST = common dso_local global i32 0, align 4
@ALX_MIB_RX_PAUSE = common dso_local global i32 0, align 4
@ALX_MIB_RX_CTRL = common dso_local global i32 0, align 4
@ALX_MIB_RX_FCS_ERR = common dso_local global i32 0, align 4
@ALX_MIB_RX_LEN_ERR = common dso_local global i32 0, align 4
@ALX_MIB_RX_BYTE_CNT = common dso_local global i32 0, align 4
@ALX_MIB_RX_RUNT = common dso_local global i32 0, align 4
@ALX_MIB_RX_FRAG = common dso_local global i32 0, align 4
@ALX_MIB_RX_SZ_64B = common dso_local global i32 0, align 4
@ALX_MIB_RX_SZ_127B = common dso_local global i32 0, align 4
@ALX_MIB_RX_SZ_255B = common dso_local global i32 0, align 4
@ALX_MIB_RX_SZ_511B = common dso_local global i32 0, align 4
@ALX_MIB_RX_SZ_1023B = common dso_local global i32 0, align 4
@ALX_MIB_RX_SZ_1518B = common dso_local global i32 0, align 4
@ALX_MIB_RX_SZ_MAX = common dso_local global i32 0, align 4
@ALX_MIB_RX_OV_SZ = common dso_local global i32 0, align 4
@ALX_MIB_RX_OV_RXF = common dso_local global i32 0, align 4
@ALX_MIB_RX_OV_RRD = common dso_local global i32 0, align 4
@ALX_MIB_RX_ALIGN_ERR = common dso_local global i32 0, align 4
@ALX_MIB_RX_BCCNT = common dso_local global i32 0, align 4
@ALX_MIB_RX_MCCNT = common dso_local global i32 0, align 4
@ALX_MIB_RX_ERRADDR = common dso_local global i32 0, align 4
@ALX_MIB_TX_OK = common dso_local global i32 0, align 4
@ALX_MIB_TX_BCAST = common dso_local global i32 0, align 4
@ALX_MIB_TX_MCAST = common dso_local global i32 0, align 4
@ALX_MIB_TX_PAUSE = common dso_local global i32 0, align 4
@ALX_MIB_TX_EXC_DEFER = common dso_local global i32 0, align 4
@ALX_MIB_TX_CTRL = common dso_local global i32 0, align 4
@ALX_MIB_TX_DEFER = common dso_local global i32 0, align 4
@ALX_MIB_TX_BYTE_CNT = common dso_local global i32 0, align 4
@ALX_MIB_TX_SZ_64B = common dso_local global i32 0, align 4
@ALX_MIB_TX_SZ_127B = common dso_local global i32 0, align 4
@ALX_MIB_TX_SZ_255B = common dso_local global i32 0, align 4
@ALX_MIB_TX_SZ_511B = common dso_local global i32 0, align 4
@ALX_MIB_TX_SZ_1023B = common dso_local global i32 0, align 4
@ALX_MIB_TX_SZ_1518B = common dso_local global i32 0, align 4
@ALX_MIB_TX_SZ_MAX = common dso_local global i32 0, align 4
@ALX_MIB_TX_SINGLE_COL = common dso_local global i32 0, align 4
@ALX_MIB_TX_MULTI_COL = common dso_local global i32 0, align 4
@ALX_MIB_TX_LATE_COL = common dso_local global i32 0, align 4
@ALX_MIB_TX_ABORT_COL = common dso_local global i32 0, align 4
@ALX_MIB_TX_UNDERRUN = common dso_local global i32 0, align 4
@ALX_MIB_TX_TRD_EOP = common dso_local global i32 0, align 4
@ALX_MIB_TX_LEN_ERR = common dso_local global i32 0, align 4
@ALX_MIB_TX_TRUNC = common dso_local global i32 0, align 4
@ALX_MIB_TX_BCCNT = common dso_local global i32 0, align 4
@ALX_MIB_TX_MCCNT = common dso_local global i32 0, align 4
@ALX_MIB_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alx_update_hw_stats(%struct.alx_hw* %0) #0 {
  %2 = alloca %struct.alx_hw*, align 8
  store %struct.alx_hw* %0, %struct.alx_hw** %2, align 8
  %3 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %4 = load i32, i32* @ALX_MIB_RX_OK, align 4
  %5 = call i64 @alx_read_mem32(%struct.alx_hw* %3, i32 %4)
  %6 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %7 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 49
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, %5
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %14 = load i32, i32* @ALX_MIB_RX_BCAST, align 4
  %15 = call i64 @alx_read_mem32(%struct.alx_hw* %13, i32 %14)
  %16 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %17 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 48
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %15
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 4
  %23 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %24 = load i32, i32* @ALX_MIB_RX_MCAST, align 4
  %25 = call i64 @alx_read_mem32(%struct.alx_hw* %23, i32 %24)
  %26 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %27 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 47
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %25
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %34 = load i32, i32* @ALX_MIB_RX_PAUSE, align 4
  %35 = call i64 @alx_read_mem32(%struct.alx_hw* %33, i32 %34)
  %36 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %37 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 46
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %44 = load i32, i32* @ALX_MIB_RX_CTRL, align 4
  %45 = call i64 @alx_read_mem32(%struct.alx_hw* %43, i32 %44)
  %46 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %47 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 45
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %45
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %54 = load i32, i32* @ALX_MIB_RX_FCS_ERR, align 4
  %55 = call i64 @alx_read_mem32(%struct.alx_hw* %53, i32 %54)
  %56 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %57 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 44
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %55
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %64 = load i32, i32* @ALX_MIB_RX_LEN_ERR, align 4
  %65 = call i64 @alx_read_mem32(%struct.alx_hw* %63, i32 %64)
  %66 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %67 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 43
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %65
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %74 = load i32, i32* @ALX_MIB_RX_BYTE_CNT, align 4
  %75 = call i64 @alx_read_mem32(%struct.alx_hw* %73, i32 %74)
  %76 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %77 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 42
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %75
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %84 = load i32, i32* @ALX_MIB_RX_RUNT, align 4
  %85 = call i64 @alx_read_mem32(%struct.alx_hw* %83, i32 %84)
  %86 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %87 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 41
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %85
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %94 = load i32, i32* @ALX_MIB_RX_FRAG, align 4
  %95 = call i64 @alx_read_mem32(%struct.alx_hw* %93, i32 %94)
  %96 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %97 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 40
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %95
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %104 = load i32, i32* @ALX_MIB_RX_SZ_64B, align 4
  %105 = call i64 @alx_read_mem32(%struct.alx_hw* %103, i32 %104)
  %106 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %107 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 39
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %105
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  %113 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %114 = load i32, i32* @ALX_MIB_RX_SZ_127B, align 4
  %115 = call i64 @alx_read_mem32(%struct.alx_hw* %113, i32 %114)
  %116 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %117 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 38
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %120, %115
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %118, align 4
  %123 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %124 = load i32, i32* @ALX_MIB_RX_SZ_255B, align 4
  %125 = call i64 @alx_read_mem32(%struct.alx_hw* %123, i32 %124)
  %126 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %127 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 37
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %125
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %134 = load i32, i32* @ALX_MIB_RX_SZ_511B, align 4
  %135 = call i64 @alx_read_mem32(%struct.alx_hw* %133, i32 %134)
  %136 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %137 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 36
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %135
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %144 = load i32, i32* @ALX_MIB_RX_SZ_1023B, align 4
  %145 = call i64 @alx_read_mem32(%struct.alx_hw* %143, i32 %144)
  %146 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %147 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 35
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %145
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %154 = load i32, i32* @ALX_MIB_RX_SZ_1518B, align 4
  %155 = call i64 @alx_read_mem32(%struct.alx_hw* %153, i32 %154)
  %156 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %157 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 34
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %155
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 4
  %163 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %164 = load i32, i32* @ALX_MIB_RX_SZ_MAX, align 4
  %165 = call i64 @alx_read_mem32(%struct.alx_hw* %163, i32 %164)
  %166 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %167 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 33
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %170, %165
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %168, align 4
  %173 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %174 = load i32, i32* @ALX_MIB_RX_OV_SZ, align 4
  %175 = call i64 @alx_read_mem32(%struct.alx_hw* %173, i32 %174)
  %176 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %177 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 32
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %175
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 4
  %183 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %184 = load i32, i32* @ALX_MIB_RX_OV_RXF, align 4
  %185 = call i64 @alx_read_mem32(%struct.alx_hw* %183, i32 %184)
  %186 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %187 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 31
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %185
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  %193 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %194 = load i32, i32* @ALX_MIB_RX_OV_RRD, align 4
  %195 = call i64 @alx_read_mem32(%struct.alx_hw* %193, i32 %194)
  %196 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %197 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 30
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = add nsw i64 %200, %195
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %198, align 4
  %203 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %204 = load i32, i32* @ALX_MIB_RX_ALIGN_ERR, align 4
  %205 = call i64 @alx_read_mem32(%struct.alx_hw* %203, i32 %204)
  %206 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %207 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 29
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %205
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %208, align 4
  %213 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %214 = load i32, i32* @ALX_MIB_RX_BCCNT, align 4
  %215 = call i64 @alx_read_mem32(%struct.alx_hw* %213, i32 %214)
  %216 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %217 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 28
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %215
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 4
  %223 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %224 = load i32, i32* @ALX_MIB_RX_MCCNT, align 4
  %225 = call i64 @alx_read_mem32(%struct.alx_hw* %223, i32 %224)
  %226 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %227 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 27
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %225
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %228, align 4
  %233 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %234 = load i32, i32* @ALX_MIB_RX_ERRADDR, align 4
  %235 = call i64 @alx_read_mem32(%struct.alx_hw* %233, i32 %234)
  %236 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %237 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 26
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %235
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %238, align 4
  %243 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %244 = load i32, i32* @ALX_MIB_TX_OK, align 4
  %245 = call i64 @alx_read_mem32(%struct.alx_hw* %243, i32 %244)
  %246 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %247 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 25
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %250, %245
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %248, align 4
  %253 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %254 = load i32, i32* @ALX_MIB_TX_BCAST, align 4
  %255 = call i64 @alx_read_mem32(%struct.alx_hw* %253, i32 %254)
  %256 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %257 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 24
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %255
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 4
  %263 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %264 = load i32, i32* @ALX_MIB_TX_MCAST, align 4
  %265 = call i64 @alx_read_mem32(%struct.alx_hw* %263, i32 %264)
  %266 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %267 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 23
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %265
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %268, align 4
  %273 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %274 = load i32, i32* @ALX_MIB_TX_PAUSE, align 4
  %275 = call i64 @alx_read_mem32(%struct.alx_hw* %273, i32 %274)
  %276 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %277 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 22
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %280, %275
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %278, align 4
  %283 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %284 = load i32, i32* @ALX_MIB_TX_EXC_DEFER, align 4
  %285 = call i64 @alx_read_mem32(%struct.alx_hw* %283, i32 %284)
  %286 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %287 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 21
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %290, %285
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %288, align 4
  %293 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %294 = load i32, i32* @ALX_MIB_TX_CTRL, align 4
  %295 = call i64 @alx_read_mem32(%struct.alx_hw* %293, i32 %294)
  %296 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %297 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 20
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = add nsw i64 %300, %295
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %298, align 4
  %303 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %304 = load i32, i32* @ALX_MIB_TX_DEFER, align 4
  %305 = call i64 @alx_read_mem32(%struct.alx_hw* %303, i32 %304)
  %306 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %307 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 19
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %310, %305
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %308, align 4
  %313 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %314 = load i32, i32* @ALX_MIB_TX_BYTE_CNT, align 4
  %315 = call i64 @alx_read_mem32(%struct.alx_hw* %313, i32 %314)
  %316 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %317 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 18
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %320, %315
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %318, align 4
  %323 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %324 = load i32, i32* @ALX_MIB_TX_SZ_64B, align 4
  %325 = call i64 @alx_read_mem32(%struct.alx_hw* %323, i32 %324)
  %326 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %327 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i32 0, i32 17
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %330, %325
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %328, align 4
  %333 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %334 = load i32, i32* @ALX_MIB_TX_SZ_127B, align 4
  %335 = call i64 @alx_read_mem32(%struct.alx_hw* %333, i32 %334)
  %336 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %337 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 16
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = add nsw i64 %340, %335
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %338, align 4
  %343 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %344 = load i32, i32* @ALX_MIB_TX_SZ_255B, align 4
  %345 = call i64 @alx_read_mem32(%struct.alx_hw* %343, i32 %344)
  %346 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %347 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 15
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = add nsw i64 %350, %345
  %352 = trunc i64 %351 to i32
  store i32 %352, i32* %348, align 4
  %353 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %354 = load i32, i32* @ALX_MIB_TX_SZ_511B, align 4
  %355 = call i64 @alx_read_mem32(%struct.alx_hw* %353, i32 %354)
  %356 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %357 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i32 0, i32 14
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = add nsw i64 %360, %355
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %358, align 4
  %363 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %364 = load i32, i32* @ALX_MIB_TX_SZ_1023B, align 4
  %365 = call i64 @alx_read_mem32(%struct.alx_hw* %363, i32 %364)
  %366 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %367 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %367, i32 0, i32 13
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %370, %365
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %368, align 4
  %373 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %374 = load i32, i32* @ALX_MIB_TX_SZ_1518B, align 4
  %375 = call i64 @alx_read_mem32(%struct.alx_hw* %373, i32 %374)
  %376 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %377 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 12
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = add nsw i64 %380, %375
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %378, align 4
  %383 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %384 = load i32, i32* @ALX_MIB_TX_SZ_MAX, align 4
  %385 = call i64 @alx_read_mem32(%struct.alx_hw* %383, i32 %384)
  %386 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %387 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %387, i32 0, i32 11
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %390, %385
  %392 = trunc i64 %391 to i32
  store i32 %392, i32* %388, align 4
  %393 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %394 = load i32, i32* @ALX_MIB_TX_SINGLE_COL, align 4
  %395 = call i64 @alx_read_mem32(%struct.alx_hw* %393, i32 %394)
  %396 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %397 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 10
  %399 = load i32, i32* %398, align 4
  %400 = sext i32 %399 to i64
  %401 = add nsw i64 %400, %395
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %398, align 4
  %403 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %404 = load i32, i32* @ALX_MIB_TX_MULTI_COL, align 4
  %405 = call i64 @alx_read_mem32(%struct.alx_hw* %403, i32 %404)
  %406 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %407 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 9
  %409 = load i32, i32* %408, align 4
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %410, %405
  %412 = trunc i64 %411 to i32
  store i32 %412, i32* %408, align 4
  %413 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %414 = load i32, i32* @ALX_MIB_TX_LATE_COL, align 4
  %415 = call i64 @alx_read_mem32(%struct.alx_hw* %413, i32 %414)
  %416 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %417 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  %421 = add nsw i64 %420, %415
  %422 = trunc i64 %421 to i32
  store i32 %422, i32* %418, align 4
  %423 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %424 = load i32, i32* @ALX_MIB_TX_ABORT_COL, align 4
  %425 = call i64 @alx_read_mem32(%struct.alx_hw* %423, i32 %424)
  %426 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %427 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %427, i32 0, i32 7
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  %431 = add nsw i64 %430, %425
  %432 = trunc i64 %431 to i32
  store i32 %432, i32* %428, align 4
  %433 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %434 = load i32, i32* @ALX_MIB_TX_UNDERRUN, align 4
  %435 = call i64 @alx_read_mem32(%struct.alx_hw* %433, i32 %434)
  %436 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %437 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %437, i32 0, i32 6
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  %441 = add nsw i64 %440, %435
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %438, align 4
  %443 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %444 = load i32, i32* @ALX_MIB_TX_TRD_EOP, align 4
  %445 = call i64 @alx_read_mem32(%struct.alx_hw* %443, i32 %444)
  %446 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %447 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %447, i32 0, i32 5
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = add nsw i64 %450, %445
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %448, align 4
  %453 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %454 = load i32, i32* @ALX_MIB_TX_LEN_ERR, align 4
  %455 = call i64 @alx_read_mem32(%struct.alx_hw* %453, i32 %454)
  %456 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %457 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %457, i32 0, i32 4
  %459 = load i32, i32* %458, align 4
  %460 = sext i32 %459 to i64
  %461 = add nsw i64 %460, %455
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %458, align 4
  %463 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %464 = load i32, i32* @ALX_MIB_TX_TRUNC, align 4
  %465 = call i64 @alx_read_mem32(%struct.alx_hw* %463, i32 %464)
  %466 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %467 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = add nsw i64 %470, %465
  %472 = trunc i64 %471 to i32
  store i32 %472, i32* %468, align 4
  %473 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %474 = load i32, i32* @ALX_MIB_TX_BCCNT, align 4
  %475 = call i64 @alx_read_mem32(%struct.alx_hw* %473, i32 %474)
  %476 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %477 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  %481 = add nsw i64 %480, %475
  %482 = trunc i64 %481 to i32
  store i32 %482, i32* %478, align 4
  %483 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %484 = load i32, i32* @ALX_MIB_TX_MCCNT, align 4
  %485 = call i64 @alx_read_mem32(%struct.alx_hw* %483, i32 %484)
  %486 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %487 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  %491 = add nsw i64 %490, %485
  %492 = trunc i64 %491 to i32
  store i32 %492, i32* %488, align 4
  %493 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %494 = load i32, i32* @ALX_MIB_UPDATE, align 4
  %495 = call i64 @alx_read_mem32(%struct.alx_hw* %493, i32 %494)
  %496 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %497 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = add nsw i64 %500, %495
  %502 = trunc i64 %501 to i32
  store i32 %502, i32* %498, align 4
  ret void
}

declare dso_local i64 @alx_read_mem32(%struct.alx_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
