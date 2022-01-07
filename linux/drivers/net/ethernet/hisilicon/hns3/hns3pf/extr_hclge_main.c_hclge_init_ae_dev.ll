; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_ae_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_init_ae_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_ae_dev = type { i64, %struct.hclge_dev*, %struct.pci_dev* }
%struct.hclge_dev = type { %struct.TYPE_4__, %struct.pci_dev*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.hnae3_ae_dev* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNAE3_NONE_RESET = common dso_local global i32 0, align 4
@HNAE3_FUNC_RESET = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PCI init failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Cmd queue init failed, ret = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"get hw capability error, ret = %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Configure dev error, ret = %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Init MSI/MSI-X error, ret = %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Misc IRQ(vector0) init error, ret = %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Allocate TQPs error, ret = %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Allocate vport error, ret = %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Map tqp error, ret = %d.\0A\00", align 1
@HNAE3_MEDIA_TYPE_COPPER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"mdio config fail ret=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"umv space init error, ret=%d.\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Mac init error, ret = %d\0A\00", align 1
@HCLGE_TSO_MSS_MIN = common dso_local global i32 0, align 4
@HCLGE_TSO_MSS_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"Enable tso fail, ret =%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"VLAN init fail, ret =%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"tm schd init fail, ret =%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Rss init fail, ret =%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"manager table init fail, ret =%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"fd table init fail, ret=%d\0A\00", align 1
@hclge_reset_timer = common dso_local global i32 0, align 4
@hclge_service_task = common dso_local global i32 0, align 4
@hclge_reset_service_task = common dso_local global i32 0, align 4
@hclge_mailbox_service_task = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HCLGE_RESET_INTERVAL = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [36 x i8] c"%s driver initialization finished.\0A\00", align 1
@HCLGE_DRIVER_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_ae_dev*)* @hclge_init_ae_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_init_ae_dev(%struct.hnae3_ae_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_ae_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hnae3_ae_dev* %0, %struct.hnae3_ae_dev** %3, align 8
  %8 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %8, i32 0, i32 2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hclge_dev* @devm_kzalloc(i32* %12, i32 112, i32 %13)
  store %struct.hclge_dev* %14, %struct.hclge_dev** %5, align 8
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %16 = icmp ne %struct.hclge_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %360

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 1
  store %struct.pci_dev* %21, %struct.pci_dev** %23, align 8
  %24 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 15
  store %struct.hnae3_ae_dev* %24, %struct.hnae3_ae_dev** %26, align 8
  %27 = load i32, i32* @HNAE3_NONE_RESET, align 4
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 14
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 8
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %34 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %34, i32 0, i32 1
  store %struct.hclge_dev* %33, %struct.hclge_dev** %35, align 8
  %36 = load i64, i64* @ETH_FRAME_LEN, align 8
  %37 = load i64, i64* @ETH_FCS_LEN, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* @VLAN_HLEN, align 4
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %44 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %43, i32 0, i32 12
  store i64 %42, i64* %44, align 8
  %45 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %46 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %45, i32 0, i32 11
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %49 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %48, i32 0, i32 10
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 9
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %55 = call i32 @hclge_pci_init(%struct.hclge_dev* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %20
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %360

62:                                               ; preds = %20
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %64 = call i32 @hclge_cmd_queue_init(%struct.hclge_dev* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %347

72:                                               ; preds = %62
  %73 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %74 = call i32 @hclge_cmd_init(%struct.hclge_dev* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %344

78:                                               ; preds = %72
  %79 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %80 = call i32 @hclge_get_cap(%struct.hclge_dev* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %344

88:                                               ; preds = %78
  %89 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %90 = call i32 @hclge_configure(%struct.hclge_dev* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %344

98:                                               ; preds = %88
  %99 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %100 = call i32 @hclge_init_msi(%struct.hclge_dev* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %344

108:                                              ; preds = %98
  %109 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %110 = call i32 @hclge_misc_irq_init(%struct.hclge_dev* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %6, align 4
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  br label %341

118:                                              ; preds = %108
  %119 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %120 = call i32 @hclge_alloc_tqps(%struct.hclge_dev* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %338

128:                                              ; preds = %118
  %129 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %130 = call i32 @hclge_alloc_vport(%struct.hclge_dev* %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  br label %338

138:                                              ; preds = %128
  %139 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %140 = call i32 @hclge_map_tqp(%struct.hclge_dev* %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %145 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %6, align 4
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %146)
  br label %338

148:                                              ; preds = %138
  %149 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %150 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @HNAE3_MEDIA_TYPE_COPPER, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %148
  %157 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %158 = call i32 @hclge_mac_mdio_config(%struct.hclge_dev* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %163 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %162, i32 0, i32 1
  %164 = load %struct.pci_dev*, %struct.pci_dev** %163, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load i32, i32* %6, align 4
  %167 = call i32 (i32*, i8*, ...) @dev_err(i32* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %166)
  br label %338

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %148
  %170 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %171 = call i32 @hclge_init_umv_space(%struct.hclge_dev* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %176 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 0
  %177 = load i32, i32* %6, align 4
  %178 = call i32 (i32*, i8*, ...) @dev_err(i32* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %177)
  br label %323

179:                                              ; preds = %169
  %180 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %181 = call i32 @hclge_mac_init(%struct.hclge_dev* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %186 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %185, i32 0, i32 0
  %187 = load i32, i32* %6, align 4
  %188 = call i32 (i32*, i8*, ...) @dev_err(i32* %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %187)
  br label %323

189:                                              ; preds = %179
  %190 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %191 = load i32, i32* @HCLGE_TSO_MSS_MIN, align 4
  %192 = load i32, i32* @HCLGE_TSO_MSS_MAX, align 4
  %193 = call i32 @hclge_config_tso(%struct.hclge_dev* %190, i32 %191, i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %189
  %197 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %198 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %197, i32 0, i32 0
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (i32*, i8*, ...) @dev_err(i32* %198, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %199)
  br label %323

201:                                              ; preds = %189
  %202 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %203 = call i32 @hclge_config_gro(%struct.hclge_dev* %202, i32 1)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %323

207:                                              ; preds = %201
  %208 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %209 = call i32 @hclge_init_vlan_config(%struct.hclge_dev* %208)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %214 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %213, i32 0, i32 0
  %215 = load i32, i32* %6, align 4
  %216 = call i32 (i32*, i8*, ...) @dev_err(i32* %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32 %215)
  br label %323

217:                                              ; preds = %207
  %218 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %219 = call i32 @hclge_tm_schd_init(%struct.hclge_dev* %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %217
  %223 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %224 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %223, i32 0, i32 0
  %225 = load i32, i32* %6, align 4
  %226 = call i32 (i32*, i8*, ...) @dev_err(i32* %224, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %225)
  br label %323

227:                                              ; preds = %217
  %228 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %229 = call i32 @hclge_rss_init_cfg(%struct.hclge_dev* %228)
  %230 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %231 = call i32 @hclge_rss_init_hw(%struct.hclge_dev* %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %227
  %235 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %236 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %235, i32 0, i32 0
  %237 = load i32, i32* %6, align 4
  %238 = call i32 (i32*, i8*, ...) @dev_err(i32* %236, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %237)
  br label %323

239:                                              ; preds = %227
  %240 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %241 = call i32 @init_mgr_tbl(%struct.hclge_dev* %240)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %239
  %245 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %246 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %245, i32 0, i32 0
  %247 = load i32, i32* %6, align 4
  %248 = call i32 (i32*, i8*, ...) @dev_err(i32* %246, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %247)
  br label %323

249:                                              ; preds = %239
  %250 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %251 = call i32 @hclge_init_fd_config(%struct.hclge_dev* %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %256 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %255, i32 0, i32 0
  %257 = load i32, i32* %6, align 4
  %258 = call i32 (i32*, i8*, ...) @dev_err(i32* %256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %257)
  br label %323

259:                                              ; preds = %249
  %260 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %261 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @INIT_KFIFO(i32 %262)
  %264 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %265 = call i32 @hclge_dcb_ops_set(%struct.hclge_dev* %264)
  %266 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %267 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %266, i32 0, i32 4
  %268 = load i32, i32* @hclge_reset_timer, align 4
  %269 = call i32 @timer_setup(i32* %267, i32 %268, i32 0)
  %270 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %271 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %270, i32 0, i32 7
  %272 = load i32, i32* @hclge_service_task, align 4
  %273 = call i32 @INIT_DELAYED_WORK(i32* %271, i32 %272)
  %274 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %275 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %274, i32 0, i32 6
  %276 = load i32, i32* @hclge_reset_service_task, align 4
  %277 = call i32 @INIT_WORK(i32* %275, i32 %276)
  %278 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %279 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %278, i32 0, i32 5
  %280 = load i32, i32* @hclge_mailbox_service_task, align 4
  %281 = call i32 @INIT_WORK(i32* %279, i32 %280)
  %282 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %283 = call i32 @hclge_misc_affinity_setup(%struct.hclge_dev* %282)
  %284 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %285 = call i32 @hclge_clear_all_event_cause(%struct.hclge_dev* %284)
  %286 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %287 = call i32 @hclge_clear_resetting_state(%struct.hclge_dev* %286)
  %288 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %289 = call i32 @hclge_handle_all_hns_hw_errors(%struct.hnae3_ae_dev* %288)
  %290 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %291 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %308

294:                                              ; preds = %259
  %295 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %296 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %297 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %296, i32 0, i32 0
  %298 = call i32 @hclge_get_reset_level(%struct.hnae3_ae_dev* %295, i64* %297)
  store i32 %298, i32* %7, align 4
  %299 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %300 = load i32, i32* %7, align 4
  %301 = call i32 @hclge_set_def_reset_request(%struct.hnae3_ae_dev* %299, i32 %300)
  %302 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %303 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %302, i32 0, i32 4
  %304 = load i64, i64* @jiffies, align 8
  %305 = load i64, i64* @HCLGE_RESET_INTERVAL, align 8
  %306 = add nsw i64 %304, %305
  %307 = call i32 @mod_timer(i32* %303, i64 %306)
  br label %308

308:                                              ; preds = %294, %259
  %309 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %310 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %309, i32 0, i32 3
  %311 = call i32 @hclge_enable_vector(i32* %310, i32 1)
  %312 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %313 = call i32 @hclge_state_init(%struct.hclge_dev* %312)
  %314 = load i64, i64* @jiffies, align 8
  %315 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %316 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %315, i32 0, i32 2
  store i64 %314, i64* %316, align 8
  %317 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %318 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %317, i32 0, i32 1
  %319 = load %struct.pci_dev*, %struct.pci_dev** %318, align 8
  %320 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %319, i32 0, i32 0
  %321 = load i32, i32* @HCLGE_DRIVER_NAME, align 4
  %322 = call i32 @dev_info(i32* %320, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i32 %321)
  store i32 0, i32* %2, align 4
  br label %362

323:                                              ; preds = %254, %244, %234, %222, %212, %206, %196, %184, %174
  %324 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %325 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %332 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @mdiobus_unregister(i32 %335)
  br label %337

337:                                              ; preds = %330, %323
  br label %338

338:                                              ; preds = %337, %161, %143, %133, %123
  %339 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %340 = call i32 @hclge_misc_irq_uninit(%struct.hclge_dev* %339)
  br label %341

341:                                              ; preds = %338, %113
  %342 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %343 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %342)
  br label %344

344:                                              ; preds = %341, %103, %93, %83, %77
  %345 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %346 = call i32 @hclge_cmd_uninit(%struct.hclge_dev* %345)
  br label %347

347:                                              ; preds = %344, %67
  %348 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %349 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %350 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @pcim_iounmap(%struct.pci_dev* %348, i32 %352)
  %354 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %355 = call i32 @pci_clear_master(%struct.pci_dev* %354)
  %356 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %357 = call i32 @pci_release_regions(%struct.pci_dev* %356)
  %358 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %359 = call i32 @pci_disable_device(%struct.pci_dev* %358)
  br label %360

360:                                              ; preds = %347, %58, %17
  %361 = load i32, i32* %6, align 4
  store i32 %361, i32* %2, align 4
  br label %362

362:                                              ; preds = %360, %308
  %363 = load i32, i32* %2, align 4
  ret i32 %363
}

declare dso_local %struct.hclge_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hclge_pci_init(%struct.hclge_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclge_cmd_queue_init(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_cmd_init(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_get_cap(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_configure(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_init_msi(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_misc_irq_init(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_alloc_tqps(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_alloc_vport(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_map_tqp(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_mac_mdio_config(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_init_umv_space(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_mac_init(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_config_tso(%struct.hclge_dev*, i32, i32) #1

declare dso_local i32 @hclge_config_gro(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_init_vlan_config(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_tm_schd_init(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_rss_init_cfg(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_rss_init_hw(%struct.hclge_dev*) #1

declare dso_local i32 @init_mgr_tbl(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_init_fd_config(%struct.hclge_dev*) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @hclge_dcb_ops_set(%struct.hclge_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @hclge_misc_affinity_setup(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_clear_all_event_cause(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_clear_resetting_state(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_handle_all_hns_hw_errors(%struct.hnae3_ae_dev*) #1

declare dso_local i32 @hclge_get_reset_level(%struct.hnae3_ae_dev*, i64*) #1

declare dso_local i32 @hclge_set_def_reset_request(%struct.hnae3_ae_dev*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @hclge_enable_vector(i32*, i32) #1

declare dso_local i32 @hclge_state_init(%struct.hclge_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @hclge_misc_irq_uninit(%struct.hclge_dev*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @hclge_cmd_uninit(%struct.hclge_dev*) #1

declare dso_local i32 @pcim_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
