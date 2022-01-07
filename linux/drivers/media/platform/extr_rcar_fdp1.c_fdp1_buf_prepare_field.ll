; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_buf_prepare_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_buf_prepare_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_q_data = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fdp1_buffer = type { %struct.fdp1_field_buffer* }
%struct.fdp1_field_buffer = type { i32, i32*, i32, %struct.vb2_v4l2_buffer* }

@V4L2_FIELD_TOP = common dso_local global i8* null, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdp1_q_data*, %struct.vb2_v4l2_buffer*, i32)* @fdp1_buf_prepare_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_buf_prepare_field(%struct.fdp1_q_data* %0, %struct.vb2_v4l2_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.fdp1_q_data*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fdp1_buffer*, align 8
  %8 = alloca %struct.fdp1_field_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fdp1_q_data* %0, %struct.fdp1_q_data** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %12 = call %struct.fdp1_buffer* @to_fdp1_buffer(%struct.vb2_v4l2_buffer* %11)
  store %struct.fdp1_buffer* %12, %struct.fdp1_buffer** %7, align 8
  %13 = load %struct.fdp1_buffer*, %struct.fdp1_buffer** %7, align 8
  %14 = getelementptr inbounds %struct.fdp1_buffer, %struct.fdp1_buffer* %13, i32 0, i32 0
  %15 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %15, i64 %17
  store %struct.fdp1_field_buffer* %18, %struct.fdp1_field_buffer** %8, align 8
  %19 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2, i32 1
  store i32 %25, i32* %9, align 4
  %26 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %27 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %27, i32 0, i32 3
  store %struct.vb2_v4l2_buffer* %26, %struct.vb2_v4l2_buffer** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %35 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %54, %3
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %44, i32 0, i32 1
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.TYPE_4__* %45, i32 %46)
  %48 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %49 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %103 [
    i32 132, label %61
    i32 130, label %79
    i32 128, label %79
    i32 131, label %91
    i32 129, label %91
  ]

61:                                               ; preds = %57
  %62 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %63 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 576
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i8*, i8** @V4L2_FIELD_TOP, align 8
  br label %74

72:                                               ; preds = %61
  %73 = load i8*, i8** @V4L2_FIELD_BOTTOM, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %78 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  br label %109

79:                                               ; preds = %57, %57
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i8*, i8** @V4L2_FIELD_BOTTOM, align 8
  br label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** @V4L2_FIELD_TOP, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %90 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %109

91:                                               ; preds = %57, %57
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i8*, i8** @V4L2_FIELD_TOP, align 8
  br label %98

96:                                               ; preds = %91
  %97 = load i8*, i8** @V4L2_FIELD_BOTTOM, align 8
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i8* [ %95, %94 ], [ %97, %96 ]
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %102 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  br label %109

103:                                              ; preds = %57
  %104 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %105 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %108 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %98, %86, %74
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  br label %187

113:                                              ; preds = %109
  %114 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %115 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %187 [
    i32 132, label %117
    i32 130, label %117
    i32 131, label %117
    i32 128, label %150
    i32 129, label %150
  ]

117:                                              ; preds = %113, %113, %113
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %146, %117
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %121 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ult i32 %119, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %118
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %130 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  br label %136

132:                                              ; preds = %125
  %133 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %134 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i32 [ %131, %128 ], [ %135, %132 ]
  %138 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %139 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %137
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %118

149:                                              ; preds = %118
  br label %187

150:                                              ; preds = %113, %113
  store i32 0, i32* %10, align 4
  br label %151

151:                                              ; preds = %183, %150
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %154 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ult i32 %152, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %151
  %159 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %160 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %166 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  br label %172

168:                                              ; preds = %158
  %169 = load %struct.fdp1_q_data*, %struct.fdp1_q_data** %4, align 8
  %170 = getelementptr inbounds %struct.fdp1_q_data, %struct.fdp1_q_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi i32 [ %167, %164 ], [ %171, %168 ]
  %174 = mul nsw i32 %161, %173
  %175 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %8, align 8
  %176 = getelementptr inbounds %struct.fdp1_field_buffer, %struct.fdp1_field_buffer* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %174
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %10, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %10, align 4
  br label %151

186:                                              ; preds = %151
  br label %187

187:                                              ; preds = %112, %113, %186, %149
  ret void
}

declare dso_local %struct.fdp1_buffer* @to_fdp1_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
