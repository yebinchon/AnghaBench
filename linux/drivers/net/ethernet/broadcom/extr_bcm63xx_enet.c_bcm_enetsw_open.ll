; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_bcm_enetsw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcm_enet_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.bcm_enet_desc*, i32, %struct.bcm_enet_desc*, i32*, i32*, i32, i32, %struct.bcm63xx_enetsw_port*, i32, i32, i32, i32, i64*, i64, i64, i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.bcm_enet_desc = type { i32 }
%struct.bcm63xx_enetsw_port = type { i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ENETDMAC_IRMASK = common dso_local global i32 0, align 4
@bcm_enet_isr_dma = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot allocate rx ring %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot allocate tx ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cannot allocate rx skb queue\0A\00", align 1
@ENETSW_PORTOV_ENABLE_MASK = common dso_local global i32 0, align 4
@ENETSW_PTCTRL_RXDIS_MASK = common dso_local global i32 0, align 4
@ENETSW_PTCTRL_TXDIS_MASK = common dso_local global i32 0, align 4
@ENETSW_GMCR_REG = common dso_local global i32 0, align 4
@ENETSW_GMCR_RST_MIB_MASK = common dso_local global i32 0, align 4
@ENETSW_IMPOV_REG = common dso_local global i32 0, align 4
@ENETSW_IMPOV_FORCE_MASK = common dso_local global i32 0, align 4
@ENETSW_IMPOV_LINKUP_MASK = common dso_local global i32 0, align 4
@ENETSW_SWMODE_REG = common dso_local global i32 0, align 4
@ENETSW_SWMODE_FWD_EN_MASK = common dso_local global i32 0, align 4
@ENETSW_JMBCTL_PORT_REG = common dso_local global i32 0, align 4
@ENETSW_JMBCTL_MAXSIZE_REG = common dso_local global i32 0, align 4
@ENETDMA_BUFALLOC_FORCE_MASK = common dso_local global i32 0, align 4
@ENETDMAS_RSTART_REG = common dso_local global i32 0, align 4
@ENETDMAS_SRAM2_REG = common dso_local global i32 0, align 4
@ENETDMAS_SRAM3_REG = common dso_local global i32 0, align 4
@ENETDMAS_SRAM4_REG = common dso_local global i32 0, align 4
@ENETDMAC_MAXBURST = common dso_local global i32 0, align 4
@ENETDMA_CFG_EN_MASK = common dso_local global i32 0, align 4
@ENETDMA_CFG_REG = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG_EN_MASK = common dso_local global i32 0, align 4
@ENETDMAC_CHANCFG = common dso_local global i32 0, align 4
@ENETDMAC_IR_PKTDONE_MASK = common dso_local global i32 0, align 4
@ENETDMAC_IR = common dso_local global i32 0, align 4
@ENETSW_PORTOV_LINKUP_MASK = common dso_local global i32 0, align 4
@ENETSW_IMPOV_1000_MASK = common dso_local global i32 0, align 4
@ENETSW_IMPOV_100_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"invalid forced speed on port %s: assume 10\0A\00", align 1
@ENETSW_IMPOV_FDX_MASK = common dso_local global i32 0, align 4
@swphy_poll_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @bcm_enetsw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_enetsw_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bcm_enet_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bcm63xx_enetsw_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bcm_enet_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.bcm_enet_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.bcm_enet_priv* %15, %struct.bcm_enet_priv** %4, align 8
  %16 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %17 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %16, i32 0, i32 28
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %21 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %22 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %23 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %22, i32 0, i32 18
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %20, i32 0, i32 %21, i32 %24)
  %26 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %27 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %28 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %29 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %28, i32 0, i32 17
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %26, i32 0, i32 %27, i32 %30)
  %32 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %33 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @bcm_enet_isr_dma, align 4
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @request_irq(i32 %34, i32 %35, i32 0, i32 %38, %struct.net_device* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %580

44:                                               ; preds = %1
  %45 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %46 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %51 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @bcm_enet_isr_dma, align 4
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @request_irq(i32 %52, i32 %53, i32 0, i32 %56, %struct.net_device* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %574

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %65 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %73 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %72, i32 0, i32 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @dma_alloc_coherent(%struct.device* %70, i32 %71, i32* %73, i32 %74)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %63
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %562

84:                                               ; preds = %63
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %87 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = bitcast i8* %88 to %struct.bcm_enet_desc*
  %90 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %91 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %90, i32 0, i32 9
  store %struct.bcm_enet_desc* %89, %struct.bcm_enet_desc** %91, align 8
  %92 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %93 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %8, align 4
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %101 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %100, i32 0, i32 10
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @dma_alloc_coherent(%struct.device* %98, i32 %99, i32* %101, i32 %102)
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %84
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %7, align 4
  br label %550

111:                                              ; preds = %84
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %114 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = bitcast i8* %115 to %struct.bcm_enet_desc*
  %117 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %118 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %117, i32 0, i32 11
  store %struct.bcm_enet_desc* %116, %struct.bcm_enet_desc** %118, align 8
  %119 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %120 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @kcalloc(i32 %121, i32 8, i32 %122)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %126 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %125, i32 0, i32 12
  store i32* %124, i32** %126, align 8
  %127 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %128 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %127, i32 0, i32 12
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %111
  %132 = load %struct.device*, %struct.device** %5, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %538

136:                                              ; preds = %111
  %137 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %138 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %141 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  %142 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %143 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %142, i32 0, i32 27
  store i64 0, i64* %143, align 8
  %144 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %145 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %144, i32 0, i32 26
  store i64 0, i64* %145, align 8
  %146 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %147 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %146, i32 0, i32 25
  %148 = call i32 @spin_lock_init(i32* %147)
  %149 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %150 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call i8* @kcalloc(i32 %151, i32 8, i32 %152)
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %156 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %155, i32 0, i32 13
  store i32* %154, i32** %156, align 8
  %157 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %158 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %157, i32 0, i32 13
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %136
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %7, align 4
  br label %533

166:                                              ; preds = %136
  %167 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %168 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %167, i32 0, i32 24
  store i64 0, i64* %168, align 8
  %169 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %170 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %169, i32 0, i32 23
  store i64 0, i64* %170, align 8
  %171 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %172 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %171, i32 0, i32 22
  store i64 0, i64* %172, align 8
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %198, %166
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %176 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %173
  %180 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %181 = load i32, i32* @ENETSW_PORTOV_ENABLE_MASK, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @ENETSW_PORTOV_REG(i32 %182)
  %184 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %180, i32 %181, i32 %183)
  %185 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %186 = load i32, i32* @ENETSW_PTCTRL_RXDIS_MASK, align 4
  %187 = load i32, i32* @ENETSW_PTCTRL_TXDIS_MASK, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @ENETSW_PTCTRL_REG(i32 %189)
  %191 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %185, i32 %188, i32 %190)
  %192 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %193 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %192, i32 0, i32 21
  %194 = load i64*, i64** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64, i64* %194, i64 %196
  store i64 0, i64* %197, align 8
  br label %198

