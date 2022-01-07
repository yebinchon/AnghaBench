; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_idma_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_idma_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_idma_monitor_state = type { i32, i32*, i32*, i32*, i32* }

@SGE_DEBUG_INDEX_A = common dso_local global i32 0, align 4
@SGE_DEBUG_DATA_HIGH_A = common dso_local global i32 0, align 4
@SGE_DEBUG_DATA_LOW_A = common dso_local global i32 0, align 4
@SGE_IDMA_WARN_THRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SGE idma%d, queue %u, resumed after %d seconds\0A\00", align 1
@SGE_IDMA_WARN_REPEAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"SGE idma%u, queue %u, potentially stuck in state %u for %d seconds (debug0=%#x, debug11=%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_idma_monitor(%struct.adapter* %0, %struct.sge_idma_monitor_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.sge_idma_monitor_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.sge_idma_monitor_state* %1, %struct.sge_idma_monitor_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = load i32, i32* @SGE_DEBUG_INDEX_A, align 4
  %15 = call i32 @t4_write_reg(%struct.adapter* %13, i32 %14, i32 13)
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = load i32, i32* @SGE_DEBUG_DATA_HIGH_A, align 4
  %18 = call i32 @t4_read_reg(%struct.adapter* %16, i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = load i32, i32* @SGE_DEBUG_DATA_LOW_A, align 4
  %22 = call i32 @t4_read_reg(%struct.adapter* %20, i32 %21)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %225, %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %228

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %33 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %27
  %37 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %38 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SGE_IDMA_WARN_THRESH, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %44, %45
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %36
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %54 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %61 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sdiv i32 %66, %67
  %69 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_warn(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %59, i32 %68)
  br label %70

70:                                               ; preds = %48, %36
  %71 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %72 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 0, i32* %76, align 4
  br label %225

77:                                               ; preds = %27
  %78 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %79 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %89 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %95 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 0, i32* %99, align 4
  br label %119

100:                                              ; preds = %77
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %103 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %101
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %112 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, %110
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %100, %86
  %120 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %121 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SGE_IDMA_WARN_THRESH, align 4
  %128 = load i32, i32* %7, align 4
  %129 = mul nsw i32 %127, %128
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %225

132:                                              ; preds = %119
  %133 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %134 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %225

142:                                              ; preds = %132
  %143 = load i32, i32* @SGE_IDMA_WARN_REPEAT, align 4
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %147 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %145, i32* %151, align 4
  %152 = load %struct.adapter*, %struct.adapter** %5, align 8
  %153 = load i32, i32* @SGE_DEBUG_INDEX_A, align 4
  %154 = call i32 @t4_write_reg(%struct.adapter* %152, i32 %153, i32 0)
  %155 = load %struct.adapter*, %struct.adapter** %5, align 8
  %156 = load i32, i32* @SGE_DEBUG_DATA_LOW_A, align 4
  %157 = call i32 @t4_read_reg(%struct.adapter* %155, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %159, 9
  %161 = ashr i32 %158, %160
  %162 = and i32 %161, 63
  %163 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %164 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load %struct.adapter*, %struct.adapter** %5, align 8
  %170 = load i32, i32* @SGE_DEBUG_INDEX_A, align 4
  %171 = call i32 @t4_write_reg(%struct.adapter* %169, i32 %170, i32 11)
  %172 = load %struct.adapter*, %struct.adapter** %5, align 8
  %173 = load i32, i32* @SGE_DEBUG_DATA_LOW_A, align 4
  %174 = call i32 @t4_read_reg(%struct.adapter* %172, i32 %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %9, align 4
  %177 = mul nsw i32 %176, 16
  %178 = ashr i32 %175, %177
  %179 = and i32 %178, 65535
  %180 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %181 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load %struct.adapter*, %struct.adapter** %5, align 8
  %187 = getelementptr inbounds %struct.adapter, %struct.adapter* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %191 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %198 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %205 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %7, align 4
  %212 = sdiv i32 %210, %211
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_warn(i32 %188, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %196, i32 %203, i32 %212, i32 %213, i32 %214)
  %216 = load %struct.adapter*, %struct.adapter** %5, align 8
  %217 = load %struct.sge_idma_monitor_state*, %struct.sge_idma_monitor_state** %6, align 8
  %218 = getelementptr inbounds %struct.sge_idma_monitor_state, %struct.sge_idma_monitor_state* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @t4_sge_decode_idma_state(%struct.adapter* %216, i32 %223)
  br label %225

225:                                              ; preds = %142, %141, %131, %70
  %226 = load i32, i32* %9, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %24

228:                                              ; preds = %24
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @t4_sge_decode_idma_state(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
