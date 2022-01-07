; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_dump_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.qlcnic_dump_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.__ctrl }
%struct.__ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Timed out, aborting poll CRB\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Unknown opcode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_dump_entry*, i32*)* @qlcnic_dump_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dump_ctrl(%struct.qlcnic_adapter* %0, %struct.qlcnic_dump_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_dump_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.__ctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_dump_entry* %1, %struct.qlcnic_dump_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.qlcnic_dump_entry*, %struct.qlcnic_dump_entry** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_dump_entry, %struct.qlcnic_dump_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store %struct.__ctrl* %25, %struct.__ctrl** %9, align 8
  store i32 0, i32* %12, align 4
  %26 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %27 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %30 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %247, %3
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %250

36:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %236, %36
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %239

40:                                               ; preds = %37
  %41 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %42 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %236

49:                                               ; preds = %40
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 1, %50
  switch i32 %51, label %229 [
    i32 129, label %52
    i32 130, label %59
    i32 135, label %67
    i32 133, label %79
    i32 132, label %91
    i32 131, label %131
    i32 128, label %153
    i32 134, label %184
  ]

52:                                               ; preds = %49
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %56 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %53, i32 %54, i32 %57)
  br label %235

59:                                               ; preds = %49
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %63, i32 %64, i32 %65)
  br label %235

67:                                               ; preds = %49
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %68, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %75 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %73, %76
  %78 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %71, i32 %72, i32 %77)
  br label %235

79:                                               ; preds = %49
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %87 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %85, %88
  %90 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %83, i32 %84, i32 %89)
  br label %235

91:                                               ; preds = %49
  br label %92

92:                                               ; preds = %112, %91
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %95 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %92
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %104 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %102, %105
  %107 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %108 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %116

112:                                              ; preds = %98
  %113 = call i32 @usleep_range(i32 1000, i32 2000)
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %92

116:                                              ; preds = %111, %92
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %119 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %124 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = call i32 @dev_info(i32* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %251

130:                                              ; preds = %116
  br label %235

131:                                              ; preds = %49
  %132 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %133 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @qlcnic_get_saved_state(%struct.qlcnic_adapter* %138, i8* %139, i32 %140)
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %137, %131
  %143 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %143, i32 %144)
  store i32 %145, i32* %14, align 4
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %149 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @qlcnic_set_saved_state(%struct.qlcnic_adapter* %146, i8* %147, i32 %150, i32 %151)
  br label %235

153:                                              ; preds = %49
  %154 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %155 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @qlcnic_get_saved_state(%struct.qlcnic_adapter* %160, i8* %161, i32 %162)
  store i32 %163, i32* %14, align 4
  br label %168

164:                                              ; preds = %153
  %165 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %166 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %164, %159
  %169 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %170 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @qlcnic_get_saved_state(%struct.qlcnic_adapter* %175, i8* %176, i32 %177)
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %174, %168
  %180 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %180, i32 %181, i32 %182)
  br label %235

184:                                              ; preds = %49
  %185 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %188 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @qlcnic_get_saved_state(%struct.qlcnic_adapter* %185, i8* %186, i32 %189)
  store i32 %190, i32* %14, align 4
  %191 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %192 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %14, align 4
  %195 = shl i32 %194, %193
  store i32 %195, i32* %14, align 4
  %196 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %197 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %196, i32 0, i32 10
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = ashr i32 %199, %198
  store i32 %200, i32* %14, align 4
  %201 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %202 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %184
  %206 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %207 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %14, align 4
  %210 = and i32 %209, %208
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %205, %184
  %212 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %213 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %14, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %14, align 4
  %217 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %218 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %14, align 4
  %222 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %225 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %224, i32 0, i32 8
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @qlcnic_set_saved_state(%struct.qlcnic_adapter* %222, i8* %223, i32 %226, i32 %227)
  br label %235

229:                                              ; preds = %49
  %230 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %231 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %230, i32 0, i32 0
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = call i32 @dev_info(i32* %233, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %235

235:                                              ; preds = %229, %211, %179, %142, %130, %79, %67, %59, %52
  br label %236

236:                                              ; preds = %235, %48
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %37

239:                                              ; preds = %37
  %240 = load %struct.__ctrl*, %struct.__ctrl** %9, align 8
  %241 = getelementptr inbounds %struct.__ctrl, %struct.__ctrl* %240, i32 0, i32 11
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %244, %242
  %246 = trunc i64 %245 to i32
  store i32 %246, i32* %13, align 4
  br label %247

247:                                              ; preds = %239
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %32

250:                                              ; preds = %32
  store i32 0, i32* %4, align 4
  br label %251

251:                                              ; preds = %250, %122
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @qlcnic_get_saved_state(%struct.qlcnic_adapter*, i8*, i32) #1

declare dso_local i32 @qlcnic_set_saved_state(%struct.qlcnic_adapter*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