198:                                              ; preds = %179
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %173

201:                                              ; preds = %173
  %202 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %203 = load i32, i32* @ENETSW_GMCR_REG, align 4
  %204 = call i32 @enetsw_readb(%struct.bcm_enet_priv* %202, i32 %203)
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* @ENETSW_GMCR_RST_MIB_MASK, align 4
  %206 = load i32, i32* %10, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %10, align 4
  %208 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @ENETSW_GMCR_REG, align 4
  %211 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %208, i32 %209, i32 %210)
  %212 = call i32 @mdelay(i32 1)
  %213 = load i32, i32* @ENETSW_GMCR_RST_MIB_MASK, align 4
  %214 = xor i32 %213, -1
  %215 = load i32, i32* %10, align 4
  %216 = and i32 %215, %214
  store i32 %216, i32* %10, align 4
  %217 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @ENETSW_GMCR_REG, align 4
  %220 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %217, i32 %218, i32 %219)
  %221 = call i32 @mdelay(i32 1)
  %222 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %223 = load i32, i32* @ENETSW_IMPOV_REG, align 4
  %224 = call i32 @enetsw_readb(%struct.bcm_enet_priv* %222, i32 %223)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* @ENETSW_IMPOV_FORCE_MASK, align 4
  %226 = load i32, i32* @ENETSW_IMPOV_LINKUP_MASK, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* %10, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %10, align 4
  %230 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @ENETSW_IMPOV_REG, align 4
  %233 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %230, i32 %231, i32 %232)
  %234 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %235 = load i32, i32* @ENETSW_SWMODE_REG, align 4
  %236 = call i32 @enetsw_readb(%struct.bcm_enet_priv* %234, i32 %235)
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* @ENETSW_SWMODE_FWD_EN_MASK, align 4
  %238 = load i32, i32* %10, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %10, align 4
  %240 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @ENETSW_SWMODE_REG, align 4
  %243 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %240, i32 %241, i32 %242)
  %244 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %245 = load i32, i32* @ENETSW_JMBCTL_PORT_REG, align 4
  %246 = call i32 @enetsw_writel(%struct.bcm_enet_priv* %244, i32 511, i32 %245)
  %247 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %248 = load i32, i32* @ENETSW_JMBCTL_MAXSIZE_REG, align 4
  %249 = call i32 @enetsw_writew(%struct.bcm_enet_priv* %247, i32 9728, i32 %248)
  %250 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %251 = load i32, i32* @ENETDMA_BUFALLOC_FORCE_MASK, align 4
  %252 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %253 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %252, i32 0, i32 18
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @ENETDMA_BUFALLOC_REG(i32 %254)
  %256 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %250, i32 %251, i32 %255)
  %257 = load %struct.net_device*, %struct.net_device** %3, align 8
  %258 = call i64 @bcm_enet_refill_rx(%struct.net_device* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %201
  %261 = load %struct.device*, %struct.device** %5, align 8
  %262 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %261, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %7, align 4
  br label %484

265:                                              ; preds = %201
  %266 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %267 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %268 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @ENETDMAS_RSTART_REG, align 4
  %271 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %272 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %271, i32 0, i32 18
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %266, i32 %269, i32 %270, i32 %273)
  %275 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %276 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %277 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %276, i32 0, i32 10
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @ENETDMAS_RSTART_REG, align 4
  %280 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %281 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %280, i32 0, i32 17
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %275, i32 %278, i32 %279, i32 %282)
  %284 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %285 = load i32, i32* @ENETDMAS_SRAM2_REG, align 4
  %286 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %287 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %286, i32 0, i32 18
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %284, i32 0, i32 %285, i32 %288)
  %290 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %291 = load i32, i32* @ENETDMAS_SRAM2_REG, align 4
  %292 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %293 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %292, i32 0, i32 17
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %290, i32 0, i32 %291, i32 %294)
  %296 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %297 = load i32, i32* @ENETDMAS_SRAM3_REG, align 4
  %298 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %299 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %298, i32 0, i32 18
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %296, i32 0, i32 %297, i32 %300)
  %302 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %303 = load i32, i32* @ENETDMAS_SRAM3_REG, align 4
  %304 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %305 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %304, i32 0, i32 17
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %302, i32 0, i32 %303, i32 %306)
  %308 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %309 = load i32, i32* @ENETDMAS_SRAM4_REG, align 4
  %310 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %311 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %310, i32 0, i32 18
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %308, i32 0, i32 %309, i32 %312)
  %314 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %315 = load i32, i32* @ENETDMAS_SRAM4_REG, align 4
  %316 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %317 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %316, i32 0, i32 17
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @enet_dmas_writel(%struct.bcm_enet_priv* %314, i32 0, i32 %315, i32 %318)
  %320 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %321 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %322 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %321, i32 0, i32 20
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @ENETDMAC_MAXBURST, align 4
  %325 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %326 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %325, i32 0, i32 18
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %320, i32 %323, i32 %324, i32 %327)
  %329 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %330 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %331 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %330, i32 0, i32 20
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @ENETDMAC_MAXBURST, align 4
  %334 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %335 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %334, i32 0, i32 17
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %329, i32 %332, i32 %333, i32 %336)
  %338 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %339 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = sdiv i32 %340, 3
  store i32 %341, i32* %10, align 4
  %342 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %343 = load i32, i32* %10, align 4
  %344 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %345 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %344, i32 0, i32 18
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @ENETDMA_FLOWCL_REG(i32 %346)
  %348 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %342, i32 %343, i32 %347)
  %349 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %350 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = mul nsw i32 %351, 2
  %353 = sdiv i32 %352, 3
  store i32 %353, i32* %10, align 4
  %354 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %355 = load i32, i32* %10, align 4
  %356 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %357 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %356, i32 0, i32 18
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @ENETDMA_FLOWCH_REG(i32 %358)
  %360 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %354, i32 %355, i32 %359)
  %361 = call i32 (...) @wmb()
  %362 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %363 = load i32, i32* @ENETDMA_CFG_EN_MASK, align 4
  %364 = load i32, i32* @ENETDMA_CFG_REG, align 4
  %365 = call i32 @enet_dma_writel(%struct.bcm_enet_priv* %362, i32 %363, i32 %364)
  %366 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %367 = load i32, i32* @ENETDMAC_CHANCFG_EN_MASK, align 4
  %368 = load i32, i32* @ENETDMAC_CHANCFG, align 4
  %369 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %370 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %369, i32 0, i32 18
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %366, i32 %367, i32 %368, i32 %371)
  %373 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %374 = load i32, i32* @ENETDMAC_IR_PKTDONE_MASK, align 4
  %375 = load i32, i32* @ENETDMAC_IR, align 4
  %376 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %377 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %376, i32 0, i32 18
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %373, i32 %374, i32 %375, i32 %378)
  %380 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %381 = load i32, i32* @ENETDMAC_IR_PKTDONE_MASK, align 4
  %382 = load i32, i32* @ENETDMAC_IR, align 4
  %383 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %384 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %383, i32 0, i32 17
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %380, i32 %381, i32 %382, i32 %385)
  %387 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %388 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %387, i32 0, i32 19
  %389 = call i32 @napi_enable(i32* %388)
  %390 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %391 = load i32, i32* @ENETDMAC_IR_PKTDONE_MASK, align 4
  %392 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %393 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %394 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %393, i32 0, i32 18
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %390, i32 %391, i32 %392, i32 %395)
  %397 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %398 = load i32, i32* @ENETDMAC_IR_PKTDONE_MASK, align 4
  %399 = load i32, i32* @ENETDMAC_IRMASK, align 4
  %400 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %401 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %400, i32 0, i32 17
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @enet_dmac_writel(%struct.bcm_enet_priv* %397, i32 %398, i32 %399, i32 %402)
  %404 = load %struct.net_device*, %struct.net_device** %3, align 8
  %405 = call i32 @netif_carrier_on(%struct.net_device* %404)
  %406 = load %struct.net_device*, %struct.net_device** %3, align 8
  %407 = call i32 @netif_start_queue(%struct.net_device* %406)
  store i32 0, i32* %6, align 4
  br label %408

