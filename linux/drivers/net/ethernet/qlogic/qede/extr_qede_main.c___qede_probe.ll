; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c___qede_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c___qede_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (%struct.qed_dev*, %struct.qed_dev_eth_info*)*, %struct.TYPE_10__* }
%struct.qed_dev = type { i32 }
%struct.qed_dev_eth_info = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.qed_dev*, %struct.qed_slowpath_params*)*, i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)*, %struct.qed_dev* (%struct.pci_dev*, %struct.qed_slowpath_params*)* }
%struct.qed_slowpath_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.qed_probe_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qede_dev = type { %struct.TYPE_11__*, i32, %struct.TYPE_9__*, i32, i32, i32, i32, %struct.qed_slowpath_params, %struct.qed_dev* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.qed_dev*, i32*, %struct.qede_dev*)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.qed_dev*, i32)* }
%struct.net_device = type { i32 }

@QED_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Starting qede probe\0A\00", align 1
@QED_PROTOCOL_ETH = common dso_local global i32 0, align 4
@QEDE_PROBE_RECOVERY = common dso_local global i32 0, align 4
@qed_ops = common dso_local global %struct.TYPE_12__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@QED_INT_MODE_MSIX = common dso_local global i32 0, align 4
@QEDE_MAJOR_VERSION = common dso_local global i32 0, align 4
@QEDE_MINOR_VERSION = common dso_local global i32 0, align 4
@QEDE_REVISION_VERSION = common dso_local global i32 0, align 4
@QEDE_ENGINEERING_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"qede LAN\00", align 1
@QED_DRV_VER_STR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot start slowpath\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QEDE_FLAGS_IS_VF = common dso_local global i32 0, align 4
@qede_sp_task = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Cannot register net-device\0A\00", align 1
@QEDE_PROBE_NORMAL = common dso_local global i32 0, align 4
@qede_ll_ops = common dso_local global i32 0, align 4
@QEDE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i32, i32, i32)* @__qede_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qede_probe(%struct.pci_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_probe_params, align 4
  %13 = alloca %struct.qed_slowpath_params, align 4
  %14 = alloca %struct.qed_dev_eth_info, align 4
  %15 = alloca %struct.qede_dev*, align 8
  %16 = alloca %struct.qed_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @QED_LEVEL_INFO, align 4
  %21 = and i32 %19, %20
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %5
  %27 = bitcast %struct.qed_probe_params* %12 to %struct.qed_slowpath_params*
  %28 = call i32 @memset(%struct.qed_slowpath_params* %27, i32 0, i32 44)
  %29 = load i32, i32* @QED_PROTOCOL_ETH, align 4
  %30 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %12, i32 0, i32 10
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %12, i32 0, i32 9
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %12, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @QEDE_PROBE_RECOVERY, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.qed_probe_params, %struct.qed_probe_params* %12, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load %struct.qed_dev* (%struct.pci_dev*, %struct.qed_slowpath_params*)*, %struct.qed_dev* (%struct.pci_dev*, %struct.qed_slowpath_params*)** %45, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %48 = bitcast %struct.qed_probe_params* %12 to %struct.qed_slowpath_params*
  %49 = call %struct.qed_dev* %46(%struct.pci_dev* %47, %struct.qed_slowpath_params* %48)
  store %struct.qed_dev* %49, %struct.qed_dev** %16, align 8
  %50 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %51 = icmp ne %struct.qed_dev* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %26
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %17, align 4
  br label %231

55:                                               ; preds = %26
  %56 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %57 = call i32 @qede_update_pf_params(%struct.qed_dev* %56)
  %58 = call i32 @memset(%struct.qed_slowpath_params* %13, i32 0, i32 44)
  %59 = load i32, i32* @QED_INT_MODE_MSIX, align 4
  %60 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %13, i32 0, i32 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @QEDE_MAJOR_VERSION, align 4
  %62 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %13, i32 0, i32 7
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @QEDE_MINOR_VERSION, align 4
  %64 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %13, i32 0, i32 6
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @QEDE_REVISION_VERSION, align 4
  %66 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %13, i32 0, i32 5
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @QEDE_ENGINEERING_VERSION, align 4
  %68 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %13, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %13, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @QED_DRV_VER_STR_SIZE, align 4
  %72 = call i32 @strlcpy(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32 (%struct.qed_dev*, %struct.qed_slowpath_params*)*, i32 (%struct.qed_dev*, %struct.qed_slowpath_params*)** %76, align 8
  %78 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %79 = call i32 %77(%struct.qed_dev* %78, %struct.qed_slowpath_params* %13)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %55
  %83 = call i32 @pr_notice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %223

84:                                               ; preds = %55
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32 (%struct.qed_dev*, %struct.qed_dev_eth_info*)*, i32 (%struct.qed_dev*, %struct.qed_dev_eth_info*)** %86, align 8
  %88 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %89 = call i32 %87(%struct.qed_dev* %88, %struct.qed_dev_eth_info* %14)
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %215

93:                                               ; preds = %84
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @QEDE_PROBE_RECOVERY, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93
  %98 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %99 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call %struct.qede_dev* @qede_alloc_etherdev(%struct.qed_dev* %98, %struct.pci_dev* %99, %struct.qed_dev_eth_info* %14, i32 %100, i32 %101)
  store %struct.qede_dev* %102, %struct.qede_dev** %15, align 8
  %103 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %104 = icmp ne %struct.qede_dev* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %17, align 4
  br label %215

108:                                              ; preds = %97
  br label %123

109:                                              ; preds = %93
  %110 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %111 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %110)
  store %struct.net_device* %111, %struct.net_device** %18, align 8
  %112 = load %struct.net_device*, %struct.net_device** %18, align 8
  %113 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %112)
  store %struct.qede_dev* %113, %struct.qede_dev** %15, align 8
  %114 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %115 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %116 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %115, i32 0, i32 8
  store %struct.qed_dev* %114, %struct.qed_dev** %116, align 8
  %117 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %118 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %117, i32 0, i32 7
  %119 = call i32 @memset(%struct.qed_slowpath_params* %118, i32 0, i32 44)
  %120 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %121 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %120, i32 0, i32 6
  %122 = call i32 @memcpy(i32* %121, %struct.qed_dev_eth_info* %14, i32 4)
  br label %123

