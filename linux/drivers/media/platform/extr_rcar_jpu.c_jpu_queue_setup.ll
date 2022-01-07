; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_jpu.c_jpu_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.jpu_ctx = type { i32 }
%struct.jpu_q_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @jpu_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpu_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.jpu_ctx*, align 8
  %13 = alloca %struct.jpu_q_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = call %struct.jpu_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.jpu_ctx* %17, %struct.jpu_ctx** %12, align 8
  %18 = load %struct.jpu_ctx*, %struct.jpu_ctx** %12, align 8
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.jpu_q_data* @jpu_get_q_data(%struct.jpu_ctx* %18, i32 %21)
  store %struct.jpu_q_data* %22, %struct.jpu_q_data** %13, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %5
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.jpu_q_data*, %struct.jpu_q_data** %13, align 8
  %30 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %97

37:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %64, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load %struct.jpu_q_data*, %struct.jpu_q_data** %13, align 8
  %45 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %14, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %97

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %14, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %38

67:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %97

68:                                               ; preds = %5
  %69 = load %struct.jpu_q_data*, %struct.jpu_q_data** %13, align 8
  %70 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %93, %68
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load %struct.jpu_q_data*, %struct.jpu_q_data** %13, align 8
  %81 = getelementptr inbounds %struct.jpu_q_data, %struct.jpu_q_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %79
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %74

96:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %67, %60, %34
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.jpu_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.jpu_q_data* @jpu_get_q_data(%struct.jpu_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