408:                                              ; preds = %472, %265
  %409 = load i32, i32* %6, align 4
  %410 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %411 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %410, i32 0, i32 7
  %412 = load i32, i32* %411, align 4
  %413 = icmp slt i32 %409, %412
  br i1 %413, label %414, label %475

414:                                              ; preds = %408
  %415 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %416 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %415, i32 0, i32 16
  %417 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %416, align 8
  %418 = load i32, i32* %6, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %417, i64 %419
  store %struct.bcm63xx_enetsw_port* %420, %struct.bcm63xx_enetsw_port** %11, align 8
  %421 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %11, align 8
  %422 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %414
  br label %472

426:                                              ; preds = %414
  %427 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %11, align 8
  %428 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %426
  br label %472

432:                                              ; preds = %426
  %433 = load i32, i32* @ENETSW_PORTOV_ENABLE_MASK, align 4
  %434 = load i32, i32* @ENETSW_PORTOV_LINKUP_MASK, align 4
  %435 = or i32 %433, %434
  store i32 %435, i32* %12, align 4
  %436 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %11, align 8
  %437 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  switch i32 %438, label %448 [
    i32 1000, label %439
    i32 100, label %443
    i32 10, label %447
  ]

439:                                              ; preds = %432
  %440 = load i32, i32* @ENETSW_IMPOV_1000_MASK, align 4
  %441 = load i32, i32* %12, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* %12, align 4
  br label %453

