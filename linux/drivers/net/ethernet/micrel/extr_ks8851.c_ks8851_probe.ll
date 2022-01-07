; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.net_device = type { i32, i32, i32*, i32, i32* }
%struct.ks8851_net = type { i32, i32, i32, i8*, i8*, %struct.net_device*, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.spi_device* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.ks8851_net* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ks8851_rst_n\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"reset gpio request failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"vdd-io\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"regulator vdd_io enable fail: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"regulator vdd enable fail: %d\0A\00", align 1
@ks8851_tx_work = common dso_local global i32 0, align 4
@ks8851_rxctrl_work = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@ks8851_eeprom_regread = common dso_local global i32 0, align 4
@ks8851_eeprom_regwrite = common dso_local global i32 0, align 4
@ks8851_phy_read = common dso_local global i32 0, align 4
@ks8851_phy_write = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"message enable is %d\0A\00", align 1
@msg_enable = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@NETIF_MSG_PROBE = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@ks8851_ethtool_ops = common dso_local global i32 0, align 4
@IF_PORT_100BASET = common dso_local global i32 0, align 4
@ks8851_netdev_ops = common dso_local global i32 0, align 4
@GRR_GSR = common dso_local global i32 0, align 4
@KS_CIDER = common dso_local global i32 0, align 4
@CIDER_REV_MASK = common dso_local global i32 0, align 4
@CIDER_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to read device ID\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@KS_CCR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to register network device\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"revision %d, MAC %pM, IRQ %d, %s EEPROM\0A\00", align 1
@CCR_EEPROM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"has\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ks8851_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ks8851_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = call %struct.net_device* @alloc_etherdev(i32 152)
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %319

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  store i32 8, i32* %17, align 4
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.ks8851_net* @netdev_priv(%struct.net_device* %18)
  store %struct.ks8851_net* %19, %struct.ks8851_net** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %22 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %21, i32 0, i32 5
  store %struct.net_device* %20, %struct.net_device** %22, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %25 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %24, i32 0, i32 18
  store %struct.spi_device* %23, %struct.spi_device** %25, align 8
  %26 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %27 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %26, i32 0, i32 0
  store i32 6144, i32* %27, align 8
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @of_get_named_gpio_flags(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %6, align 4
  br label %315

39:                                               ; preds = %15
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %42 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @gpio_is_valid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %48 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %47, i32 0, i32 1
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %51 = call i32 @devm_gpio_request_one(%struct.TYPE_10__* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %55, i32 0, i32 1
  %57 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %315

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %60, i32 0, i32 1
  %62 = call i8* @devm_regulator_get(%struct.TYPE_10__* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %64 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %66 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %72 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %6, align 4
  br label %314

75:                                               ; preds = %59
  %76 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %77 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @regulator_enable(i8* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %83, i32 0, i32 1
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %314

87:                                               ; preds = %75
  %88 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %89 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %88, i32 0, i32 1
  %90 = call i8* @devm_regulator_get(%struct.TYPE_10__* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %92 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %94 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %87
  %99 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %100 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %6, align 4
  br label %309

103:                                              ; preds = %87
  %104 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %105 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %104, i32 0, i32 4
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @regulator_enable(i8* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %112 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %111, i32 0, i32 1
  %113 = load i32, i32* %6, align 4
  %114 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  br label %309

115:                                              ; preds = %103
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @gpio_is_valid(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = call i32 @usleep_range(i32 10000, i32 11000)
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @gpio_set_value(i32 %121, i32 1)
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %125 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %124, i32 0, i32 17
  %126 = call i32 @mutex_init(i32* %125)
  %127 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %128 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %127, i32 0, i32 16
  %129 = call i32 @spin_lock_init(i32* %128)
  %130 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %131 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %130, i32 0, i32 15
  %132 = load i32, i32* @ks8851_tx_work, align 4
  %133 = call i32 @INIT_WORK(i32* %131, i32 %132)
  %134 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %135 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %134, i32 0, i32 14
  %136 = load i32, i32* @ks8851_rxctrl_work, align 4
  %137 = call i32 @INIT_WORK(i32* %135, i32 %136)
  %138 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %139 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %138, i32 0, i32 12
  %140 = call i32 @spi_message_init(i32* %139)
  %141 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %142 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %141, i32 0, i32 13
  %143 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %144 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %143, i32 0, i32 12
  %145 = call i32 @spi_message_add_tail(i32* %142, i32* %144)
  %146 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %147 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %146, i32 0, i32 10
  %148 = call i32 @spi_message_init(i32* %147)
  %149 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %150 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %149, i32 0, i32 11
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %154 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %153, i32 0, i32 10
  %155 = call i32 @spi_message_add_tail(i32* %152, i32* %154)
  %156 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %157 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %156, i32 0, i32 11
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %161 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %160, i32 0, i32 10
  %162 = call i32 @spi_message_add_tail(i32* %159, i32* %161)
  %163 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %164 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %165 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store %struct.ks8851_net* %163, %struct.ks8851_net** %166, align 8
  %167 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  %168 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %169 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 8
  %171 = load i32, i32* @ks8851_eeprom_regread, align 4
  %172 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %173 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* @ks8851_eeprom_regwrite, align 4
  %176 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %177 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load %struct.net_device*, %struct.net_device** %4, align 8
  %180 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %181 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %180, i32 0, i32 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  store %struct.net_device* %179, %struct.net_device** %182, align 8
  %183 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %184 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %187 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %186, i32 0, i32 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  store i32 1, i32* %188, align 4
  %189 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %190 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %189, i32 0, i32 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  store i32 15, i32* %191, align 8
  %192 = load i32, i32* @ks8851_phy_read, align 4
  %193 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %194 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 4
  store i32 %192, i32* %195, align 8
  %196 = load i32, i32* @ks8851_phy_write, align 4
  %197 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %198 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 3
  store i32 %196, i32* %199, align 4
  %200 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %201 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %200, i32 0, i32 1
  %202 = load i32, i32* @msg_enable, align 4
  %203 = call i32 @dev_info(%struct.TYPE_10__* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @msg_enable, align 4
  %205 = load i32, i32* @NETIF_MSG_DRV, align 4
  %206 = load i32, i32* @NETIF_MSG_PROBE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @NETIF_MSG_LINK, align 4
  %209 = or i32 %207, %208
  %210 = call i32 @netif_msg_init(i32 %204, i32 %209)
  %211 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %212 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %211, i32 0, i32 7
  store i32 %210, i32* %212, align 4
  %213 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %214 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %213, i32 0, i32 6
  %215 = call i32 @skb_queue_head_init(i32* %214)
  %216 = load %struct.net_device*, %struct.net_device** %4, align 8
  %217 = getelementptr inbounds %struct.net_device, %struct.net_device* %216, i32 0, i32 4
  store i32* @ks8851_ethtool_ops, i32** %217, align 8
  %218 = load %struct.net_device*, %struct.net_device** %4, align 8
  %219 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %220 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %219, i32 0, i32 1
  %221 = call i32 @SET_NETDEV_DEV(%struct.net_device* %218, %struct.TYPE_10__* %220)
  %222 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %223 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %224 = call i32 @spi_set_drvdata(%struct.spi_device* %222, %struct.ks8851_net* %223)
  %225 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %226 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %225, i32 0, i32 5
  %227 = load %struct.net_device*, %struct.net_device** %226, align 8
  %228 = call i32 @netif_carrier_off(%struct.net_device* %227)
  %229 = load i32, i32* @IF_PORT_100BASET, align 4
  %230 = load %struct.net_device*, %struct.net_device** %4, align 8
  %231 = getelementptr inbounds %struct.net_device, %struct.net_device* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 8
  %232 = load %struct.net_device*, %struct.net_device** %4, align 8
  %233 = getelementptr inbounds %struct.net_device, %struct.net_device* %232, i32 0, i32 2
  store i32* @ks8851_netdev_ops, i32** %233, align 8
  %234 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %235 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.net_device*, %struct.net_device** %4, align 8
  %238 = getelementptr inbounds %struct.net_device, %struct.net_device* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %240 = load i32, i32* @GRR_GSR, align 4
  %241 = call i32 @ks8851_soft_reset(%struct.ks8851_net* %239, i32 %240)
  %242 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %243 = load i32, i32* @KS_CIDER, align 4
  %244 = call i8* @ks8851_rdreg16(%struct.ks8851_net* %242, i32 %243)
  %245 = ptrtoint i8* %244 to i32
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* @CIDER_REV_MASK, align 4
  %248 = xor i32 %247, -1
  %249 = and i32 %246, %248
  %250 = load i32, i32* @CIDER_ID, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %123
  %253 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %254 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %253, i32 0, i32 1
  %255 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %254, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %256 = load i32, i32* @ENODEV, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %6, align 4
  br label %297

258:                                              ; preds = %123
  %259 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %260 = load i32, i32* @KS_CCR, align 4
  %261 = call i8* @ks8851_rdreg16(%struct.ks8851_net* %259, i32 %260)
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %264 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %266 = call i32 @ks8851_read_selftest(%struct.ks8851_net* %265)
  %267 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %268 = call i32 @ks8851_init_mac(%struct.ks8851_net* %267)
  %269 = load %struct.net_device*, %struct.net_device** %4, align 8
  %270 = call i32 @register_netdev(%struct.net_device* %269)
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %258
  %274 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %275 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %274, i32 0, i32 1
  %276 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %275, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %296

277:                                              ; preds = %258
  %278 = load %struct.net_device*, %struct.net_device** %4, align 8
  %279 = load i32, i32* %7, align 4
  %280 = call i32 @CIDER_REV_GET(i32 %279)
  %281 = load %struct.net_device*, %struct.net_device** %4, align 8
  %282 = getelementptr inbounds %struct.net_device, %struct.net_device* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.net_device*, %struct.net_device** %4, align 8
  %285 = getelementptr inbounds %struct.net_device, %struct.net_device* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %288 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @CCR_EEPROM, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)
  %295 = call i32 @netdev_info(%struct.net_device* %278, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %280, i32 %283, i32 %286, i8* %294)
  store i32 0, i32* %2, align 4
  br label %319

296:                                              ; preds = %273
  br label %297

297:                                              ; preds = %296, %252
  %298 = load i32, i32* %8, align 4
  %299 = call i64 @gpio_is_valid(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %297
  %302 = load i32, i32* %8, align 4
  %303 = call i32 @gpio_set_value(i32 %302, i32 0)
  br label %304

304:                                              ; preds = %301, %297
  %305 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %306 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %305, i32 0, i32 4
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @regulator_disable(i8* %307)
  br label %309

309:                                              ; preds = %304, %110, %98
  %310 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %311 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %310, i32 0, i32 3
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @regulator_disable(i8* %312)
  br label %314

314:                                              ; preds = %309, %82, %70
  br label %315

315:                                              ; preds = %314, %54, %37
  %316 = load %struct.net_device*, %struct.net_device** %4, align 8
  %317 = call i32 @free_netdev(%struct.net_device* %316)
  %318 = load i32, i32* %6, align 4
  store i32 %318, i32* %2, align 4
  br label %319

319:                                              ; preds = %315, %277, %12
  %320 = load i32, i32* %2, align 4
  ret i32 %320
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.ks8851_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @of_get_named_gpio_flags(i32, i8*, i32, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_10__*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spi_message_init(i32*) #1

declare dso_local i32 @spi_message_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_10__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.ks8851_net*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ks8851_soft_reset(%struct.ks8851_net*, i32) #1

declare dso_local i8* @ks8851_rdreg16(%struct.ks8851_net*, i32) #1

declare dso_local i32 @ks8851_read_selftest(%struct.ks8851_net*) #1

declare dso_local i32 @ks8851_init_mac(%struct.ks8851_net*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @CIDER_REV_GET(i32) #1

declare dso_local i32 @regulator_disable(i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