123:                                              ; preds = %109, %108
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* @QEDE_FLAGS_IS_VF, align 4
  %128 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %129 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %128, i32 0, i32 5
  %130 = call i32 @set_bit(i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %133 = call i32 @qede_init_ndev(%struct.qede_dev* %132)
  %134 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* @QEDE_PROBE_RECOVERY, align 4
  %137 = icmp eq i32 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @qede_rdma_dev_add(%struct.qede_dev* %134, i32 %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %210

143:                                              ; preds = %131
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @QEDE_PROBE_RECOVERY, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %143
  %148 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %149 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %148, i32 0, i32 4
  %150 = load i32, i32* @qede_sp_task, align 4
  %151 = call i32 @INIT_DELAYED_WORK(i32* %149, i32 %150)
  %152 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %153 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %152, i32 0, i32 3
  %154 = call i32 @mutex_init(i32* %153)
  %155 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %156 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = call i32 @register_netdev(%struct.TYPE_11__* %157)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %147
  %162 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %163 = call i32 @DP_NOTICE(%struct.qede_dev* %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %203

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164, %143
  %166 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %167 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %166, i32 0, i32 2
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i32 (%struct.qed_dev*, i32)*, i32 (%struct.qed_dev*, i32)** %171, align 8
  %173 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %174 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %175 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %174, i32 0, i32 0
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 %172(%struct.qed_dev* %173, i32 %178)
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %165
  %183 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @QEDE_PROBE_NORMAL, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @qede_ptp_enable(%struct.qede_dev* %183, i32 %187)
  br label %189

189:                                              ; preds = %182, %165
  %190 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %191 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %190, i32 0, i32 2
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32 (%struct.qed_dev*, i32*, %struct.qede_dev*)*, i32 (%struct.qed_dev*, i32*, %struct.qede_dev*)** %193, align 8
  %195 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %196 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %197 = call i32 %194(%struct.qed_dev* %195, i32* @qede_ll_ops, %struct.qede_dev* %196)
  %198 = load i32, i32* @QEDE_RX_HDR_SIZE, align 4
  %199 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %200 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 8
  %201 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %202 = call i32 @qede_log_probe(%struct.qede_dev* %201)
  store i32 0, i32* %6, align 4
  br label %233

203:                                              ; preds = %161
  %204 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @QEDE_PROBE_RECOVERY, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @qede_rdma_dev_remove(%struct.qede_dev* %204, i32 %208)
  br label %210

210:                                              ; preds = %203, %142
  %211 = load %struct.qede_dev*, %struct.qede_dev** %15, align 8
  %212 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %211, i32 0, i32 0
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = call i32 @free_netdev(%struct.TYPE_11__* %213)
  br label %215

215:                                              ; preds = %210, %105, %92
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 2
  %220 = load i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)** %219, align 8
  %221 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %222 = call i32 %220(%struct.qed_dev* %221)
  br label %223

223:                                              ; preds = %215, %82
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** @qed_ops, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i32 (%struct.qed_dev*)*, i32 (%struct.qed_dev*)** %227, align 8
  %229 = load %struct.qed_dev*, %struct.qed_dev** %16, align 8
  %230 = call i32 %228(%struct.qed_dev* %229)
  br label %231

231:                                              ; preds = %223, %52
  %232 = load i32, i32* %17, align 4
  store i32 %232, i32* %6, align 4
  br label %233

233:                                              ; preds = %231, %189
  %234 = load i32, i32* %6, align 4
  ret i32 %234
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @memset(%struct.qed_slowpath_params*, i32, i32) #1

declare dso_local i32 @qede_update_pf_params(%struct.qed_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.qede_dev* @qede_alloc_etherdev(%struct.qed_dev*, %struct.pci_dev*, %struct.qed_dev_eth_info*, i32, i32) #1

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, %struct.qed_dev_eth_info*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qede_init_ndev(%struct.qede_dev*) #1

declare dso_local i32 @qede_rdma_dev_add(%struct.qede_dev*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @register_netdev(%struct.TYPE_11__*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_ptp_enable(%struct.qede_dev*, i32) #1

declare dso_local i32 @qede_log_probe(%struct.qede_dev*) #1

declare dso_local i32 @qede_rdma_dev_remove(%struct.qede_dev*, i32) #1

declare dso_local i32 @free_netdev(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