443:                                              ; preds = %432
  %444 = load i32, i32* @ENETSW_IMPOV_100_MASK, align 4
  %445 = load i32, i32* %12, align 4
  %446 = or i32 %445, %444
  store i32 %446, i32* %12, align 4
  br label %453

447:                                              ; preds = %432
  br label %453

448:                                              ; preds = %432
  %449 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %11, align 8
  %450 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %451)
  br label %453

453:                                              ; preds = %448, %447, %443, %439
  %454 = load %struct.bcm63xx_enetsw_port*, %struct.bcm63xx_enetsw_port** %11, align 8
  %455 = getelementptr inbounds %struct.bcm63xx_enetsw_port, %struct.bcm63xx_enetsw_port* %454, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %453
  %459 = load i32, i32* @ENETSW_IMPOV_FDX_MASK, align 4
  %460 = load i32, i32* %12, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %12, align 4
  br label %462

462:                                              ; preds = %458, %453
  %463 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %464 = load i32, i32* %12, align 4
  %465 = load i32, i32* %6, align 4
  %466 = call i32 @ENETSW_PORTOV_REG(i32 %465)
  %467 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %463, i32 %464, i32 %466)
  %468 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %469 = load i32, i32* %6, align 4
  %470 = call i32 @ENETSW_PTCTRL_REG(i32 %469)
  %471 = call i32 @enetsw_writeb(%struct.bcm_enet_priv* %468, i32 0, i32 %470)
  br label %472

