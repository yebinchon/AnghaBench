; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qca_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qca_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qcaspi = type { %struct.net_device*, i32, %struct.spi_device* }
%struct.net_device = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Missing device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"qca,legacy-mode\00", align 1
@qcaspi_clkspeed = common dso_local global i64 0, align 8
@QCASPI_CLK_SPEED = common dso_local global i64 0, align 8
@QCASPI_CLK_SPEED_MIN = common dso_local global i64 0, align 8
@QCASPI_CLK_SPEED_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid clkspeed: %d\0A\00", align 1
@qcaspi_burst_len = common dso_local global i64 0, align 8
@QCASPI_BURST_LEN_MIN = common dso_local global i64 0, align 8
@QCASPI_BURST_LEN_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid burst len: %d\0A\00", align 1
@qcaspi_pluggable = common dso_local global i64 0, align 8
@QCASPI_PLUGGABLE_MIN = common dso_local global i64 0, align 8
@QCASPI_PLUGGABLE_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Invalid pluggable: %d\0A\00", align 1
@wr_verify = common dso_local global i64 0, align 8
@QCASPI_WRITE_VERIFY_MIN = common dso_local global i64 0, align 8
@QCASPI_WRITE_VERIFY_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Invalid write verify: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"ver=%s, clkspeed=%d, burst_len=%d, pluggable=%d\0A\00", align 1
@QCASPI_DRV_VERSION = common dso_local global i32 0, align 4
@SPI_MODE_3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Unable to setup SPI device\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Fail to retrieve private structure\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Using random MAC address: %pM\0A\00", align 1
@SPI_REG_SIGNATURE = common dso_local global i32 0, align 4
@QCASPI_GOOD_SIGNATURE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"Invalid signature (0x%04X)\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Unable to register net device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @qca_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.qcaspi*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.qcaspi* null, %struct.qcaspi** %4, align 8
  store %struct.net_device* null, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 1
  %17 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %244

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @of_property_read_bool(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* @qcaspi_clkspeed, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* @qcaspi_clkspeed, align 8
  br label %39

37:                                               ; preds = %28
  %38 = load i64, i64* @QCASPI_CLK_SPEED, align 8
  store i64 %38, i64* @qcaspi_clkspeed, align 8
  br label %39

39:                                               ; preds = %37, %33
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i64, i64* @qcaspi_clkspeed, align 8
  %42 = load i64, i64* @QCASPI_CLK_SPEED_MIN, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @qcaspi_clkspeed, align 8
  %46 = load i64, i64* @QCASPI_CLK_SPEED_MAX, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44, %40
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 1
  %51 = load i64, i64* @qcaspi_clkspeed, align 8
  %52 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %244

55:                                               ; preds = %44
  %56 = load i64, i64* @qcaspi_burst_len, align 8
  %57 = load i64, i64* @QCASPI_BURST_LEN_MIN, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @qcaspi_burst_len, align 8
  %61 = load i64, i64* @QCASPI_BURST_LEN_MAX, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59, %55
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 1
  %66 = load i64, i64* @qcaspi_burst_len, align 8
  %67 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %244

70:                                               ; preds = %59
  %71 = load i64, i64* @qcaspi_pluggable, align 8
  %72 = load i64, i64* @QCASPI_PLUGGABLE_MIN, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* @qcaspi_pluggable, align 8
  %76 = load i64, i64* @QCASPI_PLUGGABLE_MAX, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74, %70
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 1
  %81 = load i64, i64* @qcaspi_pluggable, align 8
  %82 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %244

85:                                               ; preds = %74
  %86 = load i64, i64* @wr_verify, align 8
  %87 = load i64, i64* @QCASPI_WRITE_VERIFY_MIN, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* @wr_verify, align 8
  %91 = load i64, i64* @QCASPI_WRITE_VERIFY_MAX, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89, %85
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 1
  %96 = load i64, i64* @wr_verify, align 8
  %97 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %96)
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %244

