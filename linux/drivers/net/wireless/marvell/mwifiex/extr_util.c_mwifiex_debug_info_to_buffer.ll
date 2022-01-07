; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_debug_info_to_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_debug_info_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_debug_data = type { i8*, i64, i64, i64 }
%struct.mwifiex_private = type { i64 }
%struct.mwifiex_debug_info = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@items = common dso_local global %struct.mwifiex_debug_data* null, align 8
@num_of_items = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%#lx \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Tx BA stream table:\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"tid = %d, ra = %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Rx reorder table:\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"tid = %d, ta = %pM, \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"start_win = %d, \00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"win_size = %d, buffer: \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"TDLS peer table:\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"peer = %pM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_debug_info_to_buffer(%struct.mwifiex_private* %0, i8* %1, %struct.mwifiex_debug_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mwifiex_debug_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mwifiex_debug_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mwifiex_debug_info* %2, %struct.mwifiex_debug_info** %7, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %8, align 8
  %16 = load %struct.mwifiex_debug_data*, %struct.mwifiex_debug_data** @items, align 8
  %17 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %16, i64 0
  store %struct.mwifiex_debug_data* %17, %struct.mwifiex_debug_data** %9, align 8
  %18 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %19 = icmp ne %struct.mwifiex_debug_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %328

21:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %125, %21
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @num_of_items, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %128

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.mwifiex_debug_data*, %struct.mwifiex_debug_data** %9, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %28, i64 %30
  %32 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %8, align 8
  %38 = load %struct.mwifiex_debug_data*, %struct.mwifiex_debug_data** %9, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %38, i64 %40
  %42 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mwifiex_debug_data*, %struct.mwifiex_debug_data** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %44, i64 %46
  %48 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = udiv i64 %43, %49
  store i64 %50, i64* %10, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @num_of_items, align 4
  %53 = sub nsw i32 %52, 3
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %26
  %56 = load %struct.mwifiex_debug_data*, %struct.mwifiex_debug_data** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %56, i64 %58
  %60 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %63 = ptrtoint %struct.mwifiex_debug_info* %62 to i64
  %64 = add i64 %61, %63
  store i64 %64, i64* %11, align 8
  br label %76

65:                                               ; preds = %26
  %66 = load %struct.mwifiex_debug_data*, %struct.mwifiex_debug_data** %9, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %66, i64 %68
  %70 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %71, %74
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %65, %55
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %116, %76
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.mwifiex_debug_data*, %struct.mwifiex_debug_data** %9, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %80, i64 %82
  %84 = getelementptr inbounds %struct.mwifiex_debug_data, %struct.mwifiex_debug_data* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %79, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %77
  %88 = load i64, i64* %10, align 8
  switch i64 %88, label %105 [
    i64 1, label %89
    i64 2, label %93
    i64 4, label %97
    i64 8, label %101
  ]

89:                                               ; preds = %87
  %90 = load i64, i64* %11, align 8
  %91 = inttoptr i64 %90 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %12, align 8
  br label %106

93:                                               ; preds = %87
  %94 = load i64, i64* %11, align 8
  %95 = inttoptr i64 %94 to i64*
  %96 = call i64 @get_unaligned(i64* %95)
  store i64 %96, i64* %12, align 8
  br label %106

97:                                               ; preds = %87
  %98 = load i64, i64* %11, align 8
  %99 = inttoptr i64 %98 to i64*
  %100 = call i64 @get_unaligned(i64* %99)
  store i64 %100, i64* %12, align 8
  br label %106

101:                                              ; preds = %87
  %102 = load i64, i64* %11, align 8
  %103 = inttoptr i64 %102 to i64*
  %104 = call i64 @get_unaligned(i64* %103)
  store i64 %104, i64* %12, align 8
  br label %106

105:                                              ; preds = %87
  store i64 -1, i64* %12, align 8
  br label %106

106:                                              ; preds = %105, %101, %97, %93, %89
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %108)
  %110 = load i8*, i8** %8, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %8, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  br label %77

