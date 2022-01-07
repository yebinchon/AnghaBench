; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_dmfe.c_dmfe_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.dmfe_board_info = type { i32, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32, %struct.pci_dev*, i64, i32, i8*, i32, %struct.tx_desc* }
%struct.tx_desc = type { i32 }
%struct.net_device = type { i32*, i32, i32*, i32* }

@.str = private unnamed_addr constant [16 x i8] c"dmfe_init_one()\00", align 1
@printed_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"32-bit PCI DMA not available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"I/O base is zero\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Allocated I/O size too small\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to request PCI regions\0A\00", align 1
@DESC_ALL_CNT = common dso_local global i32 0, align 4
@TX_BUF_ALLOC = common dso_local global i32 0, align 4
@TX_DESC_CNT = common dso_local global i32 0, align 4
@netdev_ops = common dso_local global i32 0, align 4
@netdev_ethtool_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Davicom DM%04lx at pci%s, %pM, irq %d\0A\00", align 1
@PCI_DM9100_ID = common dso_local global i32 0, align 4
@PCI_DM9102_ID = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @dmfe_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmfe_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.dmfe_board_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = call i32 @DMFE_DBUG(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  %12 = load i32, i32* @printed_version, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @printed_version, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @version, align 4
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = call %struct.net_device* @alloc_etherdev(i32 112)
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = icmp eq %struct.net_device* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %297

25:                                               ; preds = %18
  %26 = load %struct.net_device*, %struct.net_device** %7, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 2
  %29 = call i32 @SET_NETDEV_DEV(%struct.net_device* %26, i32* %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @DMA_BIT_MASK(i32 32)
  %32 = call i64 @pci_set_dma_mask(%struct.pci_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %293

38:                                               ; preds = %25
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pci_enable_device(%struct.pci_dev* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %293

44:                                               ; preds = %38
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_resource_start(%struct.pci_dev* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %290

52:                                               ; preds = %44
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i64 @pci_resource_len(%struct.pci_dev* %53, i32 0)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = call i64 @CHK_IO_SIZE(%struct.pci_dev* %55)
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %10, align 4
  br label %290

62:                                               ; preds = %52
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = load i32, i32* @DRV_NAME, align 4
  %65 = call i64 @pci_request_regions(%struct.pci_dev* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %290

71:                                               ; preds = %62
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = call %struct.dmfe_board_info* @netdev_priv(%struct.net_device* %72)
  store %struct.dmfe_board_info* %73, %struct.dmfe_board_info** %6, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* @DESC_ALL_CNT, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = add i64 %77, 32
  %79 = trunc i64 %78 to i32
  %80 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %81 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %80, i32 0, i32 3
  %82 = call i8* @pci_alloc_consistent(%struct.pci_dev* %74, i32 %79, i32* %81)
  %83 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %84 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %86 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %71
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %287

92:                                               ; preds = %71
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = load i32, i32* @TX_BUF_ALLOC, align 4
  %95 = load i32, i32* @TX_DESC_CNT, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %96, 4
  %98 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %99 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %98, i32 0, i32 5
  %100 = call i8* @pci_alloc_consistent(%struct.pci_dev* %93, i32 %97, i32* %99)
  %101 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %102 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %104 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %103, i32 0, i32 6
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %92
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  br label %273

110:                                              ; preds = %92
  %111 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %112 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %111, i32 0, i32 4
  %113 = load i8*, i8** %112, align 8
  %114 = bitcast i8* %113 to %struct.tx_desc*
  %115 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %116 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %115, i32 0, i32 15
  store %struct.tx_desc* %114, %struct.tx_desc** %116, align 8
  %117 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %118 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %121 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %120, i32 0, i32 14
  store i32 %119, i32* %121, align 8
  %122 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %123 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %126 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %125, i32 0, i32 13
  store i8* %124, i8** %126, align 8
  %127 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %128 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %131 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %130, i32 0, i32 12
  store i32 %129, i32* %131, align 8
  %132 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %133 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %136 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = call i32 @pci_iomap(%struct.pci_dev* %137, i32 0, i32 0)
  %139 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %140 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %142 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %110
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %10, align 4
  br label %260

148:                                              ; preds = %110
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %153 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %155 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %154, i32 0, i32 11
  store i64 0, i64* %155, align 8
  %156 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %157 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %158 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %157, i32 0, i32 10
  store %struct.pci_dev* %156, %struct.pci_dev** %158, align 8
  %159 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %160 = load %struct.net_device*, %struct.net_device** %7, align 8
  %161 = call i32 @pci_set_drvdata(%struct.pci_dev* %159, %struct.net_device* %160)
  %162 = load %struct.net_device*, %struct.net_device** %7, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 3
  store i32* @netdev_ops, i32** %163, align 8
  %164 = load %struct.net_device*, %struct.net_device** %7, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 2
  store i32* @netdev_ethtool_ops, i32** %165, align 8
  %166 = load %struct.net_device*, %struct.net_device** %7, align 8
  %167 = call i32 @netif_carrier_off(%struct.net_device* %166)
  %168 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %169 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %168, i32 0, i32 9
  %170 = call i32 @spin_lock_init(i32* %169)
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = call i32 @pci_read_config_dword(%struct.pci_dev* %171, i32 80, i32* %8)
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, 458752
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp eq i32 %175, 65536
  br i1 %176, label %177, label %185

177:                                              ; preds = %148
  %178 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %179 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 49
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %184 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  br label %188

185:                                              ; preds = %177, %148
  %186 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %187 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %186, i32 0, i32 2
  store i32 0, i32* %187, align 8
  br label %188

188:                                              ; preds = %185, %182
  store i32 0, i32* %9, align 4
  br label %189

189:                                              ; preds = %205, %188
  %190 = load i32, i32* %9, align 4
  %191 = icmp slt i32 %190, 64
  br i1 %191, label %192, label %208

192:                                              ; preds = %189
  %193 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %194 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @read_srom_word(i32 %195, i32 %196)
  %198 = call i32 @cpu_to_le16(i32 %197)
  %199 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %200 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %199, i32 0, i32 8
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %198, i32* %204, align 4
  br label %205

205:                                              ; preds = %192
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %189

208:                                              ; preds = %189
  store i32 0, i32* %9, align 4
  br label %209

209:                                              ; preds = %227, %208
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 6
  br i1 %211, label %212, label %230

212:                                              ; preds = %209
  %213 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %214 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %213, i32 0, i32 8
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 20, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.net_device*, %struct.net_device** %7, align 8
  %222 = getelementptr inbounds %struct.net_device, %struct.net_device* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %220, i32* %226, align 4
  br label %227

227:                                              ; preds = %212
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  br label %209

230:                                              ; preds = %209
  %231 = load %struct.net_device*, %struct.net_device** %7, align 8
  %232 = call i32 @register_netdev(%struct.net_device* %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %254

236:                                              ; preds = %230
  %237 = load %struct.net_device*, %struct.net_device** %7, align 8
  %238 = getelementptr inbounds %struct.net_device, %struct.net_device* %237, i32 0, i32 1
  %239 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %240 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = ashr i32 %241, 16
  %243 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %244 = call i32 @pci_name(%struct.pci_dev* %243)
  %245 = load %struct.net_device*, %struct.net_device** %7, align 8
  %246 = getelementptr inbounds %struct.net_device, %struct.net_device* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %249 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @dev_info(i32* %238, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %242, i32 %244, i32* %247, i32 %250)
  %252 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %253 = call i32 @pci_set_master(%struct.pci_dev* %252)
  store i32 0, i32* %3, align 4
  br label %297

254:                                              ; preds = %235
  %255 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %256 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %257 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %256, i32 0, i32 7
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @pci_iounmap(%struct.pci_dev* %255, i32 %258)
  br label %260

260:                                              ; preds = %254, %145
  %261 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %262 = load i32, i32* @TX_BUF_ALLOC, align 4
  %263 = load i32, i32* @TX_DESC_CNT, align 4
  %264 = mul nsw i32 %262, %263
  %265 = add nsw i32 %264, 4
  %266 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %267 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %266, i32 0, i32 6
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %270 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @pci_free_consistent(%struct.pci_dev* %261, i32 %265, i8* %268, i32 %271)
  br label %273

273:                                              ; preds = %260, %107
  %274 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %275 = load i32, i32* @DESC_ALL_CNT, align 4
  %276 = sext i32 %275 to i64
  %277 = mul i64 4, %276
  %278 = add i64 %277, 32
  %279 = trunc i64 %278 to i32
  %280 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %281 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %280, i32 0, i32 4
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.dmfe_board_info*, %struct.dmfe_board_info** %6, align 8
  %284 = getelementptr inbounds %struct.dmfe_board_info, %struct.dmfe_board_info* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @pci_free_consistent(%struct.pci_dev* %274, i32 %279, i8* %282, i32 %285)
  br label %287

287:                                              ; preds = %273, %89
  %288 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %289 = call i32 @pci_release_regions(%struct.pci_dev* %288)
  br label %290

290:                                              ; preds = %287, %67, %58, %48
  %291 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %292 = call i32 @pci_disable_device(%struct.pci_dev* %291)
  br label %293

293:                                              ; preds = %290, %43, %34
  %294 = load %struct.net_device*, %struct.net_device** %7, align 8
  %295 = call i32 @free_netdev(%struct.net_device* %294)
  %296 = load i32, i32* %10, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %293, %236, %22
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @DMFE_DBUG(i32, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i64 @CHK_IO_SIZE(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local %struct.dmfe_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @read_srom_word(i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i8*, i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
