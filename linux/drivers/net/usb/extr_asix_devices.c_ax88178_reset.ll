; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88178_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88178_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.asix_data = type { i32, i32, i32* }

@AX_CMD_READ_GPIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"GPIO Status: 0x%04x\0A\00", align 1
@AX_CMD_WRITE_ENABLE = common dso_local global i32 0, align 4
@AX_CMD_READ_EEPROM = common dso_local global i32 0, align 4
@AX_CMD_WRITE_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"EEPROM index 0x17 is 0x%04x\0A\00", align 1
@PHY_MODE_MARVELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"GPIO0: %d, PhyMode: %d\0A\00", align 1
@AX_GPIO_RSE = common dso_local global i32 0, align 4
@AX_GPIO_GPO_1 = common dso_local global i32 0, align 4
@AX_GPIO_GPO1EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"gpio phymode == 1 path\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"PHYID=0x%08x\0A\00", align 1
@AX_CMD_SW_PHY_SELECT = common dso_local global i32 0, align 4
@AX_SWRESET_PRL = common dso_local global i32 0, align 4
@AX_SWRESET_IPPD = common dso_local global i32 0, align 4
@PHY_MODE_RTL8211CL = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@AX88178_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AX_CMD_WRITE_NODE_ID = common dso_local global i32 0, align 4
@AX_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88178_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88178_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.asix_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 2
  %12 = bitcast i32* %11 to %struct.asix_data*
  store %struct.asix_data* %12, %struct.asix_data** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = load i32, i32* @AX_CMD_READ_GPIOS, align 4
  %15 = call i32 @asix_read_cmd(%struct.usbnet* %13, i32 %14, i32 0, i32 0, i32 1, i64* %7, i32 0)
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %22 = load i32, i32* @AX_CMD_WRITE_ENABLE, align 4
  %23 = call i32 @asix_write_cmd(%struct.usbnet* %21, i32 %22, i32 0, i32 0, i32 0, i32* null, i32 0)
  %24 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %25 = load i32, i32* @AX_CMD_READ_EEPROM, align 4
  %26 = call i32 @asix_read_cmd(%struct.usbnet* %24, i32 %25, i32 23, i32 0, i32 2, i64* %6, i32 0)
  %27 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %28 = load i32, i32* @AX_CMD_WRITE_DISABLE, align 4
  %29 = call i32 @asix_write_cmd(%struct.usbnet* %27, i32 %28, i32 0, i32 0, i32 0, i32* null, i32 0)
  %30 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @cpu_to_le16(i32 65535)
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %1
  %39 = load i32, i32* @PHY_MODE_MARVELL, align 4
  %40 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %41 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %43 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  store i32 1, i32* %8, align 4
  br label %61

44:                                               ; preds = %1
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @le16_to_cpu(i64 %45)
  %47 = and i32 %46, 127
  %48 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %49 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @le16_to_cpu(i64 %50)
  %52 = ashr i32 %51, 8
  %53 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %54 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @le16_to_cpu(i64 %55)
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 0, i32 1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %44, %38
  %62 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %67 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %71 = load i32, i32* @AX_GPIO_RSE, align 4
  %72 = load i32, i32* @AX_GPIO_GPO_1, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AX_GPIO_GPO1EN, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @asix_write_gpio(%struct.usbnet* %70, i32 %75, i32 40, i32 0)
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @le16_to_cpu(i64 %77)
  %79 = ashr i32 %78, 8
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %61
  %82 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %83 = call i32 @asix_write_gpio(%struct.usbnet* %82, i32 60, i32 30, i32 0)
  %84 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %85 = call i32 @asix_write_gpio(%struct.usbnet* %84, i32 28, i32 300, i32 0)
  %86 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %87 = call i32 @asix_write_gpio(%struct.usbnet* %86, i32 60, i32 30, i32 0)
  br label %101

88:                                               ; preds = %61
  %89 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %90 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %94 = load i32, i32* @AX_GPIO_GPO1EN, align 4
  %95 = call i32 @asix_write_gpio(%struct.usbnet* %93, i32 %94, i32 30, i32 0)
  %96 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %97 = load i32, i32* @AX_GPIO_GPO1EN, align 4
  %98 = load i32, i32* @AX_GPIO_GPO_1, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @asix_write_gpio(%struct.usbnet* %96, i32 %99, i32 30, i32 0)
  br label %101

