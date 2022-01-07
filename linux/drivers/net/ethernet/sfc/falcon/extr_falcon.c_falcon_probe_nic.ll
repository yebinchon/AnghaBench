; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_probe_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_probe_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.ef4_nic* }
%struct.ef4_nic = type { i32, i32, i32, i32, %struct.falcon_nic_data*, %struct.TYPE_17__, i32, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.ef4_nic* }
%struct.falcon_nic_data = type { i32, %struct.pci_dev*, i32, %struct.ef4_nic* }
%struct.pci_dev = type { i64, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.falcon_board = type { %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, %struct.TYPE_16__*, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32 (%struct.ef4_nic*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Falcon FPGA not supported\0A\00", align 1
@EF4_REV_FALCON_A1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Falcon rev A0 not supported\0A\00", align 1
@FR_AB_NIC_STAT = common dso_local global i32 0, align 4
@FRF_AB_STRAP_10G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Falcon rev A1 1G not supported\0A\00", align 1
@FRF_AA_STRAP_PCIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Falcon rev A1 PCI-X not supported\0A\00", align 1
@PCI_VENDOR_ID_SOLARFLARE = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SOLARFLARE_SFC4000A_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to find secondary function\0A\00", align 1
@RESET_TYPE_ALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to reset NIC\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"INT_KER at %llx (virt %p phys %llx)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"NVRAM is invalid\0A\00", align 1
@EF4_MAX_CHANNELS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@falcon_i2c_bit_operations = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"SFC4000 GPIO\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"failed to initialise board\0A\00", align 1
@falcon_stats_timer_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @falcon_probe_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_probe_nic(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.falcon_nic_data*, align 8
  %5 = alloca %struct.falcon_board*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 9
  store %struct.ef4_nic* %10, %struct.ef4_nic** %12, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.falcon_nic_data* @kzalloc(i32 32, i32 %13)
  store %struct.falcon_nic_data* %14, %struct.falcon_nic_data** %4, align 8
  %15 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %16 = icmp ne %struct.falcon_nic_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %334

20:                                               ; preds = %1
  %21 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 4
  store %struct.falcon_nic_data* %21, %struct.falcon_nic_data** %23, align 8
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %25 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %26 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %25, i32 0, i32 3
  store %struct.ef4_nic* %24, %struct.ef4_nic** %26, align 8
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %30 = call i64 @ef4_farch_fpga_ver(%struct.ef4_nic* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %20
  %33 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %34 = load i32, i32* @probe, align 4
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %36 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netif_err(%struct.ef4_nic* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %328

39:                                               ; preds = %20
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %41 = call i64 @ef4_nic_rev(%struct.ef4_nic* %40)
  %42 = load i64, i64* @EF4_REV_FALCON_A1, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %141

44:                                               ; preds = %39
  %45 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %46 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %45, i32 0, i32 7
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52, %44
  %56 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %57 = load i32, i32* @probe, align 4
  %58 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %59 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @netif_err(%struct.ef4_nic* %56, i32 %57, i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %328

62:                                               ; preds = %52
  %63 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %64 = load i32, i32* @FR_AB_NIC_STAT, align 4
  %65 = call i32 @ef4_reado(%struct.ef4_nic* %63, i32* %7, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @FRF_AB_STRAP_10G, align 4
  %68 = call i64 @EF4_OWORD_FIELD(i32 %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %72 = load i32, i32* @probe, align 4
  %73 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %74 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @netif_err(%struct.ef4_nic* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %328

77:                                               ; preds = %62
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @FRF_AA_STRAP_PCIE, align 4
  %80 = call i64 @EF4_OWORD_FIELD(i32 %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %84 = load i32, i32* @probe, align 4
  %85 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %86 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @netif_err(%struct.ef4_nic* %83, i32 %84, i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %328

89:                                               ; preds = %77
  %90 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %91 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %90, i32 0, i32 7
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = call %struct.pci_dev* @pci_dev_get(%struct.TYPE_14__* %92)
  store %struct.pci_dev* %93, %struct.pci_dev** %8, align 8
  br label %94

94:                                               ; preds = %125, %89
  %95 = load i32, i32* @PCI_VENDOR_ID_SOLARFLARE, align 4
  %96 = load i32, i32* @PCI_DEVICE_ID_SOLARFLARE_SFC4000A_1, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %98 = call %struct.pci_dev* @pci_get_device(i32 %95, i32 %96, %struct.pci_dev* %97)
  store %struct.pci_dev* %98, %struct.pci_dev** %8, align 8
  %99 = icmp ne %struct.pci_dev* %98, null
  br i1 %99, label %100, label %126

100:                                              ; preds = %94
  %101 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %105 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %104, i32 0, i32 7
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %100
  %111 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %115 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %114, i32 0, i32 7
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 1
  %120 = icmp eq i64 %113, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %123 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %124 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %123, i32 0, i32 1
  store %struct.pci_dev* %122, %struct.pci_dev** %124, align 8
  br label %126

125:                                              ; preds = %110, %100
  br label %94

126:                                              ; preds = %121, %94
  %127 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %128 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %127, i32 0, i32 1
  %129 = load %struct.pci_dev*, %struct.pci_dev** %128, align 8
  %130 = icmp ne %struct.pci_dev* %129, null
  br i1 %130, label %140, label %131

131:                                              ; preds = %126
  %132 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %133 = load i32, i32* @probe, align 4
  %134 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %135 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @netif_err(%struct.ef4_nic* %132, i32 %133, i32 %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %327

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %39
  %142 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %143 = load i32, i32* @RESET_TYPE_ALL, align 4
  %144 = call i32 @__falcon_reset_hw(%struct.ef4_nic* %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %149 = load i32, i32* @probe, align 4
  %150 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %151 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @netif_err(%struct.ef4_nic* %148, i32 %149, i32 %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %314

154:                                              ; preds = %141
  %155 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %156 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %157 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %156, i32 0, i32 5
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i32 @ef4_nic_alloc_buffer(%struct.ef4_nic* %155, %struct.TYPE_17__* %157, i32 4, i32 %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %313

163:                                              ; preds = %154
  %164 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %165 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, 15
  %169 = call i32 @BUG_ON(i32 %168)
  %170 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %171 = load i32, i32* @probe, align 4
  %172 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %173 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %176 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %180 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %184 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @virt_to_phys(i32 %186)
  %188 = trunc i64 %187 to i32
  %189 = call i32 @netif_dbg(%struct.ef4_nic* %170, i32 %171, i32 %174, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %178, i32 %182, i32 %188)
  %190 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %191 = call i32 @falcon_probe_spi_devices(%struct.ef4_nic* %190)
  %192 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %193 = call i32 @falcon_probe_nvconfig(%struct.ef4_nic* %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %163
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %196
  %202 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %203 = load i32, i32* @probe, align 4
  %204 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %205 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @netif_err(%struct.ef4_nic* %202, i32 %203, i32 %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %208

208:                                              ; preds = %201, %196
  br label %308

209:                                              ; preds = %163
  %210 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %211 = call i64 @ef4_nic_rev(%struct.ef4_nic* %210)
  %212 = load i64, i64* @EF4_REV_FALCON_A1, align 8
  %213 = icmp sle i64 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  br label %217

215:                                              ; preds = %209
  %216 = load i32, i32* @EF4_MAX_CHANNELS, align 4
  br label %217

217:                                              ; preds = %215, %214
  %218 = phi i32 [ 4, %214 ], [ %216, %215 ]
  %219 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %220 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %222 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %225 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %227 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %226, i32 0, i32 2
  store i32 4968, i32* %227, align 8
  %228 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %229 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %228, i32 0, i32 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %234 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = mul nsw i32 %232, %235
  %237 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %238 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 4
  %239 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %240 = call %struct.falcon_board* @falcon_board(%struct.ef4_nic* %239)
  store %struct.falcon_board* %240, %struct.falcon_board** %5, align 8
  %241 = load i32, i32* @THIS_MODULE, align 4
  %242 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %243 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 3
  store i32 %241, i32* %244, align 8
  %245 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %246 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %245, i32 0, i32 2
  %247 = bitcast %struct.TYPE_16__* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 bitcast (%struct.TYPE_16__* @falcon_i2c_bit_operations to i8*), i64 8, i1 false)
  %248 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %249 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %250 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  store %struct.ef4_nic* %248, %struct.ef4_nic** %251, align 8
  %252 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %253 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %252, i32 0, i32 2
  %254 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %255 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 2
  store %struct.TYPE_16__* %253, %struct.TYPE_16__** %256, align 8
  %257 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %258 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %257, i32 0, i32 7
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 3
  %261 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %262 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store i32* %260, i32** %264, align 8
  %265 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %266 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @strlcpy(i32 %268, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %270 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %271 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %270, i32 0, i32 0
  %272 = call i32 @i2c_bit_add_bus(%struct.TYPE_15__* %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %217
  br label %308

276:                                              ; preds = %217
  %277 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %278 = call %struct.falcon_board* @falcon_board(%struct.ef4_nic* %277)
  %279 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %278, i32 0, i32 1
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = load i32 (%struct.ef4_nic*)*, i32 (%struct.ef4_nic*)** %281, align 8
  %283 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %284 = call i32 %282(%struct.ef4_nic* %283)
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %6, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %276
  %288 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %289 = load i32, i32* @probe, align 4
  %290 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %291 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @netif_err(%struct.ef4_nic* %288, i32 %289, i32 %292, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %301

294:                                              ; preds = %276
  %295 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %296 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %295, i32 0, i32 0
  store i32 1, i32* %296, align 8
  %297 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %298 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %297, i32 0, i32 2
  %299 = load i32, i32* @falcon_stats_timer_func, align 4
  %300 = call i32 @timer_setup(i32* %298, i32 %299, i32 0)
  store i32 0, i32* %2, align 4
  br label %334

301:                                              ; preds = %287
  %302 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %303 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %302, i32 0, i32 0
  %304 = call i32 @i2c_del_adapter(%struct.TYPE_15__* %303)
  %305 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %306 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %305, i32 0, i32 0
  %307 = call i32 @memset(%struct.TYPE_15__* %306, i32 0, i32 32)
  br label %308

308:                                              ; preds = %301, %275, %208
  %309 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %310 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %311 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %310, i32 0, i32 5
  %312 = call i32 @ef4_nic_free_buffer(%struct.ef4_nic* %309, %struct.TYPE_17__* %311)
  br label %313

313:                                              ; preds = %308, %162
  br label %314

314:                                              ; preds = %313, %147
  %315 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %316 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %315, i32 0, i32 1
  %317 = load %struct.pci_dev*, %struct.pci_dev** %316, align 8
  %318 = icmp ne %struct.pci_dev* %317, null
  br i1 %318, label %319, label %326

319:                                              ; preds = %314
  %320 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %321 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %320, i32 0, i32 1
  %322 = load %struct.pci_dev*, %struct.pci_dev** %321, align 8
  %323 = call i32 @pci_dev_put(%struct.pci_dev* %322)
  %324 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %325 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %324, i32 0, i32 1
  store %struct.pci_dev* null, %struct.pci_dev** %325, align 8
  br label %326

326:                                              ; preds = %319, %314
  br label %327

327:                                              ; preds = %326, %131
  br label %328

328:                                              ; preds = %327, %82, %70, %55, %32
  %329 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %330 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %329, i32 0, i32 4
  %331 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %330, align 8
  %332 = call i32 @kfree(%struct.falcon_nic_data* %331)
  %333 = load i32, i32* %6, align 4
  store i32 %333, i32* %2, align 4
  br label %334

334:                                              ; preds = %328, %294, %17
  %335 = load i32, i32* %2, align 4
  ret i32 %335
}

declare dso_local %struct.falcon_nic_data* @kzalloc(i32, i32) #1

declare dso_local i64 @ef4_farch_fpga_ver(%struct.ef4_nic*) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

declare dso_local i64 @ef4_nic_rev(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i64 @EF4_OWORD_FIELD(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_dev_get(%struct.TYPE_14__*) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @__falcon_reset_hw(%struct.ef4_nic*, i32) #1

declare dso_local i32 @ef4_nic_alloc_buffer(%struct.ef4_nic*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @falcon_probe_spi_devices(%struct.ef4_nic*) #1

declare dso_local i32 @falcon_probe_nvconfig(%struct.ef4_nic*) #1

declare dso_local %struct.falcon_board* @falcon_board(%struct.ef4_nic*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_15__*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @i2c_del_adapter(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ef4_nic_free_buffer(%struct.ef4_nic*, %struct.TYPE_17__*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.falcon_nic_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
