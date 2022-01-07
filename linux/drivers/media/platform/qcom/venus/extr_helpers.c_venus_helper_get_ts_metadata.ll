; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_ts_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_get_ts_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32, i32, %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @venus_helper_get_ts_metadata(%struct.venus_inst* %0, i64 %1, %struct.vb2_v4l2_buffer* %2) #0 {
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.vb2_v4l2_buffer* %2, %struct.vb2_v4l2_buffer** %6, align 8
  %9 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %9, i32 0, i32 2
  store %struct.vb2_buffer* %10, %struct.vb2_buffer** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %81, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %14 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %15)
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %11
  %19 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %20 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %81

29:                                               ; preds = %18
  %30 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %31 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %81

41:                                               ; preds = %29
  %42 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %43 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %50 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %62 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %72 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vb2_buffer*, %struct.vb2_buffer** %7, align 8
  %80 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %84

81:                                               ; preds = %40, %28
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %11

84:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