101:                                              ; preds = %88, %81
  %102 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %103 = call i64 @asix_get_phyid(%struct.usbnet* %102)
  store i64 %103, i64* %9, align 8
  %104 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %105 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 (%struct.TYPE_4__*, i8*, ...) @netdev_dbg(%struct.TYPE_4__* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %107)
  %109 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %110 = load i32, i32* @AX_CMD_SW_PHY_SELECT, align 4
  %111 = call i32 @asix_write_cmd(%struct.usbnet* %109, i32 %110, i32 0, i32 0, i32 0, i32* null, i32 0)
  %112 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %113 = call i32 @asix_sw_reset(%struct.usbnet* %112, i32 0, i32 0)
  %114 = call i32 @msleep(i32 150)
  %115 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %116 = load i32, i32* @AX_SWRESET_PRL, align 4
  %117 = load i32, i32* @AX_SWRESET_IPPD, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @asix_sw_reset(%struct.usbnet* %115, i32 %118, i32 0)
  %120 = call i32 @msleep(i32 150)
  %121 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %122 = call i32 @asix_write_rx_ctl(%struct.usbnet* %121, i32 0, i32 0)
  %123 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %124 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @PHY_MODE_MARVELL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %101
  %129 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %130 = call i32 @marvell_phy_init(%struct.usbnet* %129)
  %131 = call i32 @msleep(i32 60)
  br label %142

132:                                              ; preds = %101
  %133 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %134 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @PHY_MODE_RTL8211CL, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %140 = call i32 @rtl8211cl_phy_init(%struct.usbnet* %139)
  br label %141

141:                                              ; preds = %138, %132
  br label %142

142:                                              ; preds = %141, %128
  %143 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %144 = load i32, i32* @BMCR_RESET, align 4
  %145 = load i32, i32* @BMCR_ANENABLE, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @asix_phy_reset(%struct.usbnet* %143, i32 %146)
  %148 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %149 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %152 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @MII_ADVERTISE, align 4
  %156 = load i32, i32* @ADVERTISE_ALL, align 4
  %157 = load i32, i32* @ADVERTISE_CSMA, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @asix_mdio_write(%struct.TYPE_4__* %150, i32 %154, i32 %155, i32 %160)
  %162 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %163 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %166 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @MII_CTRL1000, align 4
  %170 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %171 = call i32 @asix_mdio_write(%struct.TYPE_4__* %164, i32 %168, i32 %169, i32 %170)
  %172 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %173 = load i32, i32* @AX88178_MEDIUM_DEFAULT, align 4
  %174 = call i32 @asix_write_medium_mode(%struct.usbnet* %172, i32 %173, i32 0)
  %175 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %176 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %175, i32 0, i32 1
  %177 = call i32 @mii_nway_restart(%struct.TYPE_5__* %176)
  %178 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %179 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %182 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @ETH_ALEN, align 4
  %187 = call i32 @memcpy(i32* %180, i32 %185, i32 %186)
  %188 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %189 = load i32, i32* @AX_CMD_WRITE_NODE_ID, align 4
  %190 = load i32, i32* @ETH_ALEN, align 4
  %191 = load %struct.asix_data*, %struct.asix_data** %4, align 8
  %192 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @asix_write_cmd(%struct.usbnet* %188, i32 %189, i32 0, i32 0, i32 %190, i32* %193, i32 0)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %142
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %2, align 4
  br label %208

199:                                              ; preds = %142
  %200 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %201 = load i32, i32* @AX_DEFAULT_RX_CTL, align 4
  %202 = call i32 @asix_write_rx_ctl(%struct.usbnet* %200, i32 %201, i32 0)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %2, align 4
  br label %208

207:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %205, %197
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @asix_write_gpio(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i64 @asix_get_phyid(%struct.usbnet*) #1

declare dso_local i32 @asix_sw_reset(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @asix_write_rx_ctl(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @marvell_phy_init(%struct.usbnet*) #1

declare dso_local i32 @rtl8211cl_phy_init(%struct.usbnet*) #1

declare dso_local i32 @asix_phy_reset(%struct.usbnet*, i32) #1

declare dso_local i32 @asix_mdio_write(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @mii_nway_restart(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
