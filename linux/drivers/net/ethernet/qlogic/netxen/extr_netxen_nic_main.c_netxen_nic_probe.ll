; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_nic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.net_device = type { i32, i32, i64 }
%struct.netxen_adapter = type { i32, i32, i32, %struct.net_device*, %struct.pci_dev*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32 }

@NX_P3_A0 = common dso_local global i64 0, align 8
@NX_P3_B1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"%s: chip revisions between 0x%x-0x%x will not be enabled\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@netxen_nic_driver_name = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error getting board config info.\0A\00", align 1
@NX_CRB_DEV_REF_COUNT = common dso_local global i32 0, align 4
@P3_MAX_MTU = common dso_local global i32 0, align 4
@P2_MAX_MTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to setup interrupts, error = %d\0A\00", align 1
@netxen_fw_poll_work = common dso_local global i32 0, align 4
@FW_POLL_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: GbE port initialized\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: XGbE port initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @netxen_nic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netxen_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store %struct.netxen_adapter* null, %struct.netxen_adapter** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PCI_FUNC(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NX_P3_A0, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NX_P3_B1, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = call i32 @module_name(i32 %29)
  %31 = load i64, i64* @NX_P3_A0, align 8
  %32 = load i64, i64* @NX_P3_B1, align 8
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31, i64 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %305

36:                                               ; preds = %22, %2
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @pci_enable_device(%struct.pci_dev* %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %305

42:                                               ; preds = %36
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_resource_flags(%struct.pci_dev* %43, i32 0)
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %301

51:                                               ; preds = %42
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = load i32, i32* @netxen_nic_driver_name, align 4
  %54 = call i32 @pci_request_regions(%struct.pci_dev* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %301

57:                                               ; preds = %51
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @NX_IS_REVISION_P3(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = call i32 @pci_set_master(%struct.pci_dev* %67)
  %69 = call %struct.net_device* @alloc_etherdev(i32 80)
  store %struct.net_device* %69, %struct.net_device** %6, align 8
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %298

75:                                               ; preds = %66
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 1
  %79 = call i32 @SET_NETDEV_DEV(%struct.net_device* %76, i32* %78)
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = call %struct.netxen_adapter* @netdev_priv(%struct.net_device* %80)
  store %struct.netxen_adapter* %81, %struct.netxen_adapter** %7, align 8
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %84 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %83, i32 0, i32 3
  store %struct.net_device* %82, %struct.net_device** %84, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %86, i32 0, i32 4
  store %struct.pci_dev* %85, %struct.pci_dev** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %90 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %97 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  %99 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %100 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  %102 = call i32 @rwlock_init(i32* %101)
  %103 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %104 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = call i32 @spin_lock_init(i32* %105)
  %107 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %108 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %107, i32 0, i32 8
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %111 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %110, i32 0, i32 7
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  %113 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %114 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %113, i32 0, i32 6
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %117 = call i32 @netxen_setup_pci_map(%struct.netxen_adapter* %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %75
  br label %295

121:                                              ; preds = %75
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %124 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %126 = call i32 @netxen_nic_get_board_info(%struct.netxen_adapter* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %121
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %130, i32 0, i32 1
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %292

133:                                              ; preds = %121
  %134 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %135 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %147 [
    i32 130, label %138
    i32 131, label %138
  ]

138:                                              ; preds = %133, %133
  %139 = load i32, i32* %10, align 4
  %140 = icmp sge i32 %139, 2
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 2
  %144 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %145 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %141, %138
  br label %148

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %147, %146
  %149 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %150 = call i32 @netxen_check_flash_fw_compatibility(%struct.netxen_adapter* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %292

154:                                              ; preds = %148
  %155 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %156 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %161 = load i32, i32* @NX_CRB_DEV_REF_COUNT, align 4
  %162 = call i32 @NXRD32(%struct.netxen_adapter* %160, i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, -1
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = load i32, i32* %12, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %170 = load i32, i32* @NX_CRB_DEV_REF_COUNT, align 4
  %171 = call i32 @NXWR32(%struct.netxen_adapter* %169, i32 %170, i32 0)
  %172 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %173 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %165, %159
  br label %175

175:                                              ; preds = %174, %154
  %176 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %177 = call i32 @netxen_start_firmware(%struct.netxen_adapter* %176)
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %289

181:                                              ; preds = %175
  %182 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %183 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %186 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %188 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @NX_IS_REVISION_P2(i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %181
  %194 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %195 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %196 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @CRB_V2P(i32 %197)
  %199 = call i32 @NXRD32(%struct.netxen_adapter* %194, i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 1431655765
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %205 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %202, %193
  br label %207

207:                                              ; preds = %206, %181
  %208 = load %struct.net_device*, %struct.net_device** %6, align 8
  %209 = getelementptr inbounds %struct.net_device, %struct.net_device* %208, i32 0, i32 2
  store i64 0, i64* %209, align 8
  %210 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %211 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i64 @NX_IS_REVISION_P3(i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i32, i32* @P3_MAX_MTU, align 4
  %218 = load %struct.net_device*, %struct.net_device** %6, align 8
  %219 = getelementptr inbounds %struct.net_device, %struct.net_device* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  br label %224

220:                                              ; preds = %207
  %221 = load i32, i32* @P2_MAX_MTU, align 4
  %222 = load %struct.net_device*, %struct.net_device** %6, align 8
  %223 = getelementptr inbounds %struct.net_device, %struct.net_device* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %220, %216
  %225 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %226 = call i32 @netxen_nic_clear_stats(%struct.netxen_adapter* %225)
  %227 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %228 = call i32 @netxen_setup_intr(%struct.netxen_adapter* %227)
  store i32 %228, i32* %9, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %224
  %232 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %233 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %232, i32 0, i32 4
  %234 = load %struct.pci_dev*, %struct.pci_dev** %233, align 8
  %235 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %234, i32 0, i32 1
  %236 = load i32, i32* %9, align 4
  %237 = call i32 (i32*, i8*, ...) @dev_err(i32* %235, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %236)
  br label %284

238:                                              ; preds = %224
  %239 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %240 = call i32 @netxen_read_ula_info(%struct.netxen_adapter* %239)
  %241 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %242 = load %struct.net_device*, %struct.net_device** %6, align 8
  %243 = call i32 @netxen_setup_netdev(%struct.netxen_adapter* %241, %struct.net_device* %242)
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* %9, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %284

247:                                              ; preds = %238
  %248 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %249 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %250 = call i32 @pci_set_drvdata(%struct.pci_dev* %248, %struct.netxen_adapter* %249)
  %251 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %252 = load i32, i32* @netxen_fw_poll_work, align 4
  %253 = load i32, i32* @FW_POLL_DELAY, align 4
  %254 = call i32 @netxen_schedule_work(%struct.netxen_adapter* %251, i32 %252, i32 %253)
  %255 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %256 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  switch i32 %258, label %281 [
    i32 129, label %259
    i32 128, label %270
  ]

259:                                              ; preds = %247
  %260 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %261 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %260, i32 0, i32 4
  %262 = load %struct.pci_dev*, %struct.pci_dev** %261, align 8
  %263 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %262, i32 0, i32 1
  %264 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %265 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %264, i32 0, i32 3
  %266 = load %struct.net_device*, %struct.net_device** %265, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @dev_info(i32* %263, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %268)
  br label %281

270:                                              ; preds = %247
  %271 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %272 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %271, i32 0, i32 4
  %273 = load %struct.pci_dev*, %struct.pci_dev** %272, align 8
  %274 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %273, i32 0, i32 1
  %275 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %276 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %275, i32 0, i32 3
  %277 = load %struct.net_device*, %struct.net_device** %276, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @dev_info(i32* %274, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %279)
  br label %281

281:                                              ; preds = %247, %270, %259
  %282 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %283 = call i32 @netxen_create_diag_entries(%struct.netxen_adapter* %282)
  store i32 0, i32* %3, align 4
  br label %305

284:                                              ; preds = %246, %231
  %285 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %286 = call i32 @netxen_teardown_intr(%struct.netxen_adapter* %285)
  %287 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %288 = call i32 @netxen_free_dummy_dma(%struct.netxen_adapter* %287)
  br label %289

289:                                              ; preds = %284, %180
  %290 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %291 = call i32 @nx_decr_dev_ref_cnt(%struct.netxen_adapter* %290)
  br label %292

292:                                              ; preds = %289, %153, %129
  %293 = load %struct.netxen_adapter*, %struct.netxen_adapter** %7, align 8
  %294 = call i32 @netxen_cleanup_pci_map(%struct.netxen_adapter* %293)
  br label %295

295:                                              ; preds = %292, %120
  %296 = load %struct.net_device*, %struct.net_device** %6, align 8
  %297 = call i32 @free_netdev(%struct.net_device* %296)
  br label %298

298:                                              ; preds = %295, %72
  %299 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %300 = call i32 @pci_release_regions(%struct.pci_dev* %299)
  br label %301

301:                                              ; preds = %298, %56, %48
  %302 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %303 = call i32 @pci_disable_device(%struct.pci_dev* %302)
  %304 = load i32, i32* %9, align 4
  store i32 %304, i32* %3, align 4
  br label %305

305:                                              ; preds = %301, %281, %40, %28
  %306 = load i32, i32* %3, align 4
  ret i32 %306
}

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i64) #1

declare dso_local i32 @module_name(i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i64) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.netxen_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @netxen_setup_pci_map(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_nic_get_board_info(%struct.netxen_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @netxen_check_flash_fw_compatibility(%struct.netxen_adapter*) #1

declare dso_local i32 @NXRD32(%struct.netxen_adapter*, i32) #1

declare dso_local i32 @NXWR32(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @netxen_start_firmware(%struct.netxen_adapter*) #1

declare dso_local i64 @NX_IS_REVISION_P2(i64) #1

declare dso_local i32 @CRB_V2P(i32) #1

declare dso_local i32 @netxen_nic_clear_stats(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_setup_intr(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_read_ula_info(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_setup_netdev(%struct.netxen_adapter*, %struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.netxen_adapter*) #1

declare dso_local i32 @netxen_schedule_work(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @netxen_create_diag_entries(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_teardown_intr(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_free_dummy_dma(%struct.netxen_adapter*) #1

declare dso_local i32 @nx_decr_dev_ref_cnt(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_cleanup_pci_map(%struct.netxen_adapter*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
