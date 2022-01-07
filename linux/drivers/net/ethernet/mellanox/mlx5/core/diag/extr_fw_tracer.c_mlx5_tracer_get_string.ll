; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_tracer_get_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_tracer_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracer_string_format = type { i8* }
%struct.mlx5_fw_tracer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64*, i64*, i64* }
%struct.tracer_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracer_string_format* (%struct.mlx5_fw_tracer*, %struct.tracer_event*)* @mlx5_tracer_get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracer_string_format* @mlx5_tracer_get_string(%struct.mlx5_fw_tracer* %0, %struct.tracer_event* %1) #0 {
  %3 = alloca %struct.tracer_string_format*, align 8
  %4 = alloca %struct.mlx5_fw_tracer*, align 8
  %5 = alloca %struct.tracer_event*, align 8
  %6 = alloca %struct.tracer_string_format*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %4, align 8
  store %struct.tracer_event* %1, %struct.tracer_event** %5, align 8
  %10 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %11 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %85, %2
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %88

21:                                               ; preds = %14
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %22, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %21
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %41, %49
  %51 = icmp slt i64 %33, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %32
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %53, %61
  store i64 %62, i64* %8, align 8
  %63 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %64 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %65 = call %struct.tracer_string_format* @mlx5_tracer_message_insert(%struct.mlx5_fw_tracer* %63, %struct.tracer_event* %64)
  store %struct.tracer_string_format* %65, %struct.tracer_string_format** %6, align 8
  %66 = load %struct.tracer_string_format*, %struct.tracer_string_format** %6, align 8
  %67 = icmp ne %struct.tracer_string_format* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %52
  store %struct.tracer_string_format* null, %struct.tracer_string_format** %3, align 8
  br label %89

69:                                               ; preds = %52
  %70 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add nsw i64 %77, %78
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.tracer_string_format*, %struct.tracer_string_format** %6, align 8
  %82 = getelementptr inbounds %struct.tracer_string_format, %struct.tracer_string_format* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.tracer_string_format*, %struct.tracer_string_format** %6, align 8
  store %struct.tracer_string_format* %83, %struct.tracer_string_format** %3, align 8
  br label %89

84:                                               ; preds = %32, %21
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %14

88:                                               ; preds = %14
  store %struct.tracer_string_format* null, %struct.tracer_string_format** %3, align 8
  br label %89

89:                                               ; preds = %88, %69, %68
  %90 = load %struct.tracer_string_format*, %struct.tracer_string_format** %3, align 8
  ret %struct.tracer_string_format* %90
}

declare dso_local %struct.tracer_string_format* @mlx5_tracer_message_insert(%struct.mlx5_fw_tracer*, %struct.tracer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
