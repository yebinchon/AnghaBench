; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_trace_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_set_trace_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.trace_params = type { i32, i32, i32, i64, i64, i64, i32*, i32* }

@MPS_TRC_FILTER_MATCH_CTL_A_A = common dso_local global i32 0, align 4
@MPS_TRC_CFG_A = common dso_local global i32 0, align 4
@TRCMULTIFILTER_F = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TFLENGTH_M = common dso_local global i64 0, align 8
@TFOFFSET_M = common dso_local global i64 0, align 8
@TFMINPKTSIZE_M = common dso_local global i64 0, align 8
@MPS_TRC_FILTER1_MATCH_A = common dso_local global i32 0, align 4
@MPS_TRC_FILTER0_MATCH_A = common dso_local global i32 0, align 4
@MPS_TRC_FILTER0_DONT_CARE_A = common dso_local global i32 0, align 4
@TRACE_LEN = common dso_local global i32 0, align 4
@MPS_TRC_FILTER_MATCH_CTL_B_A = common dso_local global i32 0, align 4
@TFEN_F = common dso_local global i32 0, align 4
@T5_TFEN_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_set_trace_filter(%struct.adapter* %0, %struct.trace_params* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.trace_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.trace_params* %1, %struct.trace_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %15, 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = load i32, i32* @MPS_TRC_FILTER_MATCH_CTL_A_A, align 4
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @t4_write_reg(%struct.adapter* %20, i32 %23, i32 0)
  store i32 0, i32* %5, align 4
  br label %206

25:                                               ; preds = %4
  %26 = load %struct.adapter*, %struct.adapter** %6, align 8
  %27 = load i32, i32* @MPS_TRC_CFG_A, align 4
  %28 = call i32 @t4_read_reg(%struct.adapter* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @TRCMULTIFILTER_F, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %35 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 2544
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %206

41:                                               ; preds = %33
  br label %54

42:                                               ; preds = %25
  %43 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %44 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 9600
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %206

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %41
  %55 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %56 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.adapter*, %struct.adapter** %6, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @is_t4(i32 %61)
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 11, i32 19
  %66 = icmp sgt i32 %57, %65
  br i1 %66, label %90, label %67

67:                                               ; preds = %54
  %68 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %69 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %90, label %72

72:                                               ; preds = %67
  %73 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %74 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TFLENGTH_M, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %80 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TFOFFSET_M, align 8
  %83 = icmp sgt i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %86 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TFMINPKTSIZE_M, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %78, %72, %67, %54
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %206

93:                                               ; preds = %84
  %94 = load %struct.adapter*, %struct.adapter** %6, align 8
  %95 = load i32, i32* @MPS_TRC_FILTER_MATCH_CTL_A_A, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @t4_write_reg(%struct.adapter* %94, i32 %97, i32 0)
  %99 = load i32, i32* @MPS_TRC_FILTER1_MATCH_A, align 4
  %100 = load i32, i32* @MPS_TRC_FILTER0_MATCH_A, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @MPS_TRC_FILTER0_MATCH_A, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* @MPS_TRC_FILTER0_DONT_CARE_A, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %137, %93
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @TRACE_LEN, align 4
  %113 = sdiv i32 %112, 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %110
  %116 = load %struct.adapter*, %struct.adapter** %6, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %119 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @t4_write_reg(%struct.adapter* %116, i32 %117, i32 %124)
  %126 = load %struct.adapter*, %struct.adapter** %6, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %129 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %128, i32 0, i32 7
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %134, -1
  %136 = call i32 @t4_write_reg(%struct.adapter* %126, i32 %127, i32 %135)
  br label %137

137:                                              ; preds = %115
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %13, align 4
  br label %110

144:                                              ; preds = %110
  %145 = load %struct.adapter*, %struct.adapter** %6, align 8
  %146 = load i32, i32* @MPS_TRC_FILTER_MATCH_CTL_B_A, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %146, %147
  %149 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %150 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @TFCAPTUREMAX_V(i32 %151)
  %153 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %154 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @TFMINPKTSIZE_V(i64 %155)
  %157 = or i32 %152, %156
  %158 = call i32 @t4_write_reg(%struct.adapter* %145, i32 %148, i32 %157)
  %159 = load %struct.adapter*, %struct.adapter** %6, align 8
  %160 = load i32, i32* @MPS_TRC_FILTER_MATCH_CTL_A_A, align 4
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %164 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @TFOFFSET_V(i64 %165)
  %167 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %168 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @TFLENGTH_V(i64 %169)
  %171 = or i32 %166, %170
  %172 = load %struct.adapter*, %struct.adapter** %6, align 8
  %173 = getelementptr inbounds %struct.adapter, %struct.adapter* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @is_t4(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %144
  %179 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %180 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @TFPORT_V(i32 %181)
  %183 = load i32, i32* @TFEN_F, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %186 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @TFINVERTMATCH_V(i32 %187)
  %189 = or i32 %184, %188
  br label %202

190:                                              ; preds = %144
  %191 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %192 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @T5_TFPORT_V(i32 %193)
  %195 = load i32, i32* @T5_TFEN_F, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.trace_params*, %struct.trace_params** %7, align 8
  %198 = getelementptr inbounds %struct.trace_params, %struct.trace_params* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @T5_TFINVERTMATCH_V(i32 %199)
  %201 = or i32 %196, %200
  br label %202

202:                                              ; preds = %190, %178
  %203 = phi i32 [ %189, %178 ], [ %201, %190 ]
  %204 = or i32 %171, %203
  %205 = call i32 @t4_write_reg(%struct.adapter* %159, i32 %162, i32 %204)
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %202, %90, %50, %38, %19
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @TFCAPTUREMAX_V(i32) #1

declare dso_local i32 @TFMINPKTSIZE_V(i64) #1

declare dso_local i32 @TFOFFSET_V(i64) #1

declare dso_local i32 @TFLENGTH_V(i64) #1

declare dso_local i32 @TFPORT_V(i32) #1

declare dso_local i32 @TFINVERTMATCH_V(i32) #1

declare dso_local i32 @T5_TFPORT_V(i32) #1

declare dso_local i32 @T5_TFINVERTMATCH_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