472:                                              ; preds = %462, %431, %425
  %473 = load i32, i32* %6, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %6, align 4
  br label %408

475:                                              ; preds = %408
  %476 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %477 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %476, i32 0, i32 15
  %478 = load i32, i32* @swphy_poll_timer, align 4
  %479 = call i32 @timer_setup(i32* %477, i32 %478, i32 0)
  %480 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %481 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %480, i32 0, i32 15
  %482 = load i32, i32* @jiffies, align 4
  %483 = call i32 @mod_timer(i32* %481, i32 %482)
  store i32 0, i32* %2, align 4
  br label %582

484:                                              ; preds = %260
  store i32 0, i32* %6, align 4
  br label %485

485:                                              ; preds = %525, %484
  %486 = load i32, i32* %6, align 4
  %487 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %488 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = icmp slt i32 %486, %489
  br i1 %490, label %491, label %528

491:                                              ; preds = %485
  %492 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %493 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %492, i32 0, i32 13
  %494 = load i32*, i32** %493, align 8
  %495 = load i32, i32* %6, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32, i32* %494, i64 %496
  %498 = load i32, i32* %497, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %491
  br label %525

501:                                              ; preds = %491
  %502 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %503 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %502, i32 0, i32 9
  %504 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %503, align 8
  %505 = load i32, i32* %6, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %504, i64 %506
  store %struct.bcm_enet_desc* %507, %struct.bcm_enet_desc** %13, align 8
  %508 = load %struct.device*, %struct.device** %5, align 8
  %509 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %13, align 8
  %510 = getelementptr inbounds %struct.bcm_enet_desc, %struct.bcm_enet_desc* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %513 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %512, i32 0, i32 14
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %516 = call i32 @dma_unmap_single(%struct.device* %508, i32 %511, i32 %514, i32 %515)
  %517 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %518 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %517, i32 0, i32 13
  %519 = load i32*, i32** %518, align 8
  %520 = load i32, i32* %6, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %519, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @kfree_skb(i32 %523)
  br label %525

