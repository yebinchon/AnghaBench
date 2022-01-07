; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_pci.c_ath_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32, i32 }
%struct.ath_softc = type { i32, i64, %struct.TYPE_2__*, i32, i32*, %struct.ieee80211_hw* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ieee80211_hw = type { i32, %struct.ath_softc* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"32-bit DMA not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"32-bit DMA consistent DMA enable failed\0A\00", align 1
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ath9k\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"PCI memory region reserve error\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ath9k_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"No memory for ieee80211_hw\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ath9k_use_msi = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Using MSI\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Using INTx\0A\00", align 1
@ath_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@ath_pci_bus_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Failed to initialize device\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"%s mem=0x%lx, irq=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ath_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i64 @pcim_enable_device(%struct.pci_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %213

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @DMA_BIT_MASK(i32 32)
  %22 = call i32 @pci_set_dma_mask(%struct.pci_dev* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %213

28:                                               ; preds = %19
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @DMA_BIT_MASK(i32 32)
  %31 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %213

37:                                               ; preds = %28
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %40 = call i32 @pci_read_config_byte(%struct.pci_dev* %38, i32 %39, i32* %8)
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* @L1_CACHE_BYTES, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @pci_write_config_byte(%struct.pci_dev* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %55 = call i32 @pci_write_config_byte(%struct.pci_dev* %53, i32 %54, i32 168)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = call i32 @pci_set_master(%struct.pci_dev* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @pci_read_config_dword(%struct.pci_dev* %58, i32 64, i32* %9)
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 65280
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, -65281
  %67 = call i32 @pci_write_config_dword(%struct.pci_dev* %64, i32 64, i32 %66)
  br label %68

68:                                               ; preds = %63, %52
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = call i32 @BIT(i32 0)
  %71 = call i32 @pcim_iomap_regions(%struct.pci_dev* %69, i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 1
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %213

80:                                               ; preds = %68
  %81 = call i32 (...) @ath9k_fill_chanctx_ops()
  %82 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 48, i32* @ath9k_ops)
  store %struct.ieee80211_hw* %82, %struct.ieee80211_hw** %7, align 8
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %84 = icmp ne %struct.ieee80211_hw* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %80
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 1
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %213

91:                                               ; preds = %80
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 1
  %95 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %92, i32* %94)
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %98 = call i32 @pci_set_drvdata(%struct.pci_dev* %96, %struct.ieee80211_hw* %97)
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %99, i32 0, i32 1
  %101 = load %struct.ath_softc*, %struct.ath_softc** %100, align 8
  store %struct.ath_softc* %101, %struct.ath_softc** %6, align 8
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %103 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %104 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %103, i32 0, i32 5
  store %struct.ieee80211_hw* %102, %struct.ieee80211_hw** %104, align 8
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 1
  %107 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %108 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %107, i32 0, i32 4
  store i32* %106, i32** %108, align 8
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = call i64* @pcim_iomap_table(%struct.pci_dev* %109)
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %114 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  %115 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %116 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %119 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* @ath9k_use_msi, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %91
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = call i64 @pci_enable_msi(%struct.pci_dev* %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  store i32 1, i32* %12, align 4
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 1
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %134

130:                                              ; preds = %122
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 1
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %126
  br label %135

135:                                              ; preds = %134, %91
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %135
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ath_isr, align 4
  %143 = load i32, i32* @IRQF_SHARED, align 4
  %144 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %145 = call i32 @request_irq(i32 %141, i32 %142, i32 %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.ath_softc* %144)
  store i32 %145, i32* %10, align 4
  br label %153

146:                                              ; preds = %135
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ath_isr, align 4
  %151 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %152 = call i32 @request_irq(i32 %149, i32 %150, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.ath_softc* %151)
  store i32 %152, i32* %10, align 4
  br label %153

153:                                              ; preds = %146, %138
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %158 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 1
  %159 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %209

160:                                              ; preds = %153
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %165 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %167 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %170 = call i32 @ath9k_init_device(i32 %168, %struct.ath_softc* %169, i32* @ath_pci_bus_ops)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %160
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %174, i32 0, i32 1
  %176 = call i32 @dev_err(i32* %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %203

177:                                              ; preds = %160
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %180 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %179, i32 0, i32 2
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32 %178, i32* %182, align 8
  %183 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %184 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %183, i32 0, i32 2
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %188 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %187, i32 0, i32 2
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %191 = call i32 @ath9k_hw_name(%struct.TYPE_2__* %189, i8* %190, i32 64)
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %193 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %196 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %197 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @wiphy_info(i32 %194, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %195, i64 %198, i32 %201)
  store i32 0, i32* %3, align 4
  br label %213

203:                                              ; preds = %173
  %204 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %205 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %208 = call i32 @free_irq(i32 %206, %struct.ath_softc* %207)
  br label %209

209:                                              ; preds = %203, %156
  %210 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %211 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %210)
  %212 = load i32, i32* %10, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %177, %85, %74, %34, %25, %16
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i64 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcim_iomap_regions(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ath9k_fill_chanctx_ops(...) #1

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ieee80211_hw*) #1

declare dso_local i64* @pcim_iomap_table(%struct.pci_dev*) #1

declare dso_local i64 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ath_softc*) #1

declare dso_local i32 @ath9k_init_device(i32, %struct.ath_softc*, i32*) #1

declare dso_local i32 @ath9k_hw_name(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @wiphy_info(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ath_softc*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
