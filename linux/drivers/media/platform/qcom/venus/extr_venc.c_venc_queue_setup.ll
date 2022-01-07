; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.venus_inst = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @venc_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
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
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = call %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.venus_inst* %17, %struct.venus_inst** %12, align 8
  store i32 4, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %88

21:                                               ; preds = %5
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %23 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %30 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %29, i32 0, i32 7
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %185

38:                                               ; preds = %26, %21
  %39 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %40 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %47 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %46, i32 0, i32 6
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %185

55:                                               ; preds = %43, %38
  %56 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %57 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 128
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %65 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %185

71:                                               ; preds = %60, %55
  %72 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %73 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %81 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %185

87:                                               ; preds = %76, %71
  store i32 0, i32* %6, align 4
  br label %185

88:                                               ; preds = %5
  %89 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %90 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %180 [
    i32 128, label %92
    i32 129, label %136
  ]

92:                                               ; preds = %88
  %93 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %94 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %93, i32 0, i32 7
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %100 = call i32 @venc_out_num_buffers(%struct.venus_inst* %99, i32* %13)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %183

104:                                              ; preds = %92
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @max(i32 %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @max(i32 %109, i32 %110)
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %116 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %118 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %117, i32 0, i32 7
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %123 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %126 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @venus_helper_get_framesz(i32 %121, i32 %124, i32 %127)
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %128, i32* %130, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %135 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  br label %183

136:                                              ; preds = %88
  %137 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %138 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %137, i32 0, i32 6
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @max(i32 %144, i32 %145)
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %151 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %153 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %152, i32 0, i32 6
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %158 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %161 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @venus_helper_get_framesz(i32 %156, i32 %159, i32 %162)
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %165, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %170 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @max(i32 %168, i32 %171)
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %172, i32* %174, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.venus_inst*, %struct.venus_inst** %12, align 8
  %179 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  br label %183

180:                                              ; preds = %88
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %15, align 4
  br label %183

183:                                              ; preds = %180, %136, %104, %103
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %183, %87, %84, %68, %52, %35
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local %struct.venus_inst* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @venc_out_num_buffers(%struct.venus_inst*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @venus_helper_get_framesz(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
