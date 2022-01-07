; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32, %struct.qlcnic_vf_info*, %struct.qlcnic_vport*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, %struct.qlcnic_adapter*, %struct.qlcnic_back_channel }
%struct.qlcnic_vport = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qlcnic_back_channel = type { %struct.workqueue_struct*, %struct.workqueue_struct*, %struct.qlcnic_adapter*, i32, i32, i32 }
%struct.workqueue_struct = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.qlcnic_sriov = type { i32, %struct.qlcnic_sriov*, %struct.qlcnic_vport*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, %struct.qlcnic_adapter*, %struct.qlcnic_back_channel }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"bc-trans\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot create bc-trans workqueue\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Cannot create async workqueue\0A\00", align 1
@qlcnic_sriov_handle_async_issue_cmd = common dso_local global i32 0, align 4
@qlcnic_sriov_process_bc_cmd = common dso_local global i32 0, align 4
@QLC_GUEST_VLAN_MODE = common dso_local global i32 0, align 4
@MAX_BW = common dso_local global i32 0, align 4
@MIN_BW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"MAC Address %pM is configured for VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_sriov_init(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_sriov*, align 8
  %7 = alloca %struct.qlcnic_back_channel*, align 8
  %8 = alloca %struct.workqueue_struct*, align 8
  %9 = alloca %struct.qlcnic_vport*, align 8
  %10 = alloca %struct.qlcnic_vf_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %14 = call i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %220

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 112, i32 %20)
  %22 = bitcast i8* %21 to %struct.qlcnic_sriov*
  store %struct.qlcnic_sriov* %22, %struct.qlcnic_sriov** %6, align 8
  %23 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %24 = icmp ne %struct.qlcnic_sriov* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %220

28:                                               ; preds = %19
  %29 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %30 = bitcast %struct.qlcnic_sriov* %29 to %struct.qlcnic_vf_info*
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.qlcnic_vf_info* %30, %struct.qlcnic_vf_info** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %38, i32 0, i32 11
  store %struct.qlcnic_back_channel* %39, %struct.qlcnic_back_channel** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.qlcnic_vf_info* @kcalloc(i32 %40, i32 112, i32 %41)
  %43 = bitcast %struct.qlcnic_vf_info* %42 to %struct.qlcnic_sriov*
  %44 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %44, i32 0, i32 1
  store %struct.qlcnic_sriov* %43, %struct.qlcnic_sriov** %45, align 8
  %46 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %47 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %46, i32 0, i32 1
  %48 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %47, align 8
  %49 = icmp ne %struct.qlcnic_sriov* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %28
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %212

53:                                               ; preds = %28
  %54 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.workqueue_struct* %54, %struct.workqueue_struct** %8, align 8
  %55 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %56 = icmp eq %struct.workqueue_struct* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %206

65:                                               ; preds = %53
  %66 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %67 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %68 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %67, i32 0, i32 0
  store %struct.workqueue_struct* %66, %struct.workqueue_struct** %68, align 8
  %69 = call %struct.workqueue_struct* @create_singlethread_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.workqueue_struct* %69, %struct.workqueue_struct** %8, align 8
  %70 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %71 = icmp eq %struct.workqueue_struct* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %201

80:                                               ; preds = %65
  %81 = load %struct.workqueue_struct*, %struct.workqueue_struct** %8, align 8
  %82 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %83 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %82, i32 0, i32 1
  store %struct.workqueue_struct* %81, %struct.workqueue_struct** %83, align 8
  %84 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %85 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %84, i32 0, i32 5
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %88 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %87, i32 0, i32 4
  %89 = load i32, i32* @qlcnic_sriov_handle_async_issue_cmd, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %92 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %91, i32 0, i32 3
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %95 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %96 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %95, i32 0, i32 2
  store %struct.qlcnic_adapter* %94, %struct.qlcnic_adapter** %96, align 8
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %192, %80
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %195

