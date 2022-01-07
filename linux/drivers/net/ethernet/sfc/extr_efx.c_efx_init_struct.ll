; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_init_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_efx.c_efx_init_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32*, i32, i32, %struct.TYPE_6__, i32*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, %struct.net_device*, i32, i32, i32, %struct.pci_dev*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.efx_nic* }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@efx_reset_work = common dso_local global i32 0, align 4
@efx_monitor = common dso_local global i32 0, align 4
@efx_selftest_async_work = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@STATE_UNINIT = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@EFX_DEFAULT_VI_STRIDE = common dso_local global i32 0, align 4
@MC_CMD_MAC_NSTATS = common dso_local global i32 0, align 4
@MC_CMD_MAC_GENERATION_END = common dso_local global i32 0, align 4
@efx_dummy_phy_operations = common dso_local global i32 0, align 4
@efx_mac_work = common dso_local global i32 0, align 4
@EFX_MAX_CHANNELS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@interrupt_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sfc%s\00", align 1
@EFX_ARFS_HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.pci_dev*, %struct.net_device*)* @efx_init_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_init_struct(%struct.efx_nic* %0, %struct.pci_dev* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 34
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 33
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 32
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 30
  %23 = load i32, i32* @efx_reset_work, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 29
  %27 = load i32, i32* @efx_monitor, align 4
  %28 = call i32 @INIT_DELAYED_WORK(i32* %26, i32 %27)
  %29 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 28
  %31 = load i32, i32* @efx_selftest_async_work, align 4
  %32 = call i32 @INIT_DELAYED_WORK(i32* %30, i32 %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %35 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %34, i32 0, i32 27
  store %struct.pci_dev* %33, %struct.pci_dev** %35, align 8
  %36 = load i32, i32* @debug, align 4
  %37 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 26
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @STATE_UNINIT, align 4
  %40 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 25
  store i32 %39, i32* %41, align 4
  %42 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 24
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = call i8* @pci_name(%struct.pci_dev* %45)
  %47 = call i32 @strlcpy(i32 %44, i8* %46, i32 4)
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 23
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 7
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @NET_IP_ALIGN, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %3
  %61 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NET_IP_ALIGN, align 4
  %65 = add nsw i32 %63, %64
  %66 = srem i32 %65, 4
  br label %68

67:                                               ; preds = %3
  br label %68

68:                                               ; preds = %67, %60
  %69 = phi i32 [ %66, %60 ], [ 0, %67 ]
  %70 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %71 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 7
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %78 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %77, i32 0, i32 7
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %76, %81
  %83 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %84 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %86 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %85, i32 0, i32 7
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %91 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %90, i32 0, i32 7
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %89, %94
  %96 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %97 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %99 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %98, i32 0, i32 22
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %103 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %102, i32 0, i32 21
  %104 = call i32 @mutex_init(i32* %103)
  %105 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %106 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %105, i32 0, i32 20
  %107 = call i32 @spin_lock_init(i32* %106)
  %108 = load i32, i32* @EFX_DEFAULT_VI_STRIDE, align 4
  %109 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %110 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %109, i32 0, i32 19
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @MC_CMD_MAC_NSTATS, align 4
  %112 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %113 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @MC_CMD_MAC_NSTATS, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* @MC_CMD_MAC_GENERATION_END, align 4
  %117 = icmp ne i32 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @BUILD_BUG_ON(i32 %118)
  %120 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %121 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %120, i32 0, i32 18
  %122 = call i32 @mutex_init(i32* %121)
  %123 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %124 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %123, i32 0, i32 14
  store i32* @efx_dummy_phy_operations, i32** %124, align 8
  %125 = load %struct.net_device*, %struct.net_device** %7, align 8
  %126 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %127 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %126, i32 0, i32 13
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store %struct.net_device* %125, %struct.net_device** %128, align 8
  %129 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %130 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %129, i32 0, i32 12
  %131 = load i32, i32* @efx_mac_work, align 4
  %132 = call i32 @INIT_WORK(i32* %130, i32 %131)
  %133 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %134 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %133, i32 0, i32 11
  %135 = call i32 @init_waitqueue_head(i32* %134)
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %176, %68
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @EFX_MAX_CHANNELS, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %179

140:                                              ; preds = %136
  %141 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @efx_alloc_channel(%struct.efx_nic* %141, i32 %142, i32* null)
  %144 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %145 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %144, i32 0, i32 10
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %143, i32* %149, align 4
  %150 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %151 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %150, i32 0, i32 10
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %140
  br label %234

159:                                              ; preds = %140
  %160 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %161 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %162 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %161, i32 0, i32 9
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  store %struct.efx_nic* %160, %struct.efx_nic** %167, align 8
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %170 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %169, i32 0, i32 9
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  store i32 %168, i32* %175, align 8
  br label %176

176:                                              ; preds = %159
  %177 = load i32, i32* %9, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  br label %136

179:                                              ; preds = %136
  %180 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %181 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %180, i32 0, i32 7
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %186 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %185, i32 0, i32 7
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = icmp sgt i64 %184, %189
  %191 = zext i1 %190 to i32
  %192 = call i64 @WARN_ON_ONCE(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %179
  %195 = load i32, i32* @EIO, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %8, align 4
  br label %234

197:                                              ; preds = %179
  %198 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %199 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %198, i32 0, i32 7
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* @interrupt_mode, align 4
  %204 = call i32 @max(i64 %202, i32 %203)
  %205 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %206 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %205, i32 0, i32 8
  store i32 %204, i32* %206, align 8
  %207 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %208 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %207, i32 0, i32 7
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @interrupt_mode, align 4
  %213 = call i32 @min(i64 %211, i32 %212)
  %214 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %215 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 8
  %216 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %217 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %220 = call i8* @pci_name(%struct.pci_dev* %219)
  %221 = call i32 @snprintf(i32 %218, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %220)
  %222 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %223 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @create_singlethread_workqueue(i32 %224)
  %226 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %227 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  %228 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %229 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %197
  br label %234

233:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %238

234:                                              ; preds = %232, %194, %158
  %235 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %236 = call i32 @efx_fini_struct(%struct.efx_nic* %235)
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %234, %233
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @efx_alloc_channel(%struct.efx_nic*, i32, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i32) #1

declare dso_local i32 @efx_fini_struct(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
