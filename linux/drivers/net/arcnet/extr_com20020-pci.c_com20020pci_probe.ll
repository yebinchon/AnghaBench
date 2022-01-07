; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020-pci.c_com20020pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020-pci.c_com20020pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.com20020_pci_card_info = type { i32, i32, i32, i32, %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map }
%struct.com20020_pci_channel_map = type { i32, i64, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32**, i32*, i32* }
%struct.arcnet_local = type { i8*, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.com20020_priv = type { i32, i32, %struct.com20020_pci_card_info* }
%struct.resource = type { i32 }
%struct.com20020_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.net_device*, %struct.com20020_priv* }
%struct.TYPE_4__ = type { i32*, i8*, i8*, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"com20020-pci\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"IO region %xh-%xh already allocated.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@device = common dso_local global i32 0, align 4
@com20020_netdev_ops = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s Controls\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"IO region %xh-%xh already allocated\0A\00", align 1
@COM20020_REG_W_COMMAND = common dso_local global i32 0, align 4
@COM20020_REG_R_DIAGSTAT = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@com20020_state_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"PCI COM20020\00", align 1
@backplane = common dso_local global i32 0, align 4
@clockp = common dso_local global i32 0, align 4
@clockm = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"EAE PLX-PCI FB2\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"EAE PLX-PCI MA1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"arc%d-%d\00", align 1
@COM20020_REG_R_STATUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"IO address %Xh is empty!\0A\00", align 1
@led_tx_set = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"arc%d-%d-tx\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"pci:green:tx:%d-%d\00", align 1
@led_recon_set = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"arc%d-%d-recon\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"pci:red:recon:%d-%d\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @com20020pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com20020pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.com20020_pci_card_info*, align 8
  %7 = alloca %struct.com20020_pci_channel_map*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.arcnet_local*, align 8
  %10 = alloca %struct.com20020_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.resource*, align 8
  %15 = alloca %struct.com20020_pci_channel_map*, align 8
  %16 = alloca %struct.com20020_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i64 @pci_enable_device(%struct.pci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %402

24:                                               ; preds = %2
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kzalloc(i32* %26, i32 16, i32 %27)
  %29 = bitcast i8* %28 to %struct.com20020_priv*
  store %struct.com20020_priv* %29, %struct.com20020_priv** %10, align 8
  %30 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %31 = icmp ne %struct.com20020_priv* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %402

35:                                               ; preds = %24
  %36 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.com20020_pci_card_info*
  store %struct.com20020_pci_card_info* %39, %struct.com20020_pci_card_info** %6, align 8
  %40 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %41 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %42 = getelementptr inbounds %struct.com20020_priv, %struct.com20020_priv* %41, i32 0, i32 2
  store %struct.com20020_pci_card_info* %40, %struct.com20020_pci_card_info** %42, align 8
  %43 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %44 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %43, i32 0, i32 5
  store %struct.com20020_pci_channel_map* %44, %struct.com20020_pci_channel_map** %7, align 8
  %45 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %46 = getelementptr inbounds %struct.com20020_priv, %struct.com20020_priv* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %7, align 8
  %49 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %35
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %7, align 8
  %55 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_resource_start(%struct.pci_dev* %53, i32 %56)
  %58 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %7, align 8
  %59 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %12, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %7, align 8
  %66 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call %struct.resource* @devm_request_region(i32* %63, i32 %64, i64 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %68, %struct.resource** %14, align 8
  %69 = load %struct.resource*, %struct.resource** %14, align 8
  %70 = icmp ne %struct.resource* %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %7, align 8
  %76 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = sub nsw i64 %78, 1
  %80 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %72, i64 %79)
  %81 = load i32, i32* @EBUSY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %402

83:                                               ; preds = %52
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %86 = getelementptr inbounds %struct.com20020_priv, %struct.com20020_priv* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %35
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %391, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %91 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %394

94:                                               ; preds = %88
  %95 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %96 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %95, i32 0, i32 4
  %97 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %97, i64 %99
  store %struct.com20020_pci_channel_map* %100, %struct.com20020_pci_channel_map** %15, align 8
  store i32 15, i32* %17, align 4
  %101 = load i32, i32* @device, align 4
  %102 = call %struct.net_device* @alloc_arcdev(i32 %101)
  store %struct.net_device* %102, %struct.net_device** %8, align 8
  %103 = load %struct.net_device*, %struct.net_device** %8, align 8
  %104 = icmp ne %struct.net_device* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  br label %398

108:                                              ; preds = %94
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.net_device*, %struct.net_device** %8, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %8, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 8
  store i32* @com20020_netdev_ops, i32** %113, align 8
  %114 = load %struct.net_device*, %struct.net_device** %8, align 8
  %115 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %114)
  store %struct.arcnet_local* %115, %struct.arcnet_local** %9, align 8
  %116 = load i32, i32* @D_NORMAL, align 4
  %117 = load %struct.net_device*, %struct.net_device** %8, align 8
  %118 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %119 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @arc_printk(i32 %116, %struct.net_device* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %15, align 8
  %124 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pci_resource_start(%struct.pci_dev* %122, i32 %125)
  %127 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %15, align 8
  %128 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %126, %129
  store i32 %130, i32* %12, align 4
  %131 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %132 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 0
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %15, align 8
  %135 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call %struct.resource* @devm_request_region(i32* %132, i32 %133, i64 %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %137, %struct.resource** %14, align 8
  %138 = load %struct.resource*, %struct.resource** %14, align 8
  %139 = icmp ne %struct.resource* %138, null
  br i1 %139, label %152, label %140

140:                                              ; preds = %108
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.com20020_pci_channel_map*, %struct.com20020_pci_channel_map** %15, align 8
  %145 = getelementptr inbounds %struct.com20020_pci_channel_map, %struct.com20020_pci_channel_map* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = sub nsw i64 %147, 1
  %149 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %141, i64 %148)
  %150 = load i32, i32* @EBUSY, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %13, align 4
  br label %398

152:                                              ; preds = %108
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @COM20020_REG_W_COMMAND, align 4
  %155 = call i32 @arcnet_outb(i32 0, i32 %153, i32 %154)
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @COM20020_REG_R_DIAGSTAT, align 4
  %158 = call i32 @arcnet_inb(i32 %156, i32 %157)
  %159 = load %struct.net_device*, %struct.net_device** %8, align 8
  %160 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 0
  %162 = call i32 @SET_NETDEV_DEV(%struct.net_device* %159, i32* %161)
  %163 = load i32, i32* %12, align 4
  %164 = load %struct.net_device*, %struct.net_device** %8, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @node, align 4
  %167 = load %struct.net_device*, %struct.net_device** %8, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 7
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %166, i32* %170, align 4
  %171 = load %struct.net_device*, %struct.net_device** %8, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 6
  %173 = load i32**, i32*** %172, align 8
  %174 = getelementptr inbounds i32*, i32** %173, i64 0
  store i32* @com20020_state_group, i32** %174, align 8
  %175 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %176 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.net_device*, %struct.net_device** %8, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %181 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %180, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %181, align 8
  %182 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %183 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %186 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @backplane, align 4
  %188 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %189 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = load i32, i32* @clockp, align 4
  %191 = and i32 %190, 7
  %192 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %193 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @clockm, align 4
  %195 = and i32 %194, 3
  %196 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %197 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @timeout, align 4
  %199 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %200 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @THIS_MODULE, align 4
  %202 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %203 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 4
  %205 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %206 = getelementptr inbounds %struct.com20020_priv, %struct.com20020_priv* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @inb(i32 %207)
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 2, %209
  %211 = ashr i32 %208, %210
  %212 = and i32 %211, 1
  %213 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %214 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 8
  %215 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %216 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @strncmp(i32 %217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 15)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %152
  %221 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %222 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %221, i32 0, i32 1
  store i32 1, i32* %222, align 8
  br label %223

223:                                              ; preds = %220, %152
  %224 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %225 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @strncmp(i32 %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 15)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %223
  store i32 3, i32* %17, align 4
  br label %230

230:                                              ; preds = %229, %223
  %231 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %232 = getelementptr inbounds %struct.com20020_priv, %struct.com20020_priv* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.com20020_pci_card_info*, %struct.com20020_pci_card_info** %6, align 8
  %235 = getelementptr inbounds %struct.com20020_pci_card_info, %struct.com20020_pci_card_info* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %233, %236
  %238 = call i32 @inb(i32 %237)
  %239 = ashr i32 %238, 4
  %240 = load i32, i32* %17, align 4
  %241 = and i32 %239, %240
  %242 = load %struct.net_device*, %struct.net_device** %8, align 8
  %243 = getelementptr inbounds %struct.net_device, %struct.net_device* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  %244 = load %struct.net_device*, %struct.net_device** %8, align 8
  %245 = getelementptr inbounds %struct.net_device, %struct.net_device* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.net_device*, %struct.net_device** %8, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @snprintf(i32 %246, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* @COM20020_REG_R_STATUS, align 4
  %254 = call i32 @arcnet_inb(i32 %252, i32 %253)
  %255 = icmp eq i32 %254, 255
  br i1 %255, label %256, label %261

256:                                              ; preds = %230
  %257 = load i32, i32* %12, align 4
  %258 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @EIO, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %13, align 4
  br label %398

261:                                              ; preds = %230
  %262 = load %struct.net_device*, %struct.net_device** %8, align 8
  %263 = call i64 @com20020_check(%struct.net_device* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i32, i32* @EIO, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %13, align 4
  br label %398

268:                                              ; preds = %261
  %269 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %270 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %269, i32 0, i32 0
  %271 = load i32, i32* @GFP_KERNEL, align 4
  %272 = call i8* @devm_kzalloc(i32* %270, i32 88, i32 %271)
  %273 = bitcast i8* %272 to %struct.com20020_dev*
  store %struct.com20020_dev* %273, %struct.com20020_dev** %16, align 8
  %274 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %275 = icmp ne %struct.com20020_dev* %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %268
  %277 = load i32, i32* @ENOMEM, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %13, align 4
  br label %398

279:                                              ; preds = %268
  %280 = load i32, i32* %11, align 4
  %281 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %282 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  %283 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %284 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %285 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %284, i32 0, i32 5
  store %struct.com20020_priv* %283, %struct.com20020_priv** %285, align 8
  %286 = load i32, i32* @led_tx_set, align 4
  %287 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %288 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  store i32 %286, i32* %289, align 8
  %290 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %291 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %290, i32 0, i32 0
  %292 = load i32, i32* @GFP_KERNEL, align 4
  %293 = load %struct.net_device*, %struct.net_device** %8, align 8
  %294 = getelementptr inbounds %struct.net_device, %struct.net_device* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = call i8* @devm_kasprintf(i32* %291, i32 %292, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %295, i32 %296)
  %298 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %299 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 2
  store i8* %297, i8** %300, align 8
  %301 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %302 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %301, i32 0, i32 0
  %303 = load i32, i32* @GFP_KERNEL, align 4
  %304 = load %struct.net_device*, %struct.net_device** %8, align 8
  %305 = getelementptr inbounds %struct.net_device, %struct.net_device* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = call i8* @devm_kasprintf(i32* %302, i32 %303, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %306, i32 %307)
  %309 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %310 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 1
  store i8* %308, i8** %311, align 8
  %312 = load %struct.net_device*, %struct.net_device** %8, align 8
  %313 = getelementptr inbounds %struct.net_device, %struct.net_device* %312, i32 0, i32 3
  %314 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %315 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  store i32* %313, i32** %316, align 8
  %317 = load i32, i32* @led_recon_set, align 4
  %318 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %319 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 3
  store i32 %317, i32* %320, align 8
  %321 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %322 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %321, i32 0, i32 0
  %323 = load i32, i32* @GFP_KERNEL, align 4
  %324 = load %struct.net_device*, %struct.net_device** %8, align 8
  %325 = getelementptr inbounds %struct.net_device, %struct.net_device* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %11, align 4
  %328 = call i8* @devm_kasprintf(i32* %322, i32 %323, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %326, i32 %327)
  %329 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %330 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 2
  store i8* %328, i8** %331, align 8
  %332 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %333 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %332, i32 0, i32 0
  %334 = load i32, i32* @GFP_KERNEL, align 4
  %335 = load %struct.net_device*, %struct.net_device** %8, align 8
  %336 = getelementptr inbounds %struct.net_device, %struct.net_device* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = call i8* @devm_kasprintf(i32* %333, i32 %334, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %337, i32 %338)
  %340 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %341 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 1
  store i8* %339, i8** %342, align 8
  %343 = load %struct.net_device*, %struct.net_device** %8, align 8
  %344 = getelementptr inbounds %struct.net_device, %struct.net_device* %343, i32 0, i32 3
  %345 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %346 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  store i32* %344, i32** %347, align 8
  %348 = load %struct.net_device*, %struct.net_device** %8, align 8
  %349 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %350 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %349, i32 0, i32 4
  store %struct.net_device* %348, %struct.net_device** %350, align 8
  %351 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %352 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %351, i32 0, i32 0
  %353 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %354 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %353, i32 0, i32 3
  %355 = call i32 @devm_led_classdev_register(i32* %352, %struct.TYPE_4__* %354)
  store i32 %355, i32* %13, align 4
  %356 = load i32, i32* %13, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %279
  br label %398

359:                                              ; preds = %279
  %360 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %361 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %360, i32 0, i32 0
  %362 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %363 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %362, i32 0, i32 2
  %364 = call i32 @devm_led_classdev_register(i32* %361, %struct.TYPE_4__* %363)
  store i32 %364, i32* %13, align 4
  %365 = load i32, i32* %13, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %359
  br label %398

368:                                              ; preds = %359
  %369 = load %struct.net_device*, %struct.net_device** %8, align 8
  %370 = getelementptr inbounds %struct.net_device, %struct.net_device* %369, i32 0, i32 3
  %371 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %372 = call i32 @dev_set_drvdata(i32* %370, %struct.com20020_dev* %371)
  %373 = load %struct.net_device*, %struct.net_device** %8, align 8
  %374 = load i32, i32* @IRQF_SHARED, align 4
  %375 = call i32 @com20020_found(%struct.net_device* %373, i32 %374)
  store i32 %375, i32* %13, align 4
  %376 = load i32, i32* %13, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %368
  br label %398

379:                                              ; preds = %368
  %380 = load %struct.net_device*, %struct.net_device** %8, align 8
  %381 = load %struct.net_device*, %struct.net_device** %8, align 8
  %382 = getelementptr inbounds %struct.net_device, %struct.net_device* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* %11, align 4
  %385 = call i32 @devm_arcnet_led_init(%struct.net_device* %380, i32 %383, i32 %384)
  %386 = load %struct.com20020_dev*, %struct.com20020_dev** %16, align 8
  %387 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %386, i32 0, i32 1
  %388 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %389 = getelementptr inbounds %struct.com20020_priv, %struct.com20020_priv* %388, i32 0, i32 1
  %390 = call i32 @list_add(i32* %387, i32* %389)
  br label %391

391:                                              ; preds = %379
  %392 = load i32, i32* %11, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %11, align 4
  br label %88

394:                                              ; preds = %88
  %395 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %396 = load %struct.com20020_priv*, %struct.com20020_priv** %10, align 8
  %397 = call i32 @pci_set_drvdata(%struct.pci_dev* %395, %struct.com20020_priv* %396)
  store i32 0, i32* %3, align 4
  br label %402

398:                                              ; preds = %378, %367, %358, %276, %265, %256, %140, %105
  %399 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %400 = call i32 @com20020pci_remove(%struct.pci_dev* %399)
  %401 = load i32, i32* %13, align 4
  store i32 %401, i32* %3, align 4
  br label %402

402:                                              ; preds = %398, %394, %71, %32, %21
  %403 = load i32, i32* %3, align 4
  ret i32 %403
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local %struct.resource* @devm_request_region(i32*, i32, i64, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local %struct.net_device* @alloc_arcdev(i32) #1

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @arcnet_outb(i32, i32, i32) #1

declare dso_local i32 @arcnet_inb(i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i64 @com20020_check(%struct.net_device*) #1

declare dso_local i8* @devm_kasprintf(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @devm_led_classdev_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.com20020_dev*) #1

declare dso_local i32 @com20020_found(%struct.net_device*, i32) #1

declare dso_local i32 @devm_arcnet_led_init(%struct.net_device*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.com20020_priv*) #1

declare dso_local i32 @com20020pci_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