525:                                              ; preds = %501, %500
  %526 = load i32, i32* %6, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %6, align 4
  br label %485

528:                                              ; preds = %485
  %529 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %530 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %529, i32 0, i32 13
  %531 = load i32*, i32** %530, align 8
  %532 = call i32 @kfree(i32* %531)
  br label %533

533:                                              ; preds = %528, %161
  %534 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %535 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %534, i32 0, i32 12
  %536 = load i32*, i32** %535, align 8
  %537 = call i32 @kfree(i32* %536)
  br label %538

538:                                              ; preds = %533, %131
  %539 = load %struct.device*, %struct.device** %5, align 8
  %540 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %541 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %540, i32 0, i32 5
  %542 = load i32, i32* %541, align 4
  %543 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %544 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %543, i32 0, i32 11
  %545 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %544, align 8
  %546 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %547 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %546, i32 0, i32 10
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @dma_free_coherent(%struct.device* %539, i32 %542, %struct.bcm_enet_desc* %545, i32 %548)
  br label %550

550:                                              ; preds = %538, %106
  %551 = load %struct.device*, %struct.device** %5, align 8
  %552 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %553 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 4
  %555 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %556 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %555, i32 0, i32 9
  %557 = load %struct.bcm_enet_desc*, %struct.bcm_enet_desc** %556, align 8
  %558 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %559 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %558, i32 0, i32 8
  %560 = load i32, i32* %559, align 8
  %561 = call i32 @dma_free_coherent(%struct.device* %551, i32 %554, %struct.bcm_enet_desc* %557, i32 %560)
  br label %562

562:                                              ; preds = %550, %78
  %563 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %564 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = icmp ne i32 %565, -1
  br i1 %566, label %567, label %573

567:                                              ; preds = %562
  %568 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %569 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.net_device*, %struct.net_device** %3, align 8
  %572 = call i32 @free_irq(i32 %570, %struct.net_device* %571)
  br label %573

573:                                              ; preds = %567, %562
  br label %574

574:                                              ; preds = %573, %61
  %575 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %4, align 8
  %576 = getelementptr inbounds %struct.bcm_enet_priv, %struct.bcm_enet_priv* %575, i32 0, i32 0
  %577 = load i32, i32* %576, align 8
  %578 = load %struct.net_device*, %struct.net_device** %3, align 8
  %579 = call i32 @free_irq(i32 %577, %struct.net_device* %578)
  br label %580

580:                                              ; preds = %574, %43
  %581 = load i32, i32* %7, align 4
  store i32 %581, i32* %2, align 4
  br label %582

582:                                              ; preds = %580, %475
  %583 = load i32, i32* %2, align 4
  ret i32 %583
}

declare dso_local %struct.bcm_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @enet_dmac_writel(%struct.bcm_enet_priv*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @enetsw_writeb(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENETSW_PORTOV_REG(i32) #1

declare dso_local i32 @ENETSW_PTCTRL_REG(i32) #1

declare dso_local i32 @enetsw_readb(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @enetsw_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @enetsw_writew(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @enet_dma_writel(%struct.bcm_enet_priv*, i32, i32) #1

declare dso_local i32 @ENETDMA_BUFALLOC_REG(i32) #1

declare dso_local i64 @bcm_enet_refill_rx(%struct.net_device*) #1

declare dso_local i32 @enet_dmas_writel(%struct.bcm_enet_priv*, i32, i32, i32) #1

declare dso_local i32 @ENETDMA_FLOWCL_REG(i32) #1

declare dso_local i32 @ENETDMA_FLOWCH_REG(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, %struct.bcm_enet_desc*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