100:                                              ; preds = %89
  %101 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %102 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %101, i32 0, i32 1
  %103 = load i32, i32* @QCASPI_DRV_VERSION, align 4
  %104 = load i64, i64* @qcaspi_clkspeed, align 8
  %105 = load i64, i64* @qcaspi_burst_len, align 8
  %106 = load i64, i64* @qcaspi_pluggable, align 8
  %107 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_info(%struct.TYPE_4__* %102, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %103, i64 %104, i64 %105, i64 %106)
  %108 = load i32, i32* @SPI_MODE_3, align 4
  %109 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %110 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i64, i64* @qcaspi_clkspeed, align 8
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = call i64 @spi_setup(%struct.spi_device* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %100
  %118 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %119 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %118, i32 0, i32 1
  %120 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32, i32* @EFAULT, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %244

123:                                              ; preds = %100
  %124 = call %struct.net_device* @alloc_etherdev(i32 24)
  store %struct.net_device* %124, %struct.net_device** %5, align 8
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = icmp ne %struct.net_device* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %244

130:                                              ; preds = %123
  %131 = load %struct.net_device*, %struct.net_device** %5, align 8
  %132 = call i32 @qcaspi_netdev_setup(%struct.net_device* %131)
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %135 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %134, i32 0, i32 1
  %136 = call i32 @SET_NETDEV_DEV(%struct.net_device* %133, %struct.TYPE_4__* %135)
  %137 = load %struct.net_device*, %struct.net_device** %5, align 8
  %138 = call %struct.qcaspi* @netdev_priv(%struct.net_device* %137)
  store %struct.qcaspi* %138, %struct.qcaspi** %4, align 8
  %139 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %140 = icmp ne %struct.qcaspi* %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %130
  %142 = load %struct.net_device*, %struct.net_device** %5, align 8
  %143 = call i32 @free_netdev(%struct.net_device* %142)
  %144 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %145 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %144, i32 0, i32 1
  %146 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %244

149:                                              ; preds = %130
  %150 = load %struct.net_device*, %struct.net_device** %5, align 8
  %151 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %152 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %151, i32 0, i32 0
  store %struct.net_device* %150, %struct.net_device** %152, align 8
  %153 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %154 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %155 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %154, i32 0, i32 2
  store %struct.spi_device* %153, %struct.spi_device** %155, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %158 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = call i32 @spi_set_drvdata(%struct.spi_device* %159, %struct.net_device* %160)
  %162 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %163 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @of_get_mac_address(i32 %165)
  store i8* %166, i8** %8, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @IS_ERR(i8* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %149
  %171 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %172 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %171, i32 0, i32 0
  %173 = load %struct.net_device*, %struct.net_device** %172, align 8
  %174 = getelementptr inbounds %struct.net_device, %struct.net_device* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @ether_addr_copy(i32 %175, i8* %176)
  br label %178

178:                                              ; preds = %170, %149
  %179 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %180 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %179, i32 0, i32 0
  %181 = load %struct.net_device*, %struct.net_device** %180, align 8
  %182 = getelementptr inbounds %struct.net_device, %struct.net_device* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @is_valid_ether_addr(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %199, label %186

186:                                              ; preds = %178
  %187 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %188 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %187, i32 0, i32 0
  %189 = load %struct.net_device*, %struct.net_device** %188, align 8
  %190 = call i32 @eth_hw_addr_random(%struct.net_device* %189)
  %191 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %192 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %191, i32 0, i32 1
  %193 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %194 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %193, i32 0, i32 0
  %195 = load %struct.net_device*, %struct.net_device** %194, align 8
  %196 = getelementptr inbounds %struct.net_device, %struct.net_device* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_info(%struct.TYPE_4__* %192, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %186, %178
  %200 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %201 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %200, i32 0, i32 0
  %202 = load %struct.net_device*, %struct.net_device** %201, align 8
  %203 = call i32 @netif_carrier_off(%struct.net_device* %202)
  %204 = load i64, i64* @qcaspi_pluggable, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %226, label %206

206:                                              ; preds = %199
  %207 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %208 = load i32, i32* @SPI_REG_SIGNATURE, align 4
  %209 = call i32 @qcaspi_read_register(%struct.qcaspi* %207, i32 %208, i64* %7)
  %210 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %211 = load i32, i32* @SPI_REG_SIGNATURE, align 4
  %212 = call i32 @qcaspi_read_register(%struct.qcaspi* %210, i32 %211, i64* %7)
  %213 = load i64, i64* %7, align 8
  %214 = load i64, i64* @QCASPI_GOOD_SIGNATURE, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %206
  %217 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %218 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %217, i32 0, i32 1
  %219 = load i64, i64* %7, align 8
  %220 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i64 %219)
  %221 = load %struct.net_device*, %struct.net_device** %5, align 8
  %222 = call i32 @free_netdev(%struct.net_device* %221)
  %223 = load i32, i32* @EFAULT, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %2, align 4
  br label %244

225:                                              ; preds = %206
  br label %226

226:                                              ; preds = %225, %199
  %227 = load %struct.net_device*, %struct.net_device** %5, align 8
  %228 = call i64 @register_netdev(%struct.net_device* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %226
  %231 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %232 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %231, i32 0, i32 1
  %233 = load %struct.net_device*, %struct.net_device** %5, align 8
  %234 = getelementptr inbounds %struct.net_device, %struct.net_device* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 (%struct.TYPE_4__*, i8*, ...) @dev_err(%struct.TYPE_4__* %232, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i64 %235)
  %237 = load %struct.net_device*, %struct.net_device** %5, align 8
  %238 = call i32 @free_netdev(%struct.net_device* %237)
  %239 = load i32, i32* @EFAULT, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %2, align 4
  br label %244

241:                                              ; preds = %226
  %242 = load %struct.qcaspi*, %struct.qcaspi** %4, align 8
  %243 = call i32 @qcaspi_init_device_debugfs(%struct.qcaspi* %242)
  store i32 0, i32* %2, align 4
  br label %244

244:                                              ; preds = %241, %230, %216, %141, %127, %117, %93, %78, %63, %48, %14
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i64 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @qcaspi_netdev_setup(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_4__*) #1

declare dso_local %struct.qcaspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.net_device*) #1

declare dso_local i8* @of_get_mac_address(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @qcaspi_read_register(%struct.qcaspi*, i32, i64*) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @qcaspi_init_device_debugfs(%struct.qcaspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
