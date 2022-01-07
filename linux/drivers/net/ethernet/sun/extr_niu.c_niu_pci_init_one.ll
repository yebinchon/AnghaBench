; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_device_id = type { i32 }
%union.niu_parent_id = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32 }
%struct.niu = type { i32*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Cannot enable PCI device, aborting\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Cannot find proper PCI device base addresses, aborting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Cannot obtain PCI resources, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Cannot find PCI Express capability, aborting\0A\00", align 1
@niu_pci_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PLAT_TYPE_ATLAS = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NOSNOOP_EN = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_CERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NFERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_FERE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_URRE = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_RELAX_EN = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Unable to obtain 44 bit DMA for consistent allocations, aborting\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"No usable DMA configuration, aborting\0A\00", align 1
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Cannot map device registers, aborting\0A\00", align 1
@ETH_MIN_MTU = common dso_local global i32 0, align 4
@NIU_MAX_MTU = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"Problem fetching invariants of chip, aborting\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Cannot register net device, aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @niu_pci_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_pci_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %union.niu_parent_id, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.niu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = call i32 (...) @niu_driver_version()
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call i32 @pci_enable_device(%struct.pci_dev* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %253

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i32 @pci_resource_flags(%struct.pci_dev* %22, i32 0)
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_resource_flags(%struct.pci_dev* %28, i32 2)
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %249

39:                                               ; preds = %27
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* @DRV_MODULE_NAME, align 4
  %42 = call i32 @pci_request_regions(%struct.pci_dev* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %249

49:                                               ; preds = %39
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_is_pcie(%struct.pci_dev* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %246

59:                                               ; preds = %49
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PCI_FUNC(i32 %65)
  %67 = call %struct.net_device* @niu_alloc_and_init(i32* %61, %struct.pci_dev* %62, i32* null, i32* @niu_pci_ops, i32 %66)
  store %struct.net_device* %67, %struct.net_device** %7, align 8
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = icmp ne %struct.net_device* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %246

73:                                               ; preds = %59
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = call %struct.niu* @netdev_priv(%struct.net_device* %74)
  store %struct.niu* %75, %struct.niu** %8, align 8
  %76 = call i32 @memset(%union.niu_parent_id* %6, i32 0, i32 12)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @pci_domain_nr(%struct.TYPE_4__* %79)
  %81 = bitcast %union.niu_parent_id* %6 to %struct.TYPE_3__*
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = bitcast %union.niu_parent_id* %6 to %struct.TYPE_3__*
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PCI_SLOT(i32 %92)
  %94 = bitcast %union.niu_parent_id* %6 to %struct.TYPE_3__*
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.niu*, %struct.niu** %8, align 8
  %97 = load i32, i32* @PLAT_TYPE_ATLAS, align 4
  %98 = call i32 @niu_get_parent(%struct.niu* %96, %union.niu_parent_id* %6, i32 %97)
  %99 = load %struct.niu*, %struct.niu** %8, align 8
  %100 = getelementptr inbounds %struct.niu, %struct.niu* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.niu*, %struct.niu** %8, align 8
  %102 = getelementptr inbounds %struct.niu, %struct.niu* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %73
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %243

108:                                              ; preds = %73
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %111 = load i32, i32* @PCI_EXP_DEVCTL_NOSNOOP_EN, align 4
  %112 = load i32, i32* @PCI_EXP_DEVCTL_CERE, align 4
  %113 = load i32, i32* @PCI_EXP_DEVCTL_NFERE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @PCI_EXP_DEVCTL_FERE, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @PCI_EXP_DEVCTL_URRE, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PCI_EXP_DEVCTL_RELAX_EN, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %109, i32 %110, i32 %111, i32 %120)
  %122 = call i32 @DMA_BIT_MASK(i32 44)
  store i32 %122, i32* %10, align 4
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @pci_set_dma_mask(%struct.pci_dev* %123, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %108
  %129 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %130 = load %struct.net_device*, %struct.net_device** %7, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %134, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %240

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %108
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = call i32 @DMA_BIT_MASK(i32 32)
  %150 = call i32 @pci_set_dma_mask(%struct.pci_dev* %148, i32 %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %240

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %144
  %159 = load %struct.net_device*, %struct.net_device** %7, align 8
  %160 = call i32 @niu_set_basic_features(%struct.net_device* %159)
  %161 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %162 = load %struct.net_device*, %struct.net_device** %7, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = call i32* @pci_ioremap_bar(%struct.pci_dev* %166, i32 0)
  %168 = load %struct.niu*, %struct.niu** %8, align 8
  %169 = getelementptr inbounds %struct.niu, %struct.niu* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  %170 = load %struct.niu*, %struct.niu** %8, align 8
  %171 = getelementptr inbounds %struct.niu, %struct.niu* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %158
  %175 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %176 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 0
  %177 = call i32 @dev_err(i32* %176, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %9, align 4
  br label %240

180:                                              ; preds = %158
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = call i32 @pci_set_master(%struct.pci_dev* %181)
  %183 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %184 = call i32 @pci_save_state(%struct.pci_dev* %183)
  %185 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.net_device*, %struct.net_device** %7, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @ETH_MIN_MTU, align 4
  %191 = load %struct.net_device*, %struct.net_device** %7, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @NIU_MAX_MTU, align 4
  %194 = load %struct.net_device*, %struct.net_device** %7, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load %struct.net_device*, %struct.net_device** %7, align 8
  %197 = call i32 @niu_assign_netdev_ops(%struct.net_device* %196)
  %198 = load %struct.niu*, %struct.niu** %8, align 8
  %199 = call i32 @niu_get_invariants(%struct.niu* %198)
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %180
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @ENODEV, align 4
  %205 = sub nsw i32 0, %204
  %206 = icmp ne i32 %203, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %209 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %208, i32 0, i32 0
  %210 = call i32 @dev_err(i32* %209, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %211

211:                                              ; preds = %207, %202
  br label %227

212:                                              ; preds = %180
  %213 = load %struct.net_device*, %struct.net_device** %7, align 8
  %214 = call i32 @register_netdev(%struct.net_device* %213)
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %219 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %218, i32 0, i32 0
  %220 = call i32 @dev_err(i32* %219, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %227

221:                                              ; preds = %212
  %222 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %223 = load %struct.net_device*, %struct.net_device** %7, align 8
  %224 = call i32 @pci_set_drvdata(%struct.pci_dev* %222, %struct.net_device* %223)
  %225 = load %struct.niu*, %struct.niu** %8, align 8
  %226 = call i32 @niu_device_announce(%struct.niu* %225)
  store i32 0, i32* %3, align 4
  br label %253

227:                                              ; preds = %217, %211
  %228 = load %struct.niu*, %struct.niu** %8, align 8
  %229 = getelementptr inbounds %struct.niu, %struct.niu* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load %struct.niu*, %struct.niu** %8, align 8
  %234 = getelementptr inbounds %struct.niu, %struct.niu* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @iounmap(i32* %235)
  %237 = load %struct.niu*, %struct.niu** %8, align 8
  %238 = getelementptr inbounds %struct.niu, %struct.niu* %237, i32 0, i32 0
  store i32* null, i32** %238, align 8
  br label %239

239:                                              ; preds = %232, %227
  br label %240

240:                                              ; preds = %239, %174, %153, %139
  %241 = load %struct.niu*, %struct.niu** %8, align 8
  %242 = call i32 @niu_put_parent(%struct.niu* %241)
  br label %243

243:                                              ; preds = %240, %105
  %244 = load %struct.net_device*, %struct.net_device** %7, align 8
  %245 = call i32 @free_netdev(%struct.net_device* %244)
  br label %246

246:                                              ; preds = %243, %70, %53
  %247 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %248 = call i32 @pci_release_regions(%struct.pci_dev* %247)
  br label %249

249:                                              ; preds = %246, %45, %33
  %250 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %251 = call i32 @pci_disable_device(%struct.pci_dev* %250)
  %252 = load i32, i32* %9, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %249, %221, %16
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @niu_driver_version(...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local %struct.net_device* @niu_alloc_and_init(i32*, %struct.pci_dev*, i32*, i32*, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%union.niu_parent_id*, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @niu_get_parent(%struct.niu*, %union.niu_parent_id*, i32) #1

declare dso_local i32 @pcie_capability_clear_and_set_word(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @niu_set_basic_features(%struct.net_device*) #1

declare dso_local i32* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @niu_assign_netdev_ops(%struct.net_device*) #1

declare dso_local i32 @niu_get_invariants(%struct.niu*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @niu_device_announce(%struct.niu*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @niu_put_parent(%struct.niu*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
