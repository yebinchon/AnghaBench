; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_check_hw_pulse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_dfs.c_mt76x02_dfs_check_hw_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mt76x02_dfs_hw_pulse = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, %struct.mt76x02_dfs_hw_pulse*)* @mt76x02_dfs_check_hw_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_dfs_check_hw_pulse(%struct.mt76x02_dev* %0, %struct.mt76x02_dfs_hw_pulse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76x02_dfs_hw_pulse*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76x02_dfs_hw_pulse* %1, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %322

17:                                               ; preds = %11
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %319 [
    i32 130, label %22
    i32 131, label %107
    i32 129, label %136
    i32 128, label %318
  ]

22:                                               ; preds = %17
  %23 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %24 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %320

28:                                               ; preds = %22
  %29 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %30 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %35 = call i32 @mt76x02_dfs_check_chirp(%struct.mt76x02_dev* %34)
  store i32 %35, i32* %6, align 4
  br label %320

36:                                               ; preds = %28
  %37 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %38 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 120
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %43 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 2900
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %48 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 4700
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %53 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 6400
  br i1 %55, label %56, label %71

56:                                               ; preds = %51, %46
  %57 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %58 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 6800
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %63 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 10200
  br i1 %65, label %66, label %71

66:                                               ; preds = %61, %56
  %67 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %68 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 61600
  br label %71

71:                                               ; preds = %66, %61, %51, %41
  %72 = phi i1 [ false, %61 ], [ false, %51 ], [ false, %41 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %106

74:                                               ; preds = %36
  %75 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %76 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 130
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %81 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 2900
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %86 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %87, 61600
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi i1 [ false, %79 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %6, align 4
  br label %105

92:                                               ; preds = %74
  %93 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %94 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sge i32 %95, 3500
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %99 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sle i32 %100, 10100
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i1 [ false, %92 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %89
  br label %106

106:                                              ; preds = %105, %71
  br label %320

107:                                              ; preds = %17
  %108 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %109 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 3
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %320

113:                                              ; preds = %107
  %114 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %115 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 4900
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %120 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sle i32 %121, 10200
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %125 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %126, 12400
  br i1 %127, label %128, label %133

128:                                              ; preds = %123, %118
  %129 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %130 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sle i32 %131, 100100
  br label %133

133:                                              ; preds = %128, %123, %113
  %134 = phi i1 [ false, %123 ], [ false, %113 ], [ %132, %128 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %6, align 4
  br label %320

136:                                              ; preds = %17
  %137 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %138 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %143, 5250
  br i1 %144, label %145, label %183

145:                                              ; preds = %136
  %146 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %147 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sle i32 %152, 5350
  br i1 %153, label %154, label %183

154:                                              ; preds = %145
  %155 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %156 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sle i32 %157, 130
  br i1 %158, label %159, label %182

159:                                              ; preds = %154
  %160 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %161 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sge i32 %162, 28360
  br i1 %163, label %164, label %179

164:                                              ; preds = %159
  %165 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %166 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp sle i32 %167, 28700
  br i1 %168, label %174, label %169

169:                                              ; preds = %164
  %170 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %171 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp sge i32 %172, 76900
  br i1 %173, label %174, label %179

174:                                              ; preds = %169, %164
  %175 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %176 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp sle i32 %177, 76940
  br label %179

179:                                              ; preds = %174, %169, %159
  %180 = phi i1 [ false, %169 ], [ false, %159 ], [ %178, %174 ]
  %181 = zext i1 %180 to i32
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %179, %154
  br label %320

183:                                              ; preds = %145, %136
  %184 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %185 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %186, 3
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %320

189:                                              ; preds = %183
  %190 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %191 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %196 = call i32 @mt76x02_dfs_check_chirp(%struct.mt76x02_dev* %195)
  store i32 %196, i32* %6, align 4
  br label %320

197:                                              ; preds = %189
  %198 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %199 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %200, 120
  br i1 %201, label %202, label %255

202:                                              ; preds = %197
  %203 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %204 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp sge i32 %205, 2900
  br i1 %206, label %207, label %252

207:                                              ; preds = %202
  %208 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %209 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp sle i32 %210, 4700
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %214 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp sge i32 %215, 6400
  br i1 %216, label %217, label %252

217:                                              ; preds = %212, %207
  %218 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %219 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = icmp sle i32 %220, 6800
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %224 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp sge i32 %225, 27560
  br i1 %226, label %227, label %252

227:                                              ; preds = %222, %217
  %228 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %229 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp sle i32 %230, 27960
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %234 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp sge i32 %235, 28360
  br i1 %236, label %237, label %252

237:                                              ; preds = %232, %227
  %238 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %239 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp sle i32 %240, 28700
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %244 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp sge i32 %245, 79900
  br i1 %246, label %247, label %252

247:                                              ; preds = %242, %237
  %248 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %249 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp sle i32 %250, 80100
  br label %252

252:                                              ; preds = %247, %242, %232, %222, %212, %202
  %253 = phi i1 [ false, %242 ], [ false, %232 ], [ false, %222 ], [ false, %212 ], [ false, %202 ], [ %251, %247 ]
  %254 = zext i1 %253 to i32
  store i32 %254, i32* %6, align 4
  br label %317

255:                                              ; preds = %197
  %256 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %257 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %258, 130
  br i1 %259, label %260, label %303

260:                                              ; preds = %255
  %261 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %262 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp sge i32 %263, 2900
  br i1 %264, label %265, label %300

265:                                              ; preds = %260
  %266 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %267 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = icmp sle i32 %268, 10100
  br i1 %269, label %275, label %270

270:                                              ; preds = %265
  %271 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %272 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp sge i32 %273, 27560
  br i1 %274, label %275, label %300

275:                                              ; preds = %270, %265
  %276 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %277 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp sle i32 %278, 27960
  br i1 %279, label %285, label %280

280:                                              ; preds = %275
  %281 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %282 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp sge i32 %283, 28360
  br i1 %284, label %285, label %300

285:                                              ; preds = %280, %275
  %286 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %287 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp sle i32 %288, 28700
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %292 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp sge i32 %293, 79900
  br i1 %294, label %295, label %300

295:                                              ; preds = %290, %285
  %296 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %297 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp sle i32 %298, 80100
  br label %300

300:                                              ; preds = %295, %290, %280, %270, %260
  %301 = phi i1 [ false, %290 ], [ false, %280 ], [ false, %270 ], [ false, %260 ], [ %299, %295 ]
  %302 = zext i1 %301 to i32
  store i32 %302, i32* %6, align 4
  br label %316

303:                                              ; preds = %255
  %304 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %305 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp sge i32 %306, 3900
  br i1 %307, label %308, label %313

308:                                              ; preds = %303
  %309 = load %struct.mt76x02_dfs_hw_pulse*, %struct.mt76x02_dfs_hw_pulse** %5, align 8
  %310 = getelementptr inbounds %struct.mt76x02_dfs_hw_pulse, %struct.mt76x02_dfs_hw_pulse* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp sle i32 %311, 10100
  br label %313

313:                                              ; preds = %308, %303
  %314 = phi i1 [ false, %303 ], [ %312, %308 ]
  %315 = zext i1 %314 to i32
  store i32 %315, i32* %6, align 4
  br label %316

316:                                              ; preds = %313, %300
  br label %317

317:                                              ; preds = %316, %252
  br label %320

318:                                              ; preds = %17
  br label %319

319:                                              ; preds = %17, %318
  store i32 0, i32* %3, align 4
  br label %322

320:                                              ; preds = %317, %194, %188, %182, %133, %112, %106, %33, %27
  %321 = load i32, i32* %6, align 4
  store i32 %321, i32* %3, align 4
  br label %322

322:                                              ; preds = %320, %319, %16
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local i32 @mt76x02_dfs_check_chirp(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
