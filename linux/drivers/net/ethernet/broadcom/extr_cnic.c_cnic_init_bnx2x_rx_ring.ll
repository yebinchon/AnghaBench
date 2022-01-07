; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2x_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_init_bnx2x_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, i32*, i32, %struct.TYPE_7__*, %struct.host_sp_status_block*, %struct.cnic_uio_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.host_sp_status_block = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.cnic_uio_dev = type { i32, i32, i64 }
%struct.client_init_ramrod_data = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i64, i8*, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8* }
%struct.bnx2x = type { i32 }
%struct.eth_rx_bd = type { i8*, i8* }
%struct.eth_rx_cqe_next_page = type { i8*, i8* }

@CNIC_PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2X_MAX_RX_DESC_CNT = common dso_local global i32 0, align 4
@BNX2X_MAX_RCQ_DESC_CNT = common dso_local global i32 0, align 4
@HC_SP_INDEX_ETH_ISCSI_RX_CQ_CONS = common dso_local global i64 0, align 8
@BNX2X_DEF_SB_ID = common dso_local global i32 0, align 4
@L1_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.client_init_ramrod_data*)* @cnic_init_bnx2x_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_init_bnx2x_rx_ring(%struct.cnic_dev* %0, %struct.client_init_ramrod_data* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.client_init_ramrod_data*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.cnic_uio_dev*, align 8
  %8 = alloca %struct.eth_rx_bd*, align 8
  %9 = alloca %struct.eth_rx_cqe_next_page*, align 8
  %10 = alloca %struct.host_sp_status_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.client_init_ramrod_data* %1, %struct.client_init_ramrod_data** %4, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 1
  %20 = load %struct.cnic_local*, %struct.cnic_local** %19, align 8
  store %struct.cnic_local* %20, %struct.cnic_local** %5, align 8
  %21 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %22 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.bnx2x* @netdev_priv(i32 %23)
  store %struct.bnx2x* %24, %struct.bnx2x** %6, align 8
  %25 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %26 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %25, i32 0, i32 6
  %27 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %26, align 8
  store %struct.cnic_uio_dev* %27, %struct.cnic_uio_dev** %7, align 8
  %28 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = inttoptr i64 %33 to %struct.eth_rx_bd*
  store %struct.eth_rx_bd* %34, %struct.eth_rx_bd** %8, align 8
  %35 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %7, align 8
  %36 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %39 = mul nsw i32 2, %38
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = inttoptr i64 %41 to %struct.eth_rx_cqe_next_page*
  store %struct.eth_rx_cqe_next_page* %42, %struct.eth_rx_cqe_next_page** %9, align 8
  %43 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %44 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %43, i32 0, i32 5
  %45 = load %struct.host_sp_status_block*, %struct.host_sp_status_block** %44, align 8
  store %struct.host_sp_status_block* %45, %struct.host_sp_status_block** %10, align 8
  %46 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @BNX2X_CL_QZONE_ID(%struct.bnx2x* %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %7, align 8
  %55 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %59 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %62 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %66 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %69 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 14
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %74 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i8* %72, i8** %75, align 8
  %76 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %77 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %80 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %111, %2
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @BNX2X_MAX_RX_DESC_CNT, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %89 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = srem i32 %87, %90
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  %93 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %7, align 8
  %94 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %98 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  %101 = add nsw i32 %95, %100
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = ashr i32 %102, 32
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %8, align 8
  %106 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %105, i32 0, i32 1
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %8, align 8
  %110 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %86
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  %114 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %8, align 8
  %115 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %114, i32 1
  store %struct.eth_rx_bd* %115, %struct.eth_rx_bd** %8, align 8
  br label %82

116:                                              ; preds = %82
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %119 = add nsw i32 %117, %118
  %120 = ashr i32 %119, 32
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %8, align 8
  %124 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i8* @cpu_to_le32(i32 %125)
  %127 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %128 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 10
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  store i8* %126, i8** %130, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i8* @cpu_to_le32(i32 %134)
  %136 = load %struct.eth_rx_bd*, %struct.eth_rx_bd** %8, align 8
  %137 = getelementptr inbounds %struct.eth_rx_bd, %struct.eth_rx_bd* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %141 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 10
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i8* %139, i8** %143, align 8
  %144 = load i32, i32* @BNX2X_MAX_RCQ_DESC_CNT, align 4
  %145 = load %struct.eth_rx_cqe_next_page*, %struct.eth_rx_cqe_next_page** %9, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds %struct.eth_rx_cqe_next_page, %struct.eth_rx_cqe_next_page* %145, i64 %146
  store %struct.eth_rx_cqe_next_page* %147, %struct.eth_rx_cqe_next_page** %9, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %150 = mul nsw i32 2, %149
  %151 = add nsw i32 %148, %150
  %152 = ashr i32 %151, 32
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i8* @cpu_to_le32(i32 %153)
  %155 = load %struct.eth_rx_cqe_next_page*, %struct.eth_rx_cqe_next_page** %9, align 8
  %156 = getelementptr inbounds %struct.eth_rx_cqe_next_page, %struct.eth_rx_cqe_next_page* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %160 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 9
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  store i8* %158, i8** %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* @CNIC_PAGE_SIZE, align 4
  %165 = mul nsw i32 2, %164
  %166 = add nsw i32 %163, %165
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = load %struct.eth_rx_cqe_next_page*, %struct.eth_rx_cqe_next_page** %9, align 8
  %170 = getelementptr inbounds %struct.eth_rx_cqe_next_page, %struct.eth_rx_cqe_next_page* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i8* @cpu_to_le32(i32 %171)
  %173 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %174 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 9
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i8* %172, i8** %176, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %179 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 8
  %181 = load i64, i64* @HC_SP_INDEX_ETH_ISCSI_RX_CQ_CONS, align 8
  %182 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %183 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  store i64 %181, i64* %184, align 8
  %185 = load i32, i32* @BNX2X_DEF_SB_ID, align 4
  %186 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %187 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 8
  store i32 %185, i32* %188, align 4
  %189 = load i32, i32* @L1_CACHE_SHIFT, align 4
  %190 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %191 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 7
  store i32 %189, i32* %192, align 8
  %193 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %194 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i8* @cpu_to_le16(i32 %195)
  %197 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %198 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 6
  store i8* %196, i8** %199, align 8
  %200 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %201 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  store i32 1, i32* %202, align 8
  %203 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %204 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 3
  store i32 1, i32* %205, align 4
  %206 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %207 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 5
  store i64 0, i64* %208, align 8
  %209 = load %struct.client_init_ramrod_data*, %struct.client_init_ramrod_data** %4, align 8
  %210 = getelementptr inbounds %struct.client_init_ramrod_data, %struct.client_init_ramrod_data* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 4
  store i32 65535, i32* %211, align 8
  %212 = load %struct.host_sp_status_block*, %struct.host_sp_status_block** %10, align 8
  %213 = getelementptr inbounds %struct.host_sp_status_block, %struct.host_sp_status_block* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @HC_SP_INDEX_ETH_ISCSI_RX_CQ_CONS, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %219 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %218, i32 0, i32 2
  store i32* %217, i32** %219, align 8
  %220 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %221 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %225 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @BNX2X_CL_QZONE_ID(%struct.bnx2x*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
