; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.qed_ll2_params = type { i32, i64 }
%struct.qed_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.qed_ll2_buffer = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid Ethernet address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@QED_LL2_RX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Allocating %d LL2 buffers of size %08x bytes\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to allocate LL2 buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to start LL2\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to start LL2 on engine 0\0A\00", align 1
@QED_MSG_STORAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Starting OOO LL2 queue\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to start OOO LL2\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to add an LLH filter\0A\00", align 1
@QED_LL2_UNUSED_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_ll2_params*)* @qed_ll2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_start(%struct.qed_dev* %0, %struct.qed_ll2_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_ll2_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ll2_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_ll2_params* %1, %struct.qed_ll2_params** %5, align 8
  %12 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %13 = bitcast %struct.qed_dev* %12 to %struct.qed_hwfn*
  %14 = call i32 @qed_ll2_is_storage_eng1(%struct.qed_hwfn* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %16 = bitcast %struct.qed_dev* %15 to %struct.qed_hwfn*
  %17 = call %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_hwfn* %16)
  store %struct.qed_hwfn* %17, %struct.qed_hwfn** %7, align 8
  %18 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %19 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @is_valid_ether_addr(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %25 = bitcast %struct.qed_dev* %24 to %struct.qed_hwfn*
  %26 = call i32 @DP_NOTICE(%struct.qed_hwfn* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %214

29:                                               ; preds = %2
  %30 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %31 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %40 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %45 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load i64, i64* @NET_SKB_PAD, align 8
  %50 = load i64, i64* @ETH_HLEN, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* @L1_CACHE_BYTES, align 8
  %53 = add nsw i64 %51, %52
  %54 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %55 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %59 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i64 %57, i64* %61, align 8
  %62 = load i32, i32* @QED_LL2_RX_SIZE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 2, i32 1
  %67 = mul nsw i32 %62, %66
  store i32 %67, i32* %9, align 4
  %68 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %69 = bitcast %struct.qed_dev* %68 to %struct.qed_hwfn*
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %72 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_INFO(%struct.qed_hwfn* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %70, i64 %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %114, %29
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %77
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.qed_ll2_buffer* @kzalloc(i32 12, i32 %82)
  store %struct.qed_ll2_buffer* %83, %struct.qed_ll2_buffer** %8, align 8
  %84 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %8, align 8
  %85 = icmp ne %struct.qed_ll2_buffer* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %88 = bitcast %struct.qed_dev* %87 to %struct.qed_hwfn*
  %89 = call i32 (%struct.qed_hwfn*, i8*, ...) @DP_INFO(%struct.qed_hwfn* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %204

92:                                               ; preds = %81
  %93 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %94 = bitcast %struct.qed_dev* %93 to %struct.qed_hwfn*
  %95 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %8, align 8
  %96 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %95, i32 0, i32 2
  %97 = bitcast i32* %96 to i32**
  %98 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %8, align 8
  %99 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %98, i32 0, i32 1
  %100 = call i32 @qed_ll2_alloc_buffer(%struct.qed_hwfn* %94, i32** %97, i32* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %8, align 8
  %105 = call i32 @kfree(%struct.qed_ll2_buffer* %104)
  br label %204

106:                                              ; preds = %92
  %107 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %8, align 8
  %108 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %107, i32 0, i32 0
  %109 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %110 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = call i32 @list_add_tail(i32* %108, i32* %112)
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %77

117:                                              ; preds = %77
  %118 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %119 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %120 = call i32 @__qed_ll2_start(%struct.qed_hwfn* %118, %struct.qed_ll2_params* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %125 = bitcast %struct.qed_dev* %124 to %struct.qed_hwfn*
  %126 = call i32 @DP_NOTICE(%struct.qed_hwfn* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %204

127:                                              ; preds = %117
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %132 = bitcast %struct.qed_dev* %131 to %struct.qed_hwfn*
  %133 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_hwfn* %132)
  %134 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %135 = call i32 @__qed_ll2_start(%struct.qed_hwfn* %133, %struct.qed_ll2_params* %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %140 = bitcast %struct.qed_dev* %139 to %struct.qed_hwfn*
  %141 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_hwfn* %140)
  %142 = call i32 @DP_NOTICE(%struct.qed_hwfn* %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %201

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %127
  %145 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %146 = call i64 @QED_IS_ISCSI_PERSONALITY(%struct.qed_hwfn* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %150 = bitcast %struct.qed_dev* %149 to %struct.qed_hwfn*
  %151 = load i32, i32* @QED_MSG_STORAGE, align 4
  %152 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %150, i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %153 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %154 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %155 = call i32 @qed_ll2_start_ooo(%struct.qed_hwfn* %153, %struct.qed_ll2_params* %154)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %148
  %159 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %160 = bitcast %struct.qed_dev* %159 to %struct.qed_hwfn*
  %161 = call i32 @DP_NOTICE(%struct.qed_hwfn* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %192

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162, %144
  %164 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %165 = bitcast %struct.qed_dev* %164 to %struct.qed_hwfn*
  %166 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %167 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @qed_llh_add_mac_filter(%struct.qed_hwfn* %165, i32 0, i32 %168)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %163
  %173 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %174 = bitcast %struct.qed_dev* %173 to %struct.qed_hwfn*
  %175 = call i32 @DP_NOTICE(%struct.qed_hwfn* %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %184

176:                                              ; preds = %163
  %177 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %178 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %5, align 8
  %181 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @ether_addr_copy(i32 %179, i32 %182)
  store i32 0, i32* %3, align 4
  br label %214

184:                                              ; preds = %172
  %185 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %186 = call i64 @QED_IS_ISCSI_PERSONALITY(%struct.qed_hwfn* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %190 = call i32 @qed_ll2_stop_ooo(%struct.qed_hwfn* %189)
  br label %191

191:                                              ; preds = %188, %184
  br label %192

192:                                              ; preds = %191, %158
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %197 = bitcast %struct.qed_dev* %196 to %struct.qed_hwfn*
  %198 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_hwfn* %197)
  %199 = call i32 @__qed_ll2_stop(%struct.qed_hwfn* %198)
  br label %200

200:                                              ; preds = %195, %192
  br label %201

201:                                              ; preds = %200, %138
  %202 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %203 = call i32 @__qed_ll2_stop(%struct.qed_hwfn* %202)
  br label %204

204:                                              ; preds = %201, %123, %103, %86
  %205 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %206 = bitcast %struct.qed_dev* %205 to %struct.qed_hwfn*
  %207 = call i32 @qed_ll2_kill_buffers(%struct.qed_hwfn* %206)
  %208 = load i32, i32* @QED_LL2_UNUSED_HANDLE, align 4
  %209 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %210 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i32 %208, i32* %212, align 8
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %204, %176, %23
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @qed_ll2_is_storage_eng1(%struct.qed_hwfn*) #1

declare dso_local %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_hwfn*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*, ...) #1

declare dso_local %struct.qed_ll2_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @qed_ll2_alloc_buffer(%struct.qed_hwfn*, i32**, i32*) #1

declare dso_local i32 @kfree(%struct.qed_ll2_buffer*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @__qed_ll2_start(%struct.qed_hwfn*, %struct.qed_ll2_params*) #1

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_hwfn*) #1

declare dso_local i64 @QED_IS_ISCSI_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @qed_ll2_start_ooo(%struct.qed_hwfn*, %struct.qed_ll2_params*) #1

declare dso_local i32 @qed_llh_add_mac_filter(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @qed_ll2_stop_ooo(%struct.qed_hwfn*) #1

declare dso_local i32 @__qed_ll2_stop(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_ll2_kill_buffers(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