101:                                              ; preds = %97
  %102 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %103 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %102, i32 0, i32 1
  %104 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %104, i64 %106
  %108 = bitcast %struct.qlcnic_sriov* %107 to %struct.qlcnic_vf_info*
  store %struct.qlcnic_vf_info* %108, %struct.qlcnic_vf_info** %10, align 8
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %110 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %111 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %110, i32 0, i32 10
  store %struct.qlcnic_adapter* %109, %struct.qlcnic_adapter** %111, align 8
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @qlcnic_sriov_virtid_fn(%struct.qlcnic_adapter* %112, i32 %113)
  %115 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %116 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 8
  %117 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %118 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %117, i32 0, i32 8
  %119 = call i32 @mutex_init(i32* %118)
  %120 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %121 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %120, i32 0, i32 7
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %124 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = call i32 @INIT_LIST_HEAD(i32* %125)
  %127 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %128 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = call i32 @INIT_LIST_HEAD(i32* %129)
  %131 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %132 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = call i32 @spin_lock_init(i32* %133)
  %135 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %136 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = call i32 @spin_lock_init(i32* %137)
  %139 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %140 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %139, i32 0, i32 4
  %141 = call i32 @init_completion(i32* %140)
  %142 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %10, align 8
  %143 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %142, i32 0, i32 3
  %144 = load i32, i32* @qlcnic_sriov_process_bc_cmd, align 4
  %145 = call i32 @INIT_WORK(i32* %143, i32 %144)
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %147 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %191

149:                                              ; preds = %101
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i8* @kzalloc(i32 20, i32 %150)
  %152 = bitcast i8* %151 to %struct.qlcnic_vport*
  store %struct.qlcnic_vport* %152, %struct.qlcnic_vport** %9, align 8
  %153 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %154 = icmp ne %struct.qlcnic_vport* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %11, align 4
  br label %196

158:                                              ; preds = %149
  %159 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %160 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %161 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %160, i32 0, i32 1
  %162 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %162, i64 %164
  %166 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %165, i32 0, i32 2
  store %struct.qlcnic_vport* %159, %struct.qlcnic_vport** %166, align 8
  %167 = load i32, i32* @QLC_GUEST_VLAN_MODE, align 4
  %168 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %169 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @MAX_BW, align 4
  %171 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %172 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @MIN_BW, align 4
  %174 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %175 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %177 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %176, i32 0, i32 0
  store i32 0, i32* %177, align 4
  %178 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %179 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @eth_random_addr(i32 %180)
  %182 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %183 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %182, i32 0, i32 1
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %9, align 8
  %187 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @dev_info(i32* %185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %158, %101
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %97

195:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %220

196:                                              ; preds = %155
  %197 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %198 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %197, i32 0, i32 1
  %199 = load %struct.workqueue_struct*, %struct.workqueue_struct** %198, align 8
  %200 = call i32 @destroy_workqueue(%struct.workqueue_struct* %199)
  br label %201

201:                                              ; preds = %196, %72
  %202 = load %struct.qlcnic_back_channel*, %struct.qlcnic_back_channel** %7, align 8
  %203 = getelementptr inbounds %struct.qlcnic_back_channel, %struct.qlcnic_back_channel* %202, i32 0, i32 0
  %204 = load %struct.workqueue_struct*, %struct.workqueue_struct** %203, align 8
  %205 = call i32 @destroy_workqueue(%struct.workqueue_struct* %204)
  br label %206

206:                                              ; preds = %201, %57
  %207 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %6, align 8
  %208 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %207, i32 0, i32 1
  %209 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %208, align 8
  %210 = bitcast %struct.qlcnic_sriov* %209 to %struct.qlcnic_vf_info*
  %211 = call i32 @kfree(%struct.qlcnic_vf_info* %210)
  br label %212

212:                                              ; preds = %206, %50
  %213 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %214 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %216, align 8
  %218 = call i32 @kfree(%struct.qlcnic_vf_info* %217)
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %212, %195, %25, %16
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @qlcnic_sriov_enable_check(%struct.qlcnic_adapter*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.qlcnic_vf_info* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.workqueue_struct* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @qlcnic_sriov_virtid_fn(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @destroy_workqueue(%struct.workqueue_struct*) #1

declare dso_local i32 @kfree(%struct.qlcnic_vf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
