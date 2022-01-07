; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_ethtools_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_ethtools_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i64, i64 }
%struct.axienet_local = type { i32 }

@AXIENET_REGS_N = common dso_local global i32 0, align 4
@XAE_RAF_OFFSET = common dso_local global i32 0, align 4
@XAE_TPF_OFFSET = common dso_local global i32 0, align 4
@XAE_IFGP_OFFSET = common dso_local global i32 0, align 4
@XAE_IS_OFFSET = common dso_local global i32 0, align 4
@XAE_IP_OFFSET = common dso_local global i32 0, align 4
@XAE_IE_OFFSET = common dso_local global i32 0, align 4
@XAE_TTAG_OFFSET = common dso_local global i32 0, align 4
@XAE_RTAG_OFFSET = common dso_local global i32 0, align 4
@XAE_UAWL_OFFSET = common dso_local global i32 0, align 4
@XAE_UAWU_OFFSET = common dso_local global i32 0, align 4
@XAE_TPID0_OFFSET = common dso_local global i32 0, align 4
@XAE_TPID1_OFFSET = common dso_local global i32 0, align 4
@XAE_PPST_OFFSET = common dso_local global i32 0, align 4
@XAE_RCW0_OFFSET = common dso_local global i32 0, align 4
@XAE_RCW1_OFFSET = common dso_local global i32 0, align 4
@XAE_TC_OFFSET = common dso_local global i32 0, align 4
@XAE_FCC_OFFSET = common dso_local global i32 0, align 4
@XAE_EMMC_OFFSET = common dso_local global i32 0, align 4
@XAE_PHYC_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MC_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MCR_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MWD_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MRD_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MIS_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MIP_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MIE_OFFSET = common dso_local global i32 0, align 4
@XAE_MDIO_MIC_OFFSET = common dso_local global i32 0, align 4
@XAE_UAW0_OFFSET = common dso_local global i32 0, align 4
@XAE_UAW1_OFFSET = common dso_local global i32 0, align 4
@XAE_FMI_OFFSET = common dso_local global i32 0, align 4
@XAE_AF0_OFFSET = common dso_local global i32 0, align 4
@XAE_AF1_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_TX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_TX_SR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_TX_CDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_TX_TDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_CR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_SR_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_CDESC_OFFSET = common dso_local global i32 0, align 4
@XAXIDMA_RX_TDESC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @axienet_ethtools_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_ethtools_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.axienet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* @AXIENET_REGS_N, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  store i64 %14, i64* %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %15)
  store %struct.axienet_local* %16, %struct.axienet_local** %9, align 8
  %17 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @memset(i32* %22, i32 0, i64 %23)
  %25 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %26 = load i32, i32* @XAE_RAF_OFFSET, align 4
  %27 = call i32 @axienet_ior(%struct.axienet_local* %25, i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %31 = load i32, i32* @XAE_TPF_OFFSET, align 4
  %32 = call i32 @axienet_ior(%struct.axienet_local* %30, i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %36 = load i32, i32* @XAE_IFGP_OFFSET, align 4
  %37 = call i32 @axienet_ior(%struct.axienet_local* %35, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %41 = load i32, i32* @XAE_IS_OFFSET, align 4
  %42 = call i32 @axienet_ior(%struct.axienet_local* %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %46 = load i32, i32* @XAE_IP_OFFSET, align 4
  %47 = call i32 @axienet_ior(%struct.axienet_local* %45, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %51 = load i32, i32* @XAE_IE_OFFSET, align 4
  %52 = call i32 @axienet_ior(%struct.axienet_local* %50, i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %56 = load i32, i32* @XAE_TTAG_OFFSET, align 4
  %57 = call i32 @axienet_ior(%struct.axienet_local* %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %61 = load i32, i32* @XAE_RTAG_OFFSET, align 4
  %62 = call i32 @axienet_ior(%struct.axienet_local* %60, i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %66 = load i32, i32* @XAE_UAWL_OFFSET, align 4
  %67 = call i32 @axienet_ior(%struct.axienet_local* %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %71 = load i32, i32* @XAE_UAWU_OFFSET, align 4
  %72 = call i32 @axienet_ior(%struct.axienet_local* %70, i32 %71)
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 9
  store i32 %72, i32* %74, align 4
  %75 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %76 = load i32, i32* @XAE_TPID0_OFFSET, align 4
  %77 = call i32 @axienet_ior(%struct.axienet_local* %75, i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 10
  store i32 %77, i32* %79, align 4
  %80 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %81 = load i32, i32* @XAE_TPID1_OFFSET, align 4
  %82 = call i32 @axienet_ior(%struct.axienet_local* %80, i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 11
  store i32 %82, i32* %84, align 4
  %85 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %86 = load i32, i32* @XAE_PPST_OFFSET, align 4
  %87 = call i32 @axienet_ior(%struct.axienet_local* %85, i32 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 12
  store i32 %87, i32* %89, align 4
  %90 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %91 = load i32, i32* @XAE_RCW0_OFFSET, align 4
  %92 = call i32 @axienet_ior(%struct.axienet_local* %90, i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 13
  store i32 %92, i32* %94, align 4
  %95 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %96 = load i32, i32* @XAE_RCW1_OFFSET, align 4
  %97 = call i32 @axienet_ior(%struct.axienet_local* %95, i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 14
  store i32 %97, i32* %99, align 4
  %100 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %101 = load i32, i32* @XAE_TC_OFFSET, align 4
  %102 = call i32 @axienet_ior(%struct.axienet_local* %100, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 15
  store i32 %102, i32* %104, align 4
  %105 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %106 = load i32, i32* @XAE_FCC_OFFSET, align 4
  %107 = call i32 @axienet_ior(%struct.axienet_local* %105, i32 %106)
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 16
  store i32 %107, i32* %109, align 4
  %110 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %111 = load i32, i32* @XAE_EMMC_OFFSET, align 4
  %112 = call i32 @axienet_ior(%struct.axienet_local* %110, i32 %111)
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 17
  store i32 %112, i32* %114, align 4
  %115 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %116 = load i32, i32* @XAE_PHYC_OFFSET, align 4
  %117 = call i32 @axienet_ior(%struct.axienet_local* %115, i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 18
  store i32 %117, i32* %119, align 4
  %120 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %121 = load i32, i32* @XAE_MDIO_MC_OFFSET, align 4
  %122 = call i32 @axienet_ior(%struct.axienet_local* %120, i32 %121)
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 19
  store i32 %122, i32* %124, align 4
  %125 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %126 = load i32, i32* @XAE_MDIO_MCR_OFFSET, align 4
  %127 = call i32 @axienet_ior(%struct.axienet_local* %125, i32 %126)
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 20
  store i32 %127, i32* %129, align 4
  %130 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %131 = load i32, i32* @XAE_MDIO_MWD_OFFSET, align 4
  %132 = call i32 @axienet_ior(%struct.axienet_local* %130, i32 %131)
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 21
  store i32 %132, i32* %134, align 4
  %135 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %136 = load i32, i32* @XAE_MDIO_MRD_OFFSET, align 4
  %137 = call i32 @axienet_ior(%struct.axienet_local* %135, i32 %136)
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 22
  store i32 %137, i32* %139, align 4
  %140 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %141 = load i32, i32* @XAE_MDIO_MIS_OFFSET, align 4
  %142 = call i32 @axienet_ior(%struct.axienet_local* %140, i32 %141)
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 23
  store i32 %142, i32* %144, align 4
  %145 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %146 = load i32, i32* @XAE_MDIO_MIP_OFFSET, align 4
  %147 = call i32 @axienet_ior(%struct.axienet_local* %145, i32 %146)
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 24
  store i32 %147, i32* %149, align 4
  %150 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %151 = load i32, i32* @XAE_MDIO_MIE_OFFSET, align 4
  %152 = call i32 @axienet_ior(%struct.axienet_local* %150, i32 %151)
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 25
  store i32 %152, i32* %154, align 4
  %155 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %156 = load i32, i32* @XAE_MDIO_MIC_OFFSET, align 4
  %157 = call i32 @axienet_ior(%struct.axienet_local* %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 26
  store i32 %157, i32* %159, align 4
  %160 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %161 = load i32, i32* @XAE_UAW0_OFFSET, align 4
  %162 = call i32 @axienet_ior(%struct.axienet_local* %160, i32 %161)
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 27
  store i32 %162, i32* %164, align 4
  %165 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %166 = load i32, i32* @XAE_UAW1_OFFSET, align 4
  %167 = call i32 @axienet_ior(%struct.axienet_local* %165, i32 %166)
  %168 = load i32*, i32** %7, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 28
  store i32 %167, i32* %169, align 4
  %170 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %171 = load i32, i32* @XAE_FMI_OFFSET, align 4
  %172 = call i32 @axienet_ior(%struct.axienet_local* %170, i32 %171)
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 29
  store i32 %172, i32* %174, align 4
  %175 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %176 = load i32, i32* @XAE_AF0_OFFSET, align 4
  %177 = call i32 @axienet_ior(%struct.axienet_local* %175, i32 %176)
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 30
  store i32 %177, i32* %179, align 4
  %180 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %181 = load i32, i32* @XAE_AF1_OFFSET, align 4
  %182 = call i32 @axienet_ior(%struct.axienet_local* %180, i32 %181)
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 31
  store i32 %182, i32* %184, align 4
  %185 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %186 = load i32, i32* @XAXIDMA_TX_CR_OFFSET, align 4
  %187 = call i32 @axienet_dma_in32(%struct.axienet_local* %185, i32 %186)
  %188 = load i32*, i32** %7, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 32
  store i32 %187, i32* %189, align 4
  %190 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %191 = load i32, i32* @XAXIDMA_TX_SR_OFFSET, align 4
  %192 = call i32 @axienet_dma_in32(%struct.axienet_local* %190, i32 %191)
  %193 = load i32*, i32** %7, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 33
  store i32 %192, i32* %194, align 4
  %195 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %196 = load i32, i32* @XAXIDMA_TX_CDESC_OFFSET, align 4
  %197 = call i32 @axienet_dma_in32(%struct.axienet_local* %195, i32 %196)
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 34
  store i32 %197, i32* %199, align 4
  %200 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %201 = load i32, i32* @XAXIDMA_TX_TDESC_OFFSET, align 4
  %202 = call i32 @axienet_dma_in32(%struct.axienet_local* %200, i32 %201)
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 35
  store i32 %202, i32* %204, align 4
  %205 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %206 = load i32, i32* @XAXIDMA_RX_CR_OFFSET, align 4
  %207 = call i32 @axienet_dma_in32(%struct.axienet_local* %205, i32 %206)
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 36
  store i32 %207, i32* %209, align 4
  %210 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %211 = load i32, i32* @XAXIDMA_RX_SR_OFFSET, align 4
  %212 = call i32 @axienet_dma_in32(%struct.axienet_local* %210, i32 %211)
  %213 = load i32*, i32** %7, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 37
  store i32 %212, i32* %214, align 4
  %215 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %216 = load i32, i32* @XAXIDMA_RX_CDESC_OFFSET, align 4
  %217 = call i32 @axienet_dma_in32(%struct.axienet_local* %215, i32 %216)
  %218 = load i32*, i32** %7, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 38
  store i32 %217, i32* %219, align 4
  %220 = load %struct.axienet_local*, %struct.axienet_local** %9, align 8
  %221 = load i32, i32* @XAXIDMA_RX_TDESC_OFFSET, align 4
  %222 = call i32 @axienet_dma_in32(%struct.axienet_local* %220, i32 %221)
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 39
  store i32 %222, i32* %224, align 4
  ret void
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @axienet_ior(%struct.axienet_local*, i32) #1

declare dso_local i32 @axienet_dma_in32(%struct.axienet_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
