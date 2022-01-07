; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_13__*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.octeon_mgmt = type { i32, i32, i8*, i32, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.cvmx_mixx_ctl = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i64 }
%union.cvmx_agl_gmx_inf_mode = type { i32 }
%union.cvmx_mixx_oring1 = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i8* }
%union.cvmx_mixx_iring1 = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i8* }
%union.cvmx_agl_gmx_rxx_frm_ctl = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%union.cvmx_mixx_irhwm = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%union.cvmx_mixx_orhwm = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%union.cvmx_mixx_intena = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.sockaddr = type { i32 }
%union.cvmx_agl_gmx_drv_ctl = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%union.cvmx_agl_prtx_ctl = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }

@OCTEON_MGMT_TX_RING_SIZE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@OCTEON_MGMT_RX_RING_SIZE = common dso_local global i8* null, align 8
@MIX_CTL = common dso_local global i64 0, align 8
@OCTEON_CN5XXX = common dso_local global i32 0, align 4
@CVMX_AGL_GMX_INF_MODE = common dso_local global i64 0, align 8
@OCTEON_CN56XX_PASS1_X = common dso_local global i32 0, align 4
@OCTEON_CN52XX_PASS1_X = common dso_local global i32 0, align 4
@CVMX_AGL_GMX_DRV_CTL = common dso_local global i64 0, align 8
@MIX_ORING1 = common dso_local global i64 0, align 8
@MIX_IRING1 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot initialize PHY on MIX%d.\0A\00", align 1
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@CVMX_AGL_GMX_TX_IFG = common dso_local global i64 0, align 8
@AGL_GMX_RX_STATS_CTL = common dso_local global i64 0, align 8
@AGL_GMX_RX_STATS_PKTS_DRP = common dso_local global i64 0, align 8
@AGL_GMX_RX_STATS_PKTS_BAD = common dso_local global i64 0, align 8
@AGL_GMX_TX_STATS_CTL = common dso_local global i64 0, align 8
@AGL_GMX_TX_STAT0 = common dso_local global i64 0, align 8
@AGL_GMX_TX_STAT1 = common dso_local global i64 0, align 8
@MIX_ISR = common dso_local global i64 0, align 8
@octeon_mgmt_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"request_irq(%d) failed.\0A\00", align 1
@MIX_IRHWM = common dso_local global i64 0, align 8
@MIX_ORHWM = common dso_local global i64 0, align 8
@MIX_INTENA = common dso_local global i64 0, align 8
@AGL_GMX_RX_FRM_CTL = common dso_local global i64 0, align 8
@NS_PER_PHY_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @octeon_mgmt_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mgmt_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.octeon_mgmt*, align 8
  %5 = alloca %union.cvmx_mixx_ctl, align 8
  %6 = alloca %union.cvmx_agl_gmx_inf_mode, align 4
  %7 = alloca %union.cvmx_mixx_oring1, align 8
  %8 = alloca %union.cvmx_mixx_iring1, align 8
  %9 = alloca %union.cvmx_agl_gmx_rxx_frm_ctl, align 8
  %10 = alloca %union.cvmx_mixx_irhwm, align 8
  %11 = alloca %union.cvmx_mixx_orhwm, align 8
  %12 = alloca %union.cvmx_mixx_intena, align 4
  %13 = alloca %struct.sockaddr, align 4
  %14 = alloca %union.cvmx_agl_gmx_drv_ctl, align 4
  %15 = alloca %union.cvmx_agl_prtx_ctl, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %17)
  store %struct.octeon_mgmt* %18, %struct.octeon_mgmt** %4, align 8
  %19 = load i8*, i8** @OCTEON_MGMT_TX_RING_SIZE, align 8
  %20 = call i32 @ring_size_to_bytes(i8* %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 %20, i32 %21)
  %23 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %24 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %26 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %561

