; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_sub_crqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_sub_crqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i32, i32, %struct.ibmvnic_sub_crq_queue**, i32, %struct.ibmvnic_sub_crq_queue**, i32, i32, %struct.TYPE_2__* }
%struct.ibmvnic_sub_crq_queue = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't allocate all sub-crqs\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Fatal: Couldn't init  min number of sub-crqs\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Reducing number of queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @init_sub_crqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sub_crqs(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ibmvnic_sub_crq_queue**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 9
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kcalloc(i32 %21, i32 8, i32 %22)
  %24 = bitcast i8* %23 to %struct.ibmvnic_sub_crq_queue**
  store %struct.ibmvnic_sub_crq_queue** %24, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %25 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %26 = icmp ne %struct.ibmvnic_sub_crq_queue** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %253

28:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %35 = call %struct.ibmvnic_sub_crq_queue* @init_sub_crq_queue(%struct.ibmvnic_adapter* %34)
  %36 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %36, i64 %38
  store %struct.ibmvnic_sub_crq_queue* %35, %struct.ibmvnic_sub_crq_queue** %39, align 8
  %40 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %40, i64 %42
  %44 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %43, align 8
  %45 = icmp ne %struct.ibmvnic_sub_crq_queue* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_warn(%struct.device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %55

49:                                               ; preds = %33
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %29

55:                                               ; preds = %46, %29
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %59, %62
  %64 = icmp slt i32 %56, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %234

68:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %119, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %122

77:                                               ; preds = %69
  %78 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @netdev_dbg(i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* %9, align 4
  %83 = srem i32 %82, 3
  switch i32 %83, label %118 [
    i32 0, label %84
    i32 1, label %101
  ]

84:                                               ; preds = %77
  %85 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  br label %100

97:                                               ; preds = %84
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %92
  br label %118

101:                                              ; preds = %77
  %102 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 8
  br label %117

114:                                              ; preds = %101
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %114, %109
  br label %118

118:                                              ; preds = %77, %117, %100
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %69

122:                                              ; preds = %69
  %123 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @kcalloc(i32 %125, i32 8, i32 %126)
  %128 = bitcast i8* %127 to %struct.ibmvnic_sub_crq_queue**
  %129 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %129, i32 0, i32 4
  store %struct.ibmvnic_sub_crq_queue** %128, %struct.ibmvnic_sub_crq_queue*** %130, align 8
  %131 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %132 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %131, i32 0, i32 4
  %133 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %132, align 8
  %134 = icmp ne %struct.ibmvnic_sub_crq_queue** %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %122
  br label %234

136:                                              ; preds = %122
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %168, %136
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %140 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %137
  %144 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %144, i64 %146
  %148 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %147, align 8
  %149 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %149, i32 0, i32 4
  %151 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %151, i64 %153
  store %struct.ibmvnic_sub_crq_queue* %148, %struct.ibmvnic_sub_crq_queue** %154, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %156, i32 0, i32 4
  %158 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %158, i64 %160
  %162 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %161, align 8
  %163 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %162, i32 0, i32 0
  store i32 %155, i32* %163, align 4
  %164 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %165 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %143
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %137

171:                                              ; preds = %137
  %172 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i8* @kcalloc(i32 %174, i32 8, i32 %175)
  %177 = bitcast i8* %176 to %struct.ibmvnic_sub_crq_queue**
  %178 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %178, i32 0, i32 6
  store %struct.ibmvnic_sub_crq_queue** %177, %struct.ibmvnic_sub_crq_queue*** %179, align 8
  %180 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %181 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %180, i32 0, i32 6
  %182 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %181, align 8
  %183 = icmp ne %struct.ibmvnic_sub_crq_queue** %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %171
  br label %227

185:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %186

186:                                              ; preds = %221, %185
  %187 = load i32, i32* %9, align 4
  %188 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %189 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %224

192:                                              ; preds = %186
  %193 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %193, i64 %199
  %201 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %200, align 8
  %202 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %203 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %202, i32 0, i32 6
  %204 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %204, i64 %206
  store %struct.ibmvnic_sub_crq_queue* %201, %struct.ibmvnic_sub_crq_queue** %207, align 8
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %210 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %209, i32 0, i32 6
  %211 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %211, i64 %213
  %215 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %214, align 8
  %216 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %215, i32 0, i32 1
  store i32 %208, i32* %216, align 4
  %217 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %218 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %192
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %186

224:                                              ; preds = %186
  %225 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %226 = call i32 @kfree(%struct.ibmvnic_sub_crq_queue** %225)
  store i32 0, i32* %2, align 4
  br label %253

227:                                              ; preds = %184
  %228 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %229 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %228, i32 0, i32 4
  %230 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %229, align 8
  %231 = call i32 @kfree(%struct.ibmvnic_sub_crq_queue** %230)
  %232 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %233 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %232, i32 0, i32 4
  store %struct.ibmvnic_sub_crq_queue** null, %struct.ibmvnic_sub_crq_queue*** %233, align 8
  br label %234

234:                                              ; preds = %227, %135, %65
  store i32 0, i32* %9, align 4
  br label %235

235:                                              ; preds = %247, %234
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %235
  %240 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %241 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %241, i64 %243
  %245 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %244, align 8
  %246 = call i32 @release_sub_crq_queue(%struct.ibmvnic_adapter* %240, %struct.ibmvnic_sub_crq_queue* %245, i32 1)
  br label %247

247:                                              ; preds = %239
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4
  br label %235

250:                                              ; preds = %235
  %251 = load %struct.ibmvnic_sub_crq_queue**, %struct.ibmvnic_sub_crq_queue*** %5, align 8
  %252 = call i32 @kfree(%struct.ibmvnic_sub_crq_queue** %251)
  store i32 -1, i32* %2, align 4
  br label %253

253:                                              ; preds = %250, %224, %27
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.ibmvnic_sub_crq_queue* @init_sub_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @kfree(%struct.ibmvnic_sub_crq_queue**) #1

declare dso_local i32 @release_sub_crq_queue(%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
