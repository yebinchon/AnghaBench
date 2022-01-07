; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32, %struct.smsc911x_platform_config*, i32 }
%struct.smsc911x_platform_config = type { %struct.smsc911x_platform_config*, i64 }
%struct.smsc911x_data = type { i32, i32*, i32, %struct.smsc911x_platform_config, i32*, %struct.net_device* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"smsc911x-memory\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not allocate resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not allocate irq resource\0A\00", align 1
@SMSC_CHIPNAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Error smsc911x base address invalid\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error smsc911x config not found\00", align 1
@standard_smsc911x_ops = common dso_local global i32 0, align 4
@shifted_smsc911x_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Error %i initialising mii\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Error %i registering device\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Network interface: \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"MAC Address is specified by configuration\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"MAC Address specified by platform data\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Mac Address is read from LAN911x EEPROM\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"MAC Address is set to eth_random_addr\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"MAC Address: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smsc911x_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.smsc911x_data*, align 8
  %6 = alloca %struct.smsc911x_platform_config*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.smsc911x_platform_config* @dev_get_platdata(i32* %12)
  store %struct.smsc911x_platform_config* %13, %struct.smsc911x_platform_config** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %16, %struct.resource** %7, align 8
  %17 = load %struct.resource*, %struct.resource** %7, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %7, align 8
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.resource*, %struct.resource** %7, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %301

30:                                               ; preds = %23
  %31 = load %struct.resource*, %struct.resource** %7, align 8
  %32 = call i32 @resource_size(%struct.resource* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = call i32 @platform_get_irq(%struct.platform_device* %33, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %301

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %301

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.resource*, %struct.resource** %7, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SMSC_CHIPNAME, align 4
  %56 = call i32 @request_mem_region(i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %301

61:                                               ; preds = %50
  %62 = call %struct.net_device* @alloc_etherdev(i32 56)
  store %struct.net_device* %62, %struct.net_device** %4, align 8
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = icmp ne %struct.net_device* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %294

68:                                               ; preds = %61
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @SET_NETDEV_DEV(%struct.net_device* %69, i32* %71)
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %73)
  store %struct.smsc911x_data* %74, %struct.smsc911x_data** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.resource*, %struct.resource** %7, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32* @ioremap_nocache(i32 %80, i32 %81)
  %83 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %84 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %86 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %68
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %291

92:                                               ; preds = %68
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %95 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %94, i32 0, i32 5
  store %struct.net_device* %93, %struct.net_device** %95, align 8
  %96 = load i32, i32* @debug, align 4
  %97 = shl i32 1, %96
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %100 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.net_device* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = call i32 @smsc911x_request_resources(%struct.platform_device* %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %286

109:                                              ; preds = %92
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = call i32 @smsc911x_enable_resources(%struct.platform_device* %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %283

115:                                              ; preds = %109
  %116 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %117 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %122 = load i32, i32* @probe, align 4
  %123 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %121, i32 %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %10, align 4
  br label %274

126:                                              ; preds = %115
  %127 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %128 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %127, i32 0, i32 3
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @smsc911x_probe_config(%struct.smsc911x_platform_config* %128, i32* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %6, align 8
  %136 = icmp ne %struct.smsc911x_platform_config* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %139 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %138, i32 0, i32 3
  %140 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %6, align 8
  %141 = call i32 @memcpy(%struct.smsc911x_platform_config* %139, %struct.smsc911x_platform_config* %140, i32 16)
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %137, %134, %126
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %147 = load i32, i32* @probe, align 4
  %148 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %146, i32 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %274

149:                                              ; preds = %142
  %150 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %151 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %150, i32 0, i32 4
  store i32* @standard_smsc911x_ops, i32** %151, align 8
  %152 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %153 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %159 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %158, i32 0, i32 4
  store i32* @shifted_smsc911x_ops, i32** %159, align 8
  br label %160

160:                                              ; preds = %157, %149
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @pm_runtime_enable(i32* %162)
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @pm_runtime_get_sync(i32* %165)
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = call i32 @smsc911x_init(%struct.net_device* %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %274

172:                                              ; preds = %160
  %173 = load %struct.net_device*, %struct.net_device** %4, align 8
  %174 = call i32 @netif_carrier_off(%struct.net_device* %173)
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load %struct.net_device*, %struct.net_device** %4, align 8
  %177 = call i32 @smsc911x_mii_init(%struct.platform_device* %175, %struct.net_device* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %182 = load i32, i32* @probe, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %181, i32 %182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %183)
  br label %274

185:                                              ; preds = %172
  %186 = load %struct.net_device*, %struct.net_device** %4, align 8
  %187 = call i32 @register_netdev(%struct.net_device* %186)
  store i32 %187, i32* %10, align 4
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %192 = load i32, i32* @probe, align 4
  %193 = load i32, i32* %10, align 4
  %194 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_WARN(%struct.smsc911x_data* %191, i32 %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  br label %274

195:                                              ; preds = %185
  %196 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %197 = load i32, i32* @probe, align 4
  %198 = load %struct.net_device*, %struct.net_device** %4, align 8
  %199 = getelementptr inbounds %struct.net_device, %struct.net_device* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %196, i32 %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %195
  %203 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %204 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %203, i32 0, i32 2
  %205 = call i32 @spin_lock_irq(i32* %204)
  %206 = load %struct.net_device*, %struct.net_device** %4, align 8
  %207 = getelementptr inbounds %struct.net_device, %struct.net_device* %206, i32 0, i32 1
  %208 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %207, align 8
  %209 = call i64 @is_valid_ether_addr(%struct.smsc911x_platform_config* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %202
  %212 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %213 = load %struct.net_device*, %struct.net_device** %4, align 8
  %214 = getelementptr inbounds %struct.net_device, %struct.net_device* %213, i32 0, i32 1
  %215 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %214, align 8
  %216 = call i32 @smsc911x_set_hw_mac_address(%struct.smsc911x_data* %212, %struct.smsc911x_platform_config* %215)
  %217 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %218 = load i32, i32* @probe, align 4
  %219 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %217, i32 %218, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  br label %265

220:                                              ; preds = %202
  %221 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %222 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %222, i32 0, i32 0
  %224 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %223, align 8
  %225 = call i64 @is_valid_ether_addr(%struct.smsc911x_platform_config* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %220
  %228 = load %struct.net_device*, %struct.net_device** %4, align 8
  %229 = getelementptr inbounds %struct.net_device, %struct.net_device* %228, i32 0, i32 1
  %230 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %229, align 8
  %231 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %232 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.smsc911x_platform_config, %struct.smsc911x_platform_config* %232, i32 0, i32 0
  %234 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %233, align 8
  %235 = load i32, i32* @ETH_ALEN, align 4
  %236 = call i32 @memcpy(%struct.smsc911x_platform_config* %230, %struct.smsc911x_platform_config* %234, i32 %235)
  %237 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %238 = load i32, i32* @probe, align 4
  %239 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %237, i32 %238, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  br label %264

240:                                              ; preds = %220
  %241 = load %struct.net_device*, %struct.net_device** %4, align 8
  %242 = call i32 @smsc_get_mac(%struct.net_device* %241)
  %243 = load %struct.net_device*, %struct.net_device** %4, align 8
  %244 = getelementptr inbounds %struct.net_device, %struct.net_device* %243, i32 0, i32 1
  %245 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %244, align 8
  %246 = call i64 @is_valid_ether_addr(%struct.smsc911x_platform_config* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %240
  %249 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %250 = load i32, i32* @probe, align 4
  %251 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %249, i32 %250, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  br label %263

252:                                              ; preds = %240
  %253 = load %struct.net_device*, %struct.net_device** %4, align 8
  %254 = call i32 @eth_hw_addr_random(%struct.net_device* %253)
  %255 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %256 = load %struct.net_device*, %struct.net_device** %4, align 8
  %257 = getelementptr inbounds %struct.net_device, %struct.net_device* %256, i32 0, i32 1
  %258 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %257, align 8
  %259 = call i32 @smsc911x_set_hw_mac_address(%struct.smsc911x_data* %255, %struct.smsc911x_platform_config* %258)
  %260 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %261 = load i32, i32* @probe, align 4
  %262 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %260, i32 %261, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %263

263:                                              ; preds = %252, %248
  br label %264

264:                                              ; preds = %263, %227
  br label %265

265:                                              ; preds = %264, %211
  %266 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %267 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %266, i32 0, i32 2
  %268 = call i32 @spin_unlock_irq(i32* %267)
  %269 = load %struct.net_device*, %struct.net_device** %4, align 8
  %270 = load %struct.net_device*, %struct.net_device** %4, align 8
  %271 = getelementptr inbounds %struct.net_device, %struct.net_device* %270, i32 0, i32 1
  %272 = load %struct.smsc911x_platform_config*, %struct.smsc911x_platform_config** %271, align 8
  %273 = call i32 @netdev_info(%struct.net_device* %269, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), %struct.smsc911x_platform_config* %272)
  store i32 0, i32* %2, align 4
  br label %303

274:                                              ; preds = %190, %180, %171, %145, %120
  %275 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %276 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %275, i32 0, i32 0
  %277 = call i32 @pm_runtime_put(i32* %276)
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %278, i32 0, i32 0
  %280 = call i32 @pm_runtime_disable(i32* %279)
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = call i32 @smsc911x_disable_resources(%struct.platform_device* %281)
  br label %283

283:                                              ; preds = %274, %114
  %284 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %285 = call i32 @smsc911x_free_resources(%struct.platform_device* %284)
  br label %286

286:                                              ; preds = %283, %108
  %287 = load %struct.smsc911x_data*, %struct.smsc911x_data** %5, align 8
  %288 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = call i32 @iounmap(i32* %289)
  br label %291

291:                                              ; preds = %286, %89
  %292 = load %struct.net_device*, %struct.net_device** %4, align 8
  %293 = call i32 @free_netdev(%struct.net_device* %292)
  br label %294

294:                                              ; preds = %291, %65
  %295 = load %struct.resource*, %struct.resource** %7, align 8
  %296 = getelementptr inbounds %struct.resource, %struct.resource* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.resource*, %struct.resource** %7, align 8
  %299 = call i32 @resource_size(%struct.resource* %298)
  %300 = call i32 @release_mem_region(i32 %297, i32 %299)
  br label %301

301:                                              ; preds = %294, %58, %45, %39, %26
  %302 = load i32, i32* %10, align 4
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %301, %265
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local %struct.smsc911x_platform_config* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @smsc911x_request_resources(%struct.platform_device*) #1

declare dso_local i32 @smsc911x_enable_resources(%struct.platform_device*) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @smsc911x_probe_config(%struct.smsc911x_platform_config*, i32*) #1

declare dso_local i32 @memcpy(%struct.smsc911x_platform_config*, %struct.smsc911x_platform_config*, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @smsc911x_init(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @smsc911x_mii_init(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @is_valid_ether_addr(%struct.smsc911x_platform_config*) #1

declare dso_local i32 @smsc911x_set_hw_mac_address(%struct.smsc911x_data*, %struct.smsc911x_platform_config*) #1

declare dso_local i32 @smsc_get_mac(%struct.net_device*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, %struct.smsc911x_platform_config*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @smsc911x_disable_resources(%struct.platform_device*) #1

declare dso_local i32 @smsc911x_free_resources(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
