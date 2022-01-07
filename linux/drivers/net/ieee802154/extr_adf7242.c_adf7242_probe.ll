; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_adf7242.c_adf7242_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ieee802154_hw = type { i32, %struct.TYPE_7__*, i64, i32*, %struct.adf7242_local* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i32, i32, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.adf7242_local = type { %struct.ieee802154_hw*, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, %struct.spi_device* }
%struct.TYPE_8__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [18 x i8] c"no IRQ specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@adf7242_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE802154_HW_OMIT_CKSUM = common dso_local global i32 0, align 4
@IEEE802154_HW_CSMA_PARAMS = common dso_local global i32 0, align 4
@IEEE802154_HW_FRAME_RETRIES = common dso_local global i32 0, align 4
@IEEE802154_HW_AFILT = common dso_local global i32 0, align 4
@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_TXPOWER = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_ED_LEVEL = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_MODE = common dso_local global i32 0, align 4
@NL802154_CCA_ENERGY = common dso_local global i32 0, align 4
@adf7242_ed_levels = common dso_local global i8* null, align 8
@adf7242_powers = common dso_local global i8* null, align 8
@CMD_SPI_NOP = common dso_local global i32 0, align 4
@adf7242_rx_cal_work = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@adf7242_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"mac802154 IRQ-%d registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adf7242_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf7242_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.adf7242_local*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %278

18:                                               ; preds = %1
  %19 = call %struct.ieee802154_hw* @ieee802154_alloc_hw(i32 72, i32* @adf7242_ops)
  store %struct.ieee802154_hw* %19, %struct.ieee802154_hw** %4, align 8
  %20 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %21 = icmp ne %struct.ieee802154_hw* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %278

25:                                               ; preds = %18
  %26 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %26, i32 0, i32 4
  %28 = load %struct.adf7242_local*, %struct.adf7242_local** %27, align 8
  store %struct.adf7242_local* %28, %struct.adf7242_local** %5, align 8
  %29 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %30 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %31 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %30, i32 0, i32 0
  store %struct.ieee802154_hw* %29, %struct.ieee802154_hw** %31, align 8
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %34 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %33, i32 0, i32 9
  store %struct.spi_device* %32, %struct.spi_device** %34, align 8
  %35 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %36 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %37 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %36, i32 0, i32 4
  store %struct.adf7242_local* %35, %struct.adf7242_local** %37, align 8
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 1
  %40 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %41 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %43 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 134215680, i32* %50, align 4
  %51 = load i32, i32* @IEEE802154_HW_OMIT_CKSUM, align 4
  %52 = load i32, i32* @IEEE802154_HW_CSMA_PARAMS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @IEEE802154_HW_FRAME_RETRIES, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IEEE802154_HW_AFILT, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %61 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @WPAN_PHY_FLAG_TXPOWER, align 4
  %63 = load i32, i32* @WPAN_PHY_FLAG_CCA_ED_LEVEL, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WPAN_PHY_FLAG_CCA_MODE, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %68 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* @NL802154_CCA_ENERGY, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %74 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 13
  store i32 %72, i32* %77, align 8
  %78 = load i8*, i8** @adf7242_ed_levels, align 8
  %79 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %80 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 12
  store i8* %78, i8** %83, align 8
  %84 = load i8*, i8** @adf7242_ed_levels, align 8
  %85 = call i8* @ARRAY_SIZE(i8* %84)
  %86 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %87 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 11
  store i8* %85, i8** %90, align 8
  %91 = load i32, i32* @NL802154_CCA_ENERGY, align 4
  %92 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %93 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %91, i32* %96, align 8
  %97 = load i8*, i8** @adf7242_powers, align 8
  %98 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %99 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 10
  store i8* %97, i8** %102, align 8
  %103 = load i8*, i8** @adf7242_powers, align 8
  %104 = call i8* @ARRAY_SIZE(i8* %103)
  %105 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %106 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 9
  store i8* %104, i8** %109, align 8
  %110 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 8
  store i64 0, i64* %114, align 8
  %115 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  store i32 8, i32* %119, align 8
  %120 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %121 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  store i32 3, i32* %124, align 4
  %125 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %126 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  store i32 8, i32* %129, align 8
  %130 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %131 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 7
  store i64 0, i64* %134, align 8
  %135 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %136 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  store i32 15, i32* %139, align 4
  %140 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %141 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %140, i32 0, i32 1
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 6
  store i64 0, i64* %144, align 8
  %145 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %146 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 5
  store i32 5, i32* %149, align 8
  %150 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %151 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = call i32 @ieee802154_random_extended_addr(i32* %153)
  %155 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %156 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %155, i32 0, i32 1
  %157 = call i32 @mutex_init(i32* %156)
  %158 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %159 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %158, i32 0, i32 8
  %160 = call i32 @init_completion(i32* %159)
  %161 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %162 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %165 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %164, i32 0, i32 6
  %166 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %167 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  store i32* %165, i32** %168, align 8
  %169 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %170 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %169, i32 0, i32 7
  %171 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %172 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  store i32* %170, i32** %173, align 8
  %174 = load i32, i32* @CMD_SPI_NOP, align 4
  %175 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %176 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %178 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %177, i32 0, i32 4
  %179 = call i32 @spi_message_init(i32* %178)
  %180 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %181 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %180, i32 0, i32 5
  %182 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %183 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %182, i32 0, i32 4
  %184 = call i32 @spi_message_add_tail(%struct.TYPE_8__* %181, i32* %183)
  %185 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %186 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %187 = call i32 @spi_set_drvdata(%struct.spi_device* %185, %struct.adf7242_local* %186)
  %188 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %189 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %188, i32 0, i32 3
  %190 = load i32, i32* @adf7242_rx_cal_work, align 4
  %191 = call i32 @INIT_DELAYED_WORK(i32* %189, i32 %190)
  %192 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %193 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %192, i32 0, i32 1
  %194 = call i32 @dev_name(i32* %193)
  %195 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %196 = call i32 @alloc_ordered_workqueue(i32 %194, i32 %195)
  %197 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %198 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  %199 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %200 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %25
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %6, align 4
  br label %269

210:                                              ; preds = %25
  %211 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %212 = call i32 @adf7242_hw_init(%struct.adf7242_local* %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %269

216:                                              ; preds = %210
  %217 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %218 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @irq_get_trigger_type(i32 %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %216
  %224 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %223, %216
  %226 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %227 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %226, i32 0, i32 1
  %228 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %229 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @adf7242_isr, align 4
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @IRQF_ONESHOT, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %236 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %235, i32 0, i32 1
  %237 = call i32 @dev_name(i32* %236)
  %238 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %239 = call i32 @devm_request_threaded_irq(i32* %227, i32 %230, i32* null, i32 %231, i32 %234, i32 %237, %struct.adf7242_local* %238)
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %225
  br label %269

243:                                              ; preds = %225
  %244 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %245 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @disable_irq(i32 %246)
  %248 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %249 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %248, i32 0, i32 0
  %250 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %249, align 8
  %251 = call i32 @ieee802154_register_hw(%struct.ieee802154_hw* %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %243
  br label %269

255:                                              ; preds = %243
  %256 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %257 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %256, i32 0, i32 1
  %258 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %259 = call i32 @dev_set_drvdata(i32* %257, %struct.adf7242_local* %258)
  %260 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %261 = call i32 @adf7242_debugfs_init(%struct.adf7242_local* %260)
  %262 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %263 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %262, i32 0, i32 1
  %264 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %265 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @dev_info(i32* %263, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* %6, align 4
  store i32 %268, i32* %2, align 4
  br label %278

269:                                              ; preds = %254, %242, %215, %207
  %270 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %271 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %270, i32 0, i32 1
  %272 = call i32 @mutex_destroy(i32* %271)
  %273 = load %struct.adf7242_local*, %struct.adf7242_local** %5, align 8
  %274 = getelementptr inbounds %struct.adf7242_local, %struct.adf7242_local* %273, i32 0, i32 0
  %275 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %274, align 8
  %276 = call i32 @ieee802154_free_hw(%struct.ieee802154_hw* %275)
  %277 = load i32, i32* %6, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %269, %255, %22, %12
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ieee802154_hw* @ieee802154_alloc_hw(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ieee802154_random_extended_addr(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.adf7242_local*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @adf7242_hw_init(%struct.adf7242_local*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.adf7242_local*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @ieee802154_register_hw(%struct.ieee802154_hw*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.adf7242_local*) #1

declare dso_local i32 @adf7242_debugfs_init(%struct.adf7242_local*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @ieee802154_free_hw(%struct.ieee802154_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
