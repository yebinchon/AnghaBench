; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_sp.c_fman_sp_build_buffer_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_sp.c_fman_sp_build_buffer_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_sp_int_context_data_copy = type { i32, i32, i64 }
%struct.fman_buffer_prefix_content = type { i32, i32, i64, i64, i64 }
%struct.fman_sp_buf_margins = type { i32 }
%struct.fman_sp_buffer_offsets = type { i32, i32, i32, i32 }

@OFFSET_UNITS = common dso_local global i32 0, align 4
@ILLEGAL_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_sp_build_buffer_struct(%struct.fman_sp_int_context_data_copy* %0, %struct.fman_buffer_prefix_content* %1, %struct.fman_sp_buf_margins* %2, %struct.fman_sp_buffer_offsets* %3, i64* %4) #0 {
  %6 = alloca %struct.fman_sp_int_context_data_copy*, align 8
  %7 = alloca %struct.fman_buffer_prefix_content*, align 8
  %8 = alloca %struct.fman_sp_buf_margins*, align 8
  %9 = alloca %struct.fman_sp_buffer_offsets*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.fman_sp_int_context_data_copy* %0, %struct.fman_sp_int_context_data_copy** %6, align 8
  store %struct.fman_buffer_prefix_content* %1, %struct.fman_buffer_prefix_content** %7, align 8
  store %struct.fman_sp_buf_margins* %2, %struct.fman_sp_buf_margins** %8, align 8
  store %struct.fman_sp_buffer_offsets* %3, %struct.fman_sp_buffer_offsets** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %13 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OFFSET_UNITS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %21 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @OFFSET_UNITS, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @OFFSET_UNITS, align 4
  %26 = sub nsw i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  br label %33

29:                                               ; preds = %5
  %30 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %31 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %33

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %28, %19 ], [ %32, %29 ]
  %35 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %36 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* @ILLEGAL_BASE, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.fman_sp_buffer_offsets*, %struct.fman_sp_buffer_offsets** %9, align 8
  %40 = getelementptr inbounds %struct.fman_sp_buffer_offsets, %struct.fman_sp_buffer_offsets* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* @ILLEGAL_BASE, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.fman_sp_buffer_offsets*, %struct.fman_sp_buffer_offsets** %9, align 8
  %44 = getelementptr inbounds %struct.fman_sp_buffer_offsets, %struct.fman_sp_buffer_offsets* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* @ILLEGAL_BASE, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.fman_sp_buffer_offsets*, %struct.fman_sp_buffer_offsets** %9, align 8
  %48 = getelementptr inbounds %struct.fman_sp_buffer_offsets, %struct.fman_sp_buffer_offsets* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %50 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 32, i32 0
  %55 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %56 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %33
  %60 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %61 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %33
  %65 = phi i1 [ true, %33 ], [ %63, %59 ]
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 16, i32 0
  %68 = add nsw i32 %54, %67
  %69 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %70 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %72 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %90

76:                                               ; preds = %64
  %77 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %78 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %83 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ true, %76 ], [ %85, %81 ]
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 64, i32 0
  br label %90

90:                                               ; preds = %86, %75
  %91 = phi i32 [ 32, %75 ], [ %89, %86 ]
  %92 = sext i32 %91 to i64
  %93 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %94 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %96 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %101 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.fman_sp_buffer_offsets*, %struct.fman_sp_buffer_offsets** %9, align 8
  %104 = getelementptr inbounds %struct.fman_sp_buffer_offsets, %struct.fman_sp_buffer_offsets* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %90
  %106 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %107 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %112 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %117 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add i64 %119, 4
  br label %126

121:                                              ; preds = %110
  %122 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %123 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  br label %126

126:                                              ; preds = %121, %115
  %127 = phi i64 [ %120, %115 ], [ %125, %121 ]
  %128 = trunc i64 %127 to i32
  %129 = load %struct.fman_sp_buffer_offsets*, %struct.fman_sp_buffer_offsets** %9, align 8
  %130 = getelementptr inbounds %struct.fman_sp_buffer_offsets, %struct.fman_sp_buffer_offsets* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %105
  %132 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %133 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %131
  %137 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %138 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %143 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 4
  %147 = add i64 %146, 8
  br label %154

148:                                              ; preds = %136
  %149 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %150 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 8
  %153 = sext i32 %152 to i64
  br label %154

154:                                              ; preds = %148, %141
  %155 = phi i64 [ %147, %141 ], [ %153, %148 ]
  %156 = trunc i64 %155 to i32
  %157 = load %struct.fman_sp_buffer_offsets*, %struct.fman_sp_buffer_offsets** %9, align 8
  %158 = getelementptr inbounds %struct.fman_sp_buffer_offsets, %struct.fman_sp_buffer_offsets* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  br label %159

159:                                              ; preds = %154, %131
  %160 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %161 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %166 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.fman_sp_int_context_data_copy*, %struct.fman_sp_int_context_data_copy** %6, align 8
  %169 = getelementptr inbounds %struct.fman_sp_int_context_data_copy, %struct.fman_sp_int_context_data_copy* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %167, %170
  %172 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %8, align 8
  %173 = getelementptr inbounds %struct.fman_sp_buf_margins, %struct.fman_sp_buf_margins* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  br label %180

174:                                              ; preds = %159
  %175 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %176 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %8, align 8
  %179 = getelementptr inbounds %struct.fman_sp_buf_margins, %struct.fman_sp_buf_margins* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %174, %164
  %181 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %8, align 8
  %182 = getelementptr inbounds %struct.fman_sp_buf_margins, %struct.fman_sp_buf_margins* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %185 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = srem i32 %183, %186
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %180
  %191 = load %struct.fman_buffer_prefix_content*, %struct.fman_buffer_prefix_content** %7, align 8
  %192 = getelementptr inbounds %struct.fman_buffer_prefix_content, %struct.fman_buffer_prefix_content* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %11, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %8, align 8
  %197 = getelementptr inbounds %struct.fman_sp_buf_margins, %struct.fman_sp_buf_margins* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %190, %180
  %201 = load %struct.fman_sp_buf_margins*, %struct.fman_sp_buf_margins** %8, align 8
  %202 = getelementptr inbounds %struct.fman_sp_buf_margins, %struct.fman_sp_buf_margins* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.fman_sp_buffer_offsets*, %struct.fman_sp_buffer_offsets** %9, align 8
  %205 = getelementptr inbounds %struct.fman_sp_buffer_offsets, %struct.fman_sp_buffer_offsets* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