32:                                               ; preds = %1
  %33 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %37 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @OCTEON_MGMT_TX_RING_SIZE, align 8
  %40 = call i32 @ring_size_to_bytes(i8* %39)
  %41 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %42 = call i8* @dma_map_single(i32 %35, i8* %38, i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %45 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %47 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %46, i32 0, i32 19
  store i64 0, i64* %47, align 8
  %48 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %49 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %48, i32 0, i32 18
  store i64 0, i64* %49, align 8
  %50 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %51 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %50, i32 0, i32 17
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** @OCTEON_MGMT_RX_RING_SIZE, align 8
  %53 = call i32 @ring_size_to_bytes(i8* %52)
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 %53, i32 %54)
  %56 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %57 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %59 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %32
  br label %544

63:                                               ; preds = %32
  %64 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %65 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %68 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** @OCTEON_MGMT_RX_RING_SIZE, align 8
  %71 = call i32 @ring_size_to_bytes(i8* %70)
  %72 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %73 = call i8* @dma_map_single(i32 %66, i8* %69, i32 %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %76 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %78 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %77, i32 0, i32 16
  store i64 0, i64* %78, align 8
  %79 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %80 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %79, i32 0, i32 15
  store i64 0, i64* %80, align 8
  %81 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %82 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %81, i32 0, i32 14
  store i64 0, i64* %82, align 8
  %83 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %84 = call i32 @octeon_mgmt_reset_hw(%struct.octeon_mgmt* %83)
  %85 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %86 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MIX_CTL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @cvmx_read_csr(i64 %89)
  %91 = bitcast %union.cvmx_mixx_ctl* %5 to i32*
  store i32 %90, i32* %91, align 8
  %92 = bitcast %union.cvmx_mixx_ctl* %5 to %struct.TYPE_18__*
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %63
  %97 = bitcast %union.cvmx_mixx_ctl* %5 to %struct.TYPE_18__*
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 5
  store i64 0, i64* %98, align 8
  %99 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %100 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %99, i32 0, i32 10
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MIX_CTL, align 8
  %103 = add nsw i64 %101, %102
  %104 = bitcast %union.cvmx_mixx_ctl* %5 to i32*
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @cvmx_write_csr(i64 %103, i32 %105)
  br label %107

107:                                              ; preds = %115, %96
  %108 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %109 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @MIX_CTL, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @cvmx_read_csr(i64 %112)
  %114 = bitcast %union.cvmx_mixx_ctl* %5 to i32*
  store i32 %113, i32* %114, align 8
  br label %115

115:                                              ; preds = %107
  %116 = bitcast %union.cvmx_mixx_ctl* %5 to %struct.TYPE_18__*
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %107, label %120

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %63
  %122 = load i32, i32* @OCTEON_CN5XXX, align 4
  %123 = call i64 @OCTEON_IS_MODEL(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = bitcast %union.cvmx_agl_gmx_inf_mode* %6 to i32*
  store i32 0, i32* %126, align 4
  %127 = bitcast %union.cvmx_agl_gmx_inf_mode* %6 to %struct.TYPE_14__*
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 4
  %129 = load i64, i64* @CVMX_AGL_GMX_INF_MODE, align 8
  %130 = bitcast %union.cvmx_agl_gmx_inf_mode* %6 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @cvmx_write_csr(i64 %129, i32 %131)
  br label %133

133:                                              ; preds = %125, %121
  %134 = load i32, i32* @OCTEON_CN56XX_PASS1_X, align 4
  %135 = call i64 @OCTEON_IS_MODEL(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @OCTEON_CN52XX_PASS1_X, align 4
  %139 = call i64 @OCTEON_IS_MODEL(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %137, %133
  %142 = load i64, i64* @CVMX_AGL_GMX_DRV_CTL, align 8
  %143 = call i32 @cvmx_read_csr(i64 %142)
  %144 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to i32*
  store i32 %143, i32* %144, align 4
  %145 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %146 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %145, i32 0, i32 13
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to %struct.TYPE_15__*
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 4
  %152 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to %struct.TYPE_15__*
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  store i32 6, i32* %153, align 4
  %154 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to %struct.TYPE_15__*
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 2
  store i32 6, i32* %155, align 4
  br label %163

156:                                              ; preds = %141
  %157 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to %struct.TYPE_15__*
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 3
  store i32 1, i32* %158, align 4
  %159 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to %struct.TYPE_15__*
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 4
  store i32 6, i32* %160, align 4
  %161 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to %struct.TYPE_15__*
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 5
  store i32 6, i32* %162, align 4
  br label %163

163:                                              ; preds = %156, %149
  %164 = load i64, i64* @CVMX_AGL_GMX_DRV_CTL, align 8
  %165 = bitcast %union.cvmx_agl_gmx_drv_ctl* %14 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @cvmx_write_csr(i64 %164, i32 %166)
  br label %168

168:                                              ; preds = %163, %137
  %169 = bitcast %union.cvmx_mixx_oring1* %7 to i32*
  store i32 0, i32* %169, align 8
  %170 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %171 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = ashr i32 %172, 3
  %174 = bitcast %union.cvmx_mixx_oring1* %7 to %struct.TYPE_16__*
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load i8*, i8** @OCTEON_MGMT_TX_RING_SIZE, align 8
  %177 = bitcast %union.cvmx_mixx_oring1* %7 to %struct.TYPE_16__*
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %180 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %179, i32 0, i32 10
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @MIX_ORING1, align 8
  %183 = add nsw i64 %181, %182
  %184 = bitcast %union.cvmx_mixx_oring1* %7 to i32*
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @cvmx_write_csr(i64 %183, i32 %185)
  %187 = bitcast %union.cvmx_mixx_iring1* %8 to i32*
  store i32 0, i32* %187, align 8
  %188 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %189 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 3
  %192 = bitcast %union.cvmx_mixx_iring1* %8 to %struct.TYPE_17__*
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load i8*, i8** @OCTEON_MGMT_RX_RING_SIZE, align 8
  %195 = bitcast %union.cvmx_mixx_iring1* %8 to %struct.TYPE_17__*
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %198 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %197, i32 0, i32 10
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MIX_IRING1, align 8
  %201 = add nsw i64 %199, %200
  %202 = bitcast %union.cvmx_mixx_iring1* %8 to i32*
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @cvmx_write_csr(i64 %201, i32 %203)
  %205 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.net_device*, %struct.net_device** %3, align 8
  %208 = getelementptr inbounds %struct.net_device, %struct.net_device* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @ETH_ALEN, align 4
  %211 = call i32 @memcpy(i32 %206, i32 %209, i32 %210)
  %212 = load %struct.net_device*, %struct.net_device** %3, align 8
  %213 = call i32 @octeon_mgmt_set_mac_address(%struct.net_device* %212, %struct.sockaddr* %13)
  %214 = load %struct.net_device*, %struct.net_device** %3, align 8
  %215 = load %struct.net_device*, %struct.net_device** %3, align 8
  %216 = getelementptr inbounds %struct.net_device, %struct.net_device* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @octeon_mgmt_change_mtu(%struct.net_device* %214, i32 %217)
  %219 = bitcast %union.cvmx_mixx_ctl* %5 to i32*
  store i32 0, i32* %219, align 8
  %220 = bitcast %union.cvmx_mixx_ctl* %5 to %struct.TYPE_18__*
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 0
  store i32 1, i32* %221, align 8
  %222 = bitcast %union.cvmx_mixx_ctl* %5 to %struct.TYPE_18__*
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  store i32 1, i32* %223, align 4
  %224 = bitcast %union.cvmx_mixx_ctl* %5 to %struct.TYPE_18__*
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 4
  store i64 0, i64* %225, align 8
  %226 = bitcast %union.cvmx_mixx_ctl* %5 to %struct.TYPE_18__*
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  store i32 1, i32* %227, align 8
  %228 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %229 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @MIX_CTL, align 8
  %232 = add nsw i64 %230, %231
  %233 = bitcast %union.cvmx_mixx_ctl* %5 to i32*
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @cvmx_write_csr(i64 %232, i32 %234)
  %236 = load %struct.net_device*, %struct.net_device** %3, align 8
  %237 = call i64 @octeon_mgmt_init_phy(%struct.net_device* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %168
  %240 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %241 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %244 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %243, i32 0, i32 13
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @dev_err(i32 %242, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %245)
  br label %527

247:                                              ; preds = %168
  %248 = load i32, i32* @OCTEON_CN6XXX, align 4
  %249 = call i64 @OCTEON_IS_MODEL(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %352

251:                                              ; preds = %247
  %252 = load %struct.net_device*, %struct.net_device** %3, align 8
  %253 = getelementptr inbounds %struct.net_device, %struct.net_device* %252, i32 0, i32 0
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = icmp ne %struct.TYPE_13__* %254, null
  br i1 %255, label %256, label %352

256:                                              ; preds = %251
  %257 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %258 = load %struct.net_device*, %struct.net_device** %3, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @linkmode_test_bit(i32 %257, i32 %262)
  %264 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %265 = load %struct.net_device*, %struct.net_device** %3, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @linkmode_test_bit(i32 %264, i32 %269)
  %271 = or i32 %263, %270
  %272 = icmp ne i32 %271, 0
  %273 = zext i1 %272 to i32
  store i32 %273, i32* %16, align 4
  %274 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %275 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %274, i32 0, i32 12
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @cvmx_read_csr(i64 %276)
  %278 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  store i32 %277, i32* %278, align 8
  %279 = load i32, i32* %16, align 4
  %280 = icmp ne i32 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 0, i32 1
  %283 = bitcast %union.cvmx_agl_prtx_ctl* %15 to %struct.TYPE_19__*
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  %285 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %286 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %285, i32 0, i32 12
  %287 = load i64, i64* %286, align 8
  %288 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @cvmx_write_csr(i64 %287, i32 %289)
  %291 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %292 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %291, i32 0, i32 12
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @cvmx_read_csr(i64 %293)
  %295 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  store i32 %294, i32* %295, align 8
  %296 = bitcast %union.cvmx_agl_prtx_ctl* %15 to %struct.TYPE_19__*
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 6
  store i64 0, i64* %297, align 8
  %298 = load i32, i32* %16, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %256
  %301 = bitcast %union.cvmx_agl_prtx_ctl* %15 to %struct.TYPE_19__*
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 5
  store i64 0, i64* %302, align 8
  %303 = bitcast %union.cvmx_agl_prtx_ctl* %15 to %struct.TYPE_19__*
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 4
  store i64 0, i64* %304, align 8
  br label %305

305:                                              ; preds = %300, %256
  %306 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %307 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %306, i32 0, i32 12
  %308 = load i64, i64* %307, align 8
  %309 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @cvmx_write_csr(i64 %308, i32 %310)
  %312 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %313 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %312, i32 0, i32 12
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @cvmx_read_csr(i64 %314)
  %316 = call i32 @ndelay(i32 2048)
  %317 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %318 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %317, i32 0, i32 12
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @cvmx_read_csr(i64 %319)
  %321 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  store i32 %320, i32* %321, align 8
  %322 = bitcast %union.cvmx_agl_prtx_ctl* %15 to %struct.TYPE_19__*
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 1
  store i32 1, i32* %323, align 4
  %324 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %325 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %324, i32 0, i32 12
  %326 = load i64, i64* %325, align 8
  %327 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @cvmx_write_csr(i64 %326, i32 %328)
  %330 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %331 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %330, i32 0, i32 12
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @cvmx_read_csr(i64 %332)
  %334 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  store i32 %333, i32* %334, align 8
  %335 = bitcast %union.cvmx_agl_prtx_ctl* %15 to %struct.TYPE_19__*
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %335, i32 0, i32 2
  store i32 1, i32* %336, align 8
  %337 = bitcast %union.cvmx_agl_prtx_ctl* %15 to %struct.TYPE_19__*
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 3
  store i64 0, i64* %338, align 8
  %339 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %340 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %339, i32 0, i32 12
  %341 = load i64, i64* %340, align 8
  %342 = bitcast %union.cvmx_agl_prtx_ctl* %15 to i32*
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @cvmx_write_csr(i64 %341, i32 %343)
  %345 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %346 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %345, i32 0, i32 12
  %347 = load i64, i64* %346, align 8
  %348 = call i32 @cvmx_read_csr(i64 %347)
  %349 = call i32 @ndelay(i32 8320)
  %350 = load i64, i64* @CVMX_AGL_GMX_TX_IFG, align 8
  %351 = call i32 @cvmx_write_csr(i64 %350, i32 174)
  br label %352

352:                                              ; preds = %305, %251, %247
  %353 = load %struct.net_device*, %struct.net_device** %3, align 8
  %354 = call i32 @octeon_mgmt_rx_fill_ring(%struct.net_device* %353)
  %355 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %356 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %355, i32 0, i32 8
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @AGL_GMX_RX_STATS_CTL, align 8
  %359 = add nsw i64 %357, %358
  %360 = call i32 @cvmx_write_csr(i64 %359, i32 1)
  %361 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %362 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %361, i32 0, i32 8
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @AGL_GMX_RX_STATS_PKTS_DRP, align 8
  %365 = add nsw i64 %363, %364
  %366 = call i32 @cvmx_write_csr(i64 %365, i32 0)
  %367 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %368 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %367, i32 0, i32 8
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @AGL_GMX_RX_STATS_PKTS_BAD, align 8
  %371 = add nsw i64 %369, %370
  %372 = call i32 @cvmx_write_csr(i64 %371, i32 0)
  %373 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %374 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %373, i32 0, i32 8
  %375 = load i64, i64* %374, align 8
  %376 = load i64, i64* @AGL_GMX_TX_STATS_CTL, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i32 @cvmx_write_csr(i64 %377, i32 1)
  %379 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %380 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %379, i32 0, i32 8
  %381 = load i64, i64* %380, align 8
  %382 = load i64, i64* @AGL_GMX_TX_STAT0, align 8
  %383 = add nsw i64 %381, %382
  %384 = call i32 @cvmx_write_csr(i64 %383, i32 0)
  %385 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %386 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %385, i32 0, i32 8
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @AGL_GMX_TX_STAT1, align 8
  %389 = add nsw i64 %387, %388
  %390 = call i32 @cvmx_write_csr(i64 %389, i32 0)
  %391 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %392 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %391, i32 0, i32 10
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @MIX_ISR, align 8
  %395 = add nsw i64 %393, %394
  %396 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %397 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %396, i32 0, i32 10
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @MIX_ISR, align 8
  %400 = add nsw i64 %398, %399
  %401 = call i32 @cvmx_read_csr(i64 %400)
  %402 = call i32 @cvmx_write_csr(i64 %395, i32 %401)
  %403 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %404 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %403, i32 0, i32 11
  %405 = load i64, i64* %404, align 8
  %406 = load i32, i32* @octeon_mgmt_interrupt, align 4
  %407 = load %struct.net_device*, %struct.net_device** %3, align 8
  %408 = getelementptr inbounds %struct.net_device, %struct.net_device* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = load %struct.net_device*, %struct.net_device** %3, align 8
  %411 = call i64 @request_irq(i64 %405, i32 %406, i32 0, i32 %409, %struct.net_device* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %352
  %414 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %415 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %418 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %417, i32 0, i32 11
  %419 = load i64, i64* %418, align 8
  %420 = call i32 @dev_err(i32 %416, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %419)
  br label %527

421:                                              ; preds = %352
  %422 = bitcast %union.cvmx_mixx_irhwm* %10 to i32*
  store i32 0, i32* %422, align 8
  %423 = bitcast %union.cvmx_mixx_irhwm* %10 to %struct.TYPE_20__*
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 0
  store i64 0, i64* %424, align 8
  %425 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %426 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %425, i32 0, i32 10
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @MIX_IRHWM, align 8
  %429 = add nsw i64 %427, %428
  %430 = bitcast %union.cvmx_mixx_irhwm* %10 to i32*
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @cvmx_write_csr(i64 %429, i32 %431)
  %433 = bitcast %union.cvmx_mixx_orhwm* %11 to i32*
  store i32 0, i32* %433, align 8
  %434 = bitcast %union.cvmx_mixx_orhwm* %11 to %struct.TYPE_21__*
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 0
  store i64 0, i64* %435, align 8
  %436 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %437 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %436, i32 0, i32 10
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @MIX_ORHWM, align 8
  %440 = add nsw i64 %438, %439
  %441 = bitcast %union.cvmx_mixx_orhwm* %11 to i32*
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @cvmx_write_csr(i64 %440, i32 %442)
  %444 = bitcast %union.cvmx_mixx_intena* %12 to i32*
  store i32 0, i32* %444, align 4
  %445 = bitcast %union.cvmx_mixx_intena* %12 to %struct.TYPE_22__*
  %446 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %445, i32 0, i32 0
  store i32 1, i32* %446, align 4
  %447 = bitcast %union.cvmx_mixx_intena* %12 to %struct.TYPE_22__*
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 1
  store i32 1, i32* %448, align 4
  %449 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %450 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %449, i32 0, i32 10
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @MIX_INTENA, align 8
  %453 = add nsw i64 %451, %452
  %454 = bitcast %union.cvmx_mixx_intena* %12 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @cvmx_write_csr(i64 %453, i32 %455)
  %457 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to i32*
  store i32 0, i32* %457, align 8
  %458 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %459 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %458, i32 0, i32 9
  %460 = load i64, i64* %459, align 8
  %461 = icmp ne i64 %460, 0
  %462 = zext i1 %461 to i64
  %463 = select i1 %461, i32 1, i32 0
  %464 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 0
  store i32 %463, i32* %465, align 8
  %466 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 1
  store i32 1, i32* %467, align 4
  %468 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 2
  store i32 1, i32* %469, align 8
  %470 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 3
  store i32 1, i32* %471, align 4
  %472 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %473 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %472, i32 0, i32 4
  store i32 1, i32* %473, align 8
  %474 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 10
  store i64 0, i64* %475, align 8
  %476 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 5
  store i32 1, i32* %477, align 4
  %478 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %479 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %478, i32 0, i32 6
  store i32 1, i32* %479, align 8
  %480 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %481 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %480, i32 0, i32 7
  store i32 1, i32* %481, align 4
  %482 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %483 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %482, i32 0, i32 8
  store i32 1, i32* %483, align 8
  %484 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to %struct.TYPE_12__*
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 9
  store i32 1, i32* %485, align 4
  %486 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %487 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %486, i32 0, i32 8
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @AGL_GMX_RX_FRM_CTL, align 8
  %490 = add nsw i64 %488, %489
  %491 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %9 to i32*
  %492 = load i32, i32* %491, align 8
  %493 = call i32 @cvmx_write_csr(i64 %490, i32 %492)
  %494 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %495 = call i32 @octeon_mgmt_disable_link(%struct.octeon_mgmt* %494)
  %496 = load %struct.net_device*, %struct.net_device** %3, align 8
  %497 = getelementptr inbounds %struct.net_device, %struct.net_device* %496, i32 0, i32 0
  %498 = load %struct.TYPE_13__*, %struct.TYPE_13__** %497, align 8
  %499 = icmp ne %struct.TYPE_13__* %498, null
  br i1 %499, label %500, label %503

500:                                              ; preds = %421
  %501 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %502 = call i32 @octeon_mgmt_update_link(%struct.octeon_mgmt* %501)
  br label %503

503:                                              ; preds = %500, %421
  %504 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %505 = call i32 @octeon_mgmt_enable_link(%struct.octeon_mgmt* %504)
  %506 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %507 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %506, i32 0, i32 7
  store i64 0, i64* %507, align 8
  %508 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %509 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %508, i32 0, i32 6
  store i64 0, i64* %509, align 8
  %510 = load %struct.net_device*, %struct.net_device** %3, align 8
  %511 = getelementptr inbounds %struct.net_device, %struct.net_device* %510, i32 0, i32 0
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %511, align 8
  %513 = icmp ne %struct.TYPE_13__* %512, null
  br i1 %513, label %514, label %521

514:                                              ; preds = %503
  %515 = load %struct.net_device*, %struct.net_device** %3, align 8
  %516 = call i32 @netif_carrier_off(%struct.net_device* %515)
  %517 = load %struct.net_device*, %struct.net_device** %3, align 8
  %518 = getelementptr inbounds %struct.net_device, %struct.net_device* %517, i32 0, i32 0
  %519 = load %struct.TYPE_13__*, %struct.TYPE_13__** %518, align 8
  %520 = call i32 @phy_start_aneg(%struct.TYPE_13__* %519)
  br label %521

521:                                              ; preds = %514, %503
  %522 = load %struct.net_device*, %struct.net_device** %3, align 8
  %523 = call i32 @netif_wake_queue(%struct.net_device* %522)
  %524 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %525 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %524, i32 0, i32 5
  %526 = call i32 @napi_enable(i32* %525)
  store i32 0, i32* %2, align 4
  br label %561

527:                                              ; preds = %413, %239
  %528 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %529 = call i32 @octeon_mgmt_reset_hw(%struct.octeon_mgmt* %528)
  %530 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %531 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %530, i32 0, i32 3
  %532 = load i32, i32* %531, align 8
  %533 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %534 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = load i8*, i8** @OCTEON_MGMT_RX_RING_SIZE, align 8
  %537 = call i32 @ring_size_to_bytes(i8* %536)
  %538 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %539 = call i32 @dma_unmap_single(i32 %532, i32 %535, i32 %537, i32 %538)
  %540 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %541 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %540, i32 0, i32 4
  %542 = load i8*, i8** %541, align 8
  %543 = call i32 @kfree(i8* %542)
  br label %544

544:                                              ; preds = %527, %62
  %545 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %546 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %545, i32 0, i32 3
  %547 = load i32, i32* %546, align 8
  %548 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %549 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = load i8*, i8** @OCTEON_MGMT_TX_RING_SIZE, align 8
  %552 = call i32 @ring_size_to_bytes(i8* %551)
  %553 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %554 = call i32 @dma_unmap_single(i32 %547, i32 %550, i32 %552, i32 %553)
  %555 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %4, align 8
  %556 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %555, i32 0, i32 2
  %557 = load i8*, i8** %556, align 8
  %558 = call i32 @kfree(i8* %557)
  %559 = load i32, i32* @ENOMEM, align 4
  %560 = sub nsw i32 0, %559
  store i32 %560, i32* %2, align 4
  br label %561

561:                                              ; preds = %544, %521, %29
  %562 = load i32, i32* %2, align 4
  ret i32 %562
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ring_size_to_bytes(i8*) #1

declare dso_local i8* @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @octeon_mgmt_reset_hw(%struct.octeon_mgmt*) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @octeon_mgmt_set_mac_address(%struct.net_device*, %struct.sockaddr*) #1

declare dso_local i32 @octeon_mgmt_change_mtu(%struct.net_device*, i32) #1

declare dso_local i64 @octeon_mgmt_init_phy(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @linkmode_test_bit(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @octeon_mgmt_rx_fill_ring(%struct.net_device*) #1

declare dso_local i64 @request_irq(i64, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @octeon_mgmt_disable_link(%struct.octeon_mgmt*) #1

declare dso_local i32 @octeon_mgmt_update_link(%struct.octeon_mgmt*) #1

declare dso_local i32 @octeon_mgmt_enable_link(%struct.octeon_mgmt*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_start_aneg(%struct.TYPE_13__*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
