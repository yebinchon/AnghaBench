; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32*, i32, i32 }
%struct.smsc911x_data = type { i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Driver Parameters:\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"LAN base: 0x%08lX\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"IRQ: %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"PHY will be autodetected.\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"pdata->ioaddr: 0x00000000\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PMT_CTRL_READY_ = common dso_local global i32 0, align 4
@PMT_CTRL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Device not READY in 100ms aborting\0A\00", align 1
@BYTE_TEST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"BYTE_TEST: 0x%08X\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"BYTE_TEST looks swapped, applying WORD_SWAP\00", align 1
@WORD_SWAP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"top 16 bits equal to bottom 16 bits\00", align 1
@.str.9 = private unnamed_addr constant [73 x i8] c"This may mean the chip is set for 32 bit while the bus is reading 16 bit\00", align 1
@ID_REV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"LAN911x not identified, idrev: 0x%08X\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"LAN911x identified, idrev: 0x%08X, generation: %d\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"This driver is not intended for this chip revision\00", align 1
@SMSC911X_SAVE_MAC_ADDRESS = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@smsc911x_poll = common dso_local global i32 0, align 4
@SMSC_NAPI_WEIGHT = common dso_local global i32 0, align 4
@smsc911x_netdev_ops = common dso_local global i32 0, align 4
@smsc911x_ethtool_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc911x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %8)
  store %struct.smsc911x_data* %9, %struct.smsc911x_data** %4, align 8
  store i32 100, i32* %7, align 4
  %10 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %11 = load i32, i32* @probe, align 4
  %12 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %10, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %14 = load i32, i32* @probe, align 4
  %15 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %16 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %13, i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %21 = load i32, i32* @probe, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %20, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %27 = load i32, i32* @probe, align 4
  %28 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %26, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %30 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %29, i32 0, i32 6
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %33 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %32, i32 0, i32 3
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %36 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %41 = load i32, i32* @probe, align 4
  %42 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %40, i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %216

45:                                               ; preds = %1
  %46 = load i32, i32* @PMT_CTRL_READY_, align 4
  %47 = load i32, i32* @PMT_CTRL_READY_, align 4
  %48 = call i32 @swahw32(i32 %47)
  %49 = or i32 %46, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %63, %45
  %51 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %52 = load i32, i32* @PMT_CTRL, align 4
  %53 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %51, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %57, %50
  %62 = phi i1 [ false, %50 ], [ %60, %57 ]
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = call i32 @udelay(i32 1000)
  br label %50

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.net_device*, %struct.net_device** %3, align 8
  %70 = call i32 @netdev_err(%struct.net_device* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %216

73:                                               ; preds = %65
  %74 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %75 = load i32, i32* @BYTE_TEST, align 4
  %76 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %78 = load i32, i32* @probe, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %77, i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 1126270821
  br i1 %82, label %83, label %96

83:                                               ; preds = %73
  %84 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %85 = load i32, i32* @probe, align 4
  %86 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %84, i32 %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %87 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %88 = load i32, i32* @WORD_SWAP, align 4
  %89 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %87, i32 %88, i32 -1)
  %90 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %91 = load i32, i32* @BYTE_TEST, align 4
  %92 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %94 = load i32, i32* @BYTE_TEST, align 4
  %95 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %83, %73
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, -2023406815
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %101 = load i32, i32* @drv, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %100, i32 %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 65535
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %99
  %111 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %112 = load i32, i32* @probe, align 4
  %113 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %111, i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %114 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %115 = load i32, i32* @probe, align 4
  %116 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %114, i32 %115, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.9, i64 0, i64 0))
  br label %117

117:                                              ; preds = %110, %99
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %216

120:                                              ; preds = %96
  %121 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %122 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %121, i32 0, i32 0
  store i32 0, i32* %122, align 8
  %123 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %124 = load i32, i32* @ID_REV, align 4
  %125 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %123, i32 %124)
  %126 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %127 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %129 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, -65536
  switch i32 %131, label %145 [
    i32 137, label %132
    i32 138, label %132
    i32 139, label %132
    i32 140, label %132
    i32 141, label %132
    i32 131, label %139
    i32 132, label %139
    i32 133, label %139
    i32 134, label %139
    i32 136, label %142
    i32 135, label %142
    i32 130, label %142
    i32 129, label %142
    i32 128, label %142
  ]

132:                                              ; preds = %120, %120, %120, %120, %120
  %133 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %134 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 65535
  %137 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %138 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %154

139:                                              ; preds = %120, %120, %120, %120
  %140 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %141 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %140, i32 0, i32 0
  store i32 3, i32* %141, align 8
  br label %154

142:                                              ; preds = %120, %120, %120, %120, %120
  %143 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %144 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %143, i32 0, i32 0
  store i32 4, i32* %144, align 8
  br label %154

145:                                              ; preds = %120
  %146 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %147 = load i32, i32* @probe, align 4
  %148 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %149 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %146, i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %216

154:                                              ; preds = %142, %139, %132
  %155 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %156 = load i32, i32* @probe, align 4
  %157 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %158 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %161 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %155, i32 %156, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i32 %159, i32 %162)
  %164 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %165 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %154
  %169 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %170 = load i32, i32* @probe, align 4
  %171 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %169, i32 %170, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  br label %172

172:                                              ; preds = %168, %154
  %173 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %174 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SMSC911X_SAVE_MAC_ADDRESS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %172
  %181 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %182 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %181, i32 0, i32 3
  %183 = call i32 @spin_lock_irq(i32* %182)
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = call i32 @smsc911x_read_mac_address(%struct.net_device* %184)
  %186 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %187 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %186, i32 0, i32 3
  %188 = call i32 @spin_unlock_irq(i32* %187)
  br label %189

189:                                              ; preds = %180, %172
  %190 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %191 = call i64 @smsc911x_phy_reset(%struct.smsc911x_data* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %195 = call i64 @smsc911x_soft_reset(%struct.smsc911x_data* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193, %189
  %198 = load i32, i32* @ENODEV, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %2, align 4
  br label %216

200:                                              ; preds = %193
  %201 = load i32, i32* @IFF_MULTICAST, align 4
  %202 = load %struct.net_device*, %struct.net_device** %3, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.net_device*, %struct.net_device** %3, align 8
  %207 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %208 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %207, i32 0, i32 2
  %209 = load i32, i32* @smsc911x_poll, align 4
  %210 = load i32, i32* @SMSC_NAPI_WEIGHT, align 4
  %211 = call i32 @netif_napi_add(%struct.net_device* %206, i32* %208, i32 %209, i32 %210)
  %212 = load %struct.net_device*, %struct.net_device** %3, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 1
  store i32* @smsc911x_netdev_ops, i32** %213, align 8
  %214 = load %struct.net_device*, %struct.net_device** %3, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 0
  store i32* @smsc911x_ethtool_ops, i32** %215, align 8
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %200, %197, %145, %117, %68, %39
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @swahw32(i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @smsc911x_read_mac_address(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @smsc911x_phy_reset(%struct.smsc911x_data*) #1

declare dso_local i64 @smsc911x_soft_reset(%struct.smsc911x_data*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
