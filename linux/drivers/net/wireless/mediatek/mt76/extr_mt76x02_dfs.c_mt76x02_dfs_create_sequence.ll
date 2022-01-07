; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_create_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_create_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__, %struct.mt76x02_dfs_pattern_detector }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_dfs_pattern_detector = type { i32, %struct.mt76x02_dfs_sw_detector_params, %struct.mt76x02_dfs_event_rb* }
%struct.mt76x02_dfs_sw_detector_params = type { i32, i32, i32 }
%struct.mt76x02_dfs_event_rb = type { i32, i32, %struct.mt76x02_dfs_event* }
%struct.mt76x02_dfs_event = type { i32, i32, i32 }
%struct.mt76x02_dfs_sequence = type { i32, i32, i32, i32, i32, i32 }

@MT_DFS_EVENT_BUFLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, %struct.mt76x02_dfs_event*, i32)* @mt76x02_dfs_create_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_dfs_create_sequence(%struct.mt76x02_dev* %0, %struct.mt76x02_dfs_event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca %struct.mt76x02_dfs_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt76x02_dfs_pattern_detector*, align 8
  %9 = alloca %struct.mt76x02_dfs_sw_detector_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mt76x02_dfs_sequence, align 4
  %15 = alloca %struct.mt76x02_dfs_sequence*, align 8
  %16 = alloca %struct.mt76x02_dfs_event_rb*, align 8
  %17 = alloca %struct.mt76x02_dfs_event*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %5, align 8
  store %struct.mt76x02_dfs_event* %1, %struct.mt76x02_dfs_event** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %22, i32 0, i32 1
  store %struct.mt76x02_dfs_pattern_detector* %23, %struct.mt76x02_dfs_pattern_detector** %8, align 8
  %24 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %25 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %8, align 8
  %30 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %29, i32 0, i32 2
  %31 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %30, align 8
  %32 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %31, i64 1
  br label %38

33:                                               ; preds = %3
  %34 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %8, align 8
  %35 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %34, i32 0, i32 2
  %36 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %35, align 8
  %37 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %36, i64 0
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi %struct.mt76x02_dfs_event_rb* [ %32, %28 ], [ %37, %33 ]
  store %struct.mt76x02_dfs_event_rb* %39, %struct.mt76x02_dfs_event_rb** %16, align 8
  %40 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %16, align 8
  %41 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %44 = call i32 @mt76_decr(i32 %42, i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %16, align 8
  %46 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %49 = call i32 @mt76_decr(i32 %47, i32 %48)
  store i32 %49, i32* %20, align 4
  br label %50

50:                                               ; preds = %223, %38
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %227

54:                                               ; preds = %50
  %55 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %16, align 8
  %56 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %55, i32 0, i32 2
  %57 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %56, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %57, i64 %59
  store %struct.mt76x02_dfs_event* %60, %struct.mt76x02_dfs_event** %17, align 8
  %61 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %62 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %17, align 8
  %65 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %8, align 8
  %69 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %68, i32 0, i32 1
  store %struct.mt76x02_dfs_sw_detector_params* %69, %struct.mt76x02_dfs_sw_detector_params** %9, align 8
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %71 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %98 [
    i32 130, label %74
    i32 129, label %74
    i32 131, label %82
    i32 128, label %97
  ]

74:                                               ; preds = %54, %54
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %75, 600
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 8, i32* %10, align 4
  br label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = ashr i32 %79, 3
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %77
  br label %101

82:                                               ; preds = %54
  %83 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %84 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = ashr i32 %88, 6
  store i32 %89, i32* %10, align 4
  br label %96

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 620
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 24, i32* %10, align 4
  br label %95

94:                                               ; preds = %90
  store i32 8, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %95, %87
  br label %101

97:                                               ; preds = %54
  br label %98

98:                                               ; preds = %54, %97
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %228

101:                                              ; preds = %96, %81
  %102 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %103 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %17, align 8
  %106 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %21, align 4
  %109 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %110 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %17, align 8
  %113 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  %116 = call i32 @abs(i32 %115) #4
  %117 = load i32, i32* %10, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %101
  %120 = load i32, i32* %21, align 4
  %121 = load %struct.mt76x02_dfs_sw_detector_params*, %struct.mt76x02_dfs_sw_detector_params** %9, align 8
  %122 = getelementptr inbounds %struct.mt76x02_dfs_sw_detector_params, %struct.mt76x02_dfs_sw_detector_params* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119, %101
  br label %223

126:                                              ; preds = %119
  %127 = load i32, i32* %21, align 4
  %128 = load %struct.mt76x02_dfs_sw_detector_params*, %struct.mt76x02_dfs_sw_detector_params** %9, align 8
  %129 = getelementptr inbounds %struct.mt76x02_dfs_sw_detector_params, %struct.mt76x02_dfs_sw_detector_params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %227

133:                                              ; preds = %126
  %134 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %135 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %17, align 8
  %138 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %136, %139
  %141 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %17, align 8
  %143 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %147 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 2
  store i32 %148, i32* %149, align 4
  %150 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %151 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 3
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 4
  store i32 2, i32* %154, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %157 = call i32 @mt76_decr(i32 %155, i32 %156)
  store i32 %157, i32* %19, align 4
  br label %158

158:                                              ; preds = %193, %133
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %197

162:                                              ; preds = %158
  %163 = load %struct.mt76x02_dfs_event_rb*, %struct.mt76x02_dfs_event_rb** %16, align 8
  %164 = getelementptr inbounds %struct.mt76x02_dfs_event_rb, %struct.mt76x02_dfs_event_rb* %163, i32 0, i32 2
  %165 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %165, i64 %167
  store %struct.mt76x02_dfs_event* %168, %struct.mt76x02_dfs_event** %17, align 8
  %169 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %6, align 8
  %170 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %17, align 8
  %173 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.mt76x02_dfs_sw_detector_params*, %struct.mt76x02_dfs_sw_detector_params** %9, align 8
  %180 = getelementptr inbounds %struct.mt76x02_dfs_sw_detector_params, %struct.mt76x02_dfs_sw_detector_params* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @mt76x02_dfs_get_multiple(i32 %176, i32 %178, i32 %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %162
  %186 = load %struct.mt76x02_dfs_event*, %struct.mt76x02_dfs_event** %17, align 8
  %187 = getelementptr inbounds %struct.mt76x02_dfs_event, %struct.mt76x02_dfs_event* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 1
  store i32 %188, i32* %189, align 4
  %190 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %185, %162
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %196 = call i32 @mt76_decr(i32 %194, i32 %195)
  store i32 %196, i32* %19, align 4
  br label %158

197:                                              ; preds = %158
  %198 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %14, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp sle i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %223

203:                                              ; preds = %197
  %204 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %205 = call %struct.mt76x02_dfs_sequence* @mt76x02_dfs_seq_pool_get(%struct.mt76x02_dev* %204)
  store %struct.mt76x02_dfs_sequence* %205, %struct.mt76x02_dfs_sequence** %15, align 8
  %206 = load %struct.mt76x02_dfs_sequence*, %struct.mt76x02_dfs_sequence** %15, align 8
  %207 = icmp ne %struct.mt76x02_dfs_sequence* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %228

211:                                              ; preds = %203
  %212 = load %struct.mt76x02_dfs_sequence*, %struct.mt76x02_dfs_sequence** %15, align 8
  %213 = bitcast %struct.mt76x02_dfs_sequence* %212 to i8*
  %214 = bitcast %struct.mt76x02_dfs_sequence* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %213, i8* align 4 %214, i64 24, i1 false)
  %215 = load %struct.mt76x02_dfs_sequence*, %struct.mt76x02_dfs_sequence** %15, align 8
  %216 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %215, i32 0, i32 5
  %217 = call i32 @INIT_LIST_HEAD(i32* %216)
  %218 = load %struct.mt76x02_dfs_sequence*, %struct.mt76x02_dfs_sequence** %15, align 8
  %219 = getelementptr inbounds %struct.mt76x02_dfs_sequence, %struct.mt76x02_dfs_sequence* %218, i32 0, i32 5
  %220 = load %struct.mt76x02_dfs_pattern_detector*, %struct.mt76x02_dfs_pattern_detector** %8, align 8
  %221 = getelementptr inbounds %struct.mt76x02_dfs_pattern_detector, %struct.mt76x02_dfs_pattern_detector* %220, i32 0, i32 0
  %222 = call i32 @list_add(i32* %219, i32* %221)
  br label %223

223:                                              ; preds = %211, %202, %125
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* @MT_DFS_EVENT_BUFLEN, align 4
  %226 = call i32 @mt76_decr(i32 %224, i32 %225)
  store i32 %226, i32* %18, align 4
  br label %50

227:                                              ; preds = %132, %50
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %227, %208, %98
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @mt76_decr(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @mt76x02_dfs_get_multiple(i32, i32, i32) #1

declare dso_local %struct.mt76x02_dfs_sequence* @mt76x02_dfs_seq_pool_get(%struct.mt76x02_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