119:                                              ; preds = %77
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 (i8*, i8*, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i8*, i8** %8, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %8, align 8
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %22

128:                                              ; preds = %22
  %129 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %130 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %171

133:                                              ; preds = %128
  %134 = load i8*, i8** %8, align 8
  %135 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i8*, i8** %8, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %139

139:                                              ; preds = %167, %133
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %142 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %139
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %148 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %147, i32 0, i32 5
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %156 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %155, i32 0, i32 5
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %154, i32 %162)
  %164 = load i8*, i8** %8, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %8, align 8
  br label %167

167:                                              ; preds = %145
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %139

170:                                              ; preds = %139
  br label %171

171:                                              ; preds = %170, %128
  %172 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %173 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %281

176:                                              ; preds = %171
  %177 = load i8*, i8** %8, align 8
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i8*, i8** %8, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %179, i64 %180
  store i8* %181, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %277, %176
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %185 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %280

188:                                              ; preds = %182
  %189 = load i8*, i8** %8, align 8
  %190 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %191 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %190, i32 0, i32 4
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %199 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %198, i32 0, i32 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %189, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %197, i32 %205)
  %207 = load i8*, i8** %8, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %8, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %212 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %211, i32 0, i32 4
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %210, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %218)
  %220 = load i8*, i8** %8, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %8, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %225 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %224, i32 0, i32 4
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i8*, i8*, ...) @sprintf(i8* %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %231)
  %233 = load i8*, i8** %8, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %236

236:                                              ; preds = %268, %188
  %237 = load i32, i32* %14, align 4
  %238 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %239 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %238, i32 0, i32 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %237, %245
  br i1 %246, label %247, label %271

247:                                              ; preds = %236
  %248 = load i8*, i8** %8, align 8
  %249 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %250 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %249, i32 0, i32 4
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 49, i32 48
  %264 = call i32 (i8*, i8*, ...) @sprintf(i8* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %263)
  %265 = load i8*, i8** %8, align 8
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8* %267, i8** %8, align 8
  br label %268

268:                                              ; preds = %247
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  br label %236

271:                                              ; preds = %236
  %272 = load i8*, i8** %8, align 8
  %273 = call i32 (i8*, i8*, ...) @sprintf(i8* %272, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %274 = load i8*, i8** %8, align 8
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  store i8* %276, i8** %8, align 8
  br label %277

277:                                              ; preds = %271
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %13, align 4
  br label %182

280:                                              ; preds = %182
  br label %281

281:                                              ; preds = %280, %171
  %282 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %283 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %321

286:                                              ; preds = %281
  %287 = load i8*, i8** %8, align 8
  %288 = call i32 (i8*, i8*, ...) @sprintf(i8* %287, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %289 = load i8*, i8** %8, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, i8* %289, i64 %290
  store i8* %291, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %292

292:                                              ; preds = %317, %286
  %293 = load i32, i32* %13, align 4
  %294 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %295 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %298, label %320

298:                                              ; preds = %292
  %299 = load i8*, i8** %8, align 8
  %300 = load %struct.mwifiex_debug_info*, %struct.mwifiex_debug_info** %7, align 8
  %301 = getelementptr inbounds %struct.mwifiex_debug_info, %struct.mwifiex_debug_info* %300, i32 0, i32 3
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (i8*, i8*, ...) @sprintf(i8* %299, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %307)
  %309 = load i8*, i8** %8, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8* %311, i8** %8, align 8
  %312 = load i8*, i8** %8, align 8
  %313 = call i32 (i8*, i8*, ...) @sprintf(i8* %312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %314 = load i8*, i8** %8, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8* %316, i8** %8, align 8
  br label %317

317:                                              ; preds = %298
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %13, align 4
  br label %292

320:                                              ; preds = %292
  br label %321

321:                                              ; preds = %320, %281
  %322 = load i8*, i8** %8, align 8
  %323 = load i8*, i8** %6, align 8
  %324 = ptrtoint i8* %322 to i64
  %325 = ptrtoint i8* %323 to i64
  %326 = sub i64 %324, %325
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %4, align 4
  br label %328

328:                                              ; preds = %321, %20
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @get_unaligned(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
