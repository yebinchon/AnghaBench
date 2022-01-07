; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.venus_inst = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_CAPTURE_SETUP = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vdec_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.venus_inst*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = call %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue* %17)
  store %struct.venus_inst* %18, %struct.venus_inst** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %5
  %23 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %24 = call i32 @venus_helper_get_opb_size(%struct.venus_inst* %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %26 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %33 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %32, i32 0, i32 11
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %210

41:                                               ; preds = %29, %22
  %42 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %43 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %50 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %49, i32 0, i32 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %210

58:                                               ; preds = %46, %41
  %59 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %60 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %68 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %210

74:                                               ; preds = %63, %58
  %75 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %76 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 129
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %210

88:                                               ; preds = %79, %74
  store i32 0, i32* %6, align 4
  br label %210

89:                                               ; preds = %5
  %90 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %91 = call i32 @vdec_session_init(%struct.venus_inst* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %6, align 4
  br label %210

96:                                               ; preds = %89
  %97 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %98 = call i32 @vdec_num_buffers(%struct.venus_inst* %97, i32* %13, i32* %14)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %210

103:                                              ; preds = %96
  %104 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %105 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %205 [
    i32 128, label %107
    i32 129, label %154
  ]

107:                                              ; preds = %103
  %108 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %109 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %108, i32 0, i32 11
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  %114 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %115 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %114, i32 0, i32 11
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %120 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %123 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @venus_helper_get_framesz(i32 %118, i32 %121, i32 %124)
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %125, i32* %127, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %132 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @max(i32 %130, i32 %133)
  %135 = load i32*, i32** %10, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %141 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @max(i32 %143, i32 %144)
  %146 = load i32*, i32** %8, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %150 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %153 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  br label %208

154:                                              ; preds = %103
  %155 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %156 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %155, i32 0, i32 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %9, align 8
  store i32 %159, i32* %160, align 4
  %161 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %162 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %161, i32 0, i32 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %167 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %170 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @venus_helper_get_framesz(i32 %165, i32 %168, i32 %171)
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %179 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @max(i32 %181, i32 %182)
  %184 = load i32*, i32** %8, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32*, i32** %8, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %188 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %190 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %189, i32 0, i32 4
  %191 = call i32 @mutex_lock(i32* %190)
  %192 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %193 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @VENUS_DEC_STATE_CAPTURE_SETUP, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %154
  %198 = load i32, i32* @VENUS_DEC_STATE_STOPPED, align 4
  %199 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %200 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %197, %154
  %202 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %203 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %202, i32 0, i32 4
  %204 = call i32 @mutex_unlock(i32* %203)
  br label %208

205:                                              ; preds = %103
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %205, %201, %107
  %209 = load i32, i32* %15, align 4
  store i32 %209, i32* %6, align 4
  br label %210

210:                                              ; preds = %208, %101, %94, %88, %85, %71, %55, %38
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @venus_helper_get_opb_size(%struct.venus_inst*) #1

declare dso_local i32 @vdec_session_init(%struct.venus_inst*) #1

declare dso_local i32 @vdec_num_buffers(%struct.venus_inst*, i32*, i32*) #1

declare dso_local i32 @venus_helper_get_framesz(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
