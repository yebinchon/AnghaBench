; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_poll_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_poll_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracer_event = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_fw_tracer = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@event_id = common dso_local global i32 0, align 4
@lost = common dso_local global i32 0, align 4
@tracer_timestamp_event = common dso_local global %struct.tracer_event* null, align 8
@timestamp7_0 = common dso_local global i32 0, align 4
@timestamp39_8 = common dso_local global i32 0, align 4
@timestamp52_40 = common dso_local global i32 0, align 4
@TRACER_EVENT_TYPE_STRING = common dso_local global i32 0, align 4
@tracer_string_event = common dso_local global %struct.tracer_event* null, align 8
@timestamp = common dso_local global i32 0, align 4
@string_param = common dso_local global i32 0, align 4
@tmsn = common dso_local global i32 0, align 4
@tdsn = common dso_local global i32 0, align 4
@TRACER_EVENT_TYPE_UNRECOGNIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fw_tracer*, %struct.tracer_event*, i32*)* @poll_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_trace(%struct.mlx5_fw_tracer* %0, %struct.tracer_event* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_fw_tracer*, align 8
  %5 = alloca %struct.tracer_event*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %4, align 8
  store %struct.tracer_event* %1, %struct.tracer_event** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* @event_id, align 4
  %14 = call i8* @MLX5_GET(%struct.tracer_event* %11, i32* %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %17 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @lost, align 4
  %21 = call i8* @MLX5_GET(%struct.tracer_event* %18, i32* %19, i32 %20)
  %22 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %23 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %25 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %85 [
    i32 128, label %27
  ]

27:                                               ; preds = %3
  %28 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %29 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %28, i32 0, i32 1
  store i32 128, i32* %29, align 4
  %30 = load %struct.tracer_event*, %struct.tracer_event** @tracer_timestamp_event, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @MLX5_GET(%struct.tracer_event* %30, i32* %31, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 2
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %47 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  br label %59

49:                                               ; preds = %27
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %57 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %49, %39
  %60 = load %struct.tracer_event*, %struct.tracer_event** @tracer_timestamp_event, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @timestamp7_0, align 4
  %63 = call i8* @MLX5_GET(%struct.tracer_event* %60, i32* %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.tracer_event*, %struct.tracer_event** @tracer_timestamp_event, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @timestamp39_8, align 4
  %68 = call i8* @MLX5_GET(%struct.tracer_event* %65, i32* %66, i32 %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.tracer_event*, %struct.tracer_event** @tracer_timestamp_event, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @timestamp52_40, align 4
  %73 = call i8* @MLX5_GET(%struct.tracer_event* %70, i32* %71, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 40
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %76, %78
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %83 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  br label %145

85:                                               ; preds = %3
  %86 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %87 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %88, %92
  br i1 %93, label %108, label %94

94:                                               ; preds = %85
  %95 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %96 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %99 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %101, %105
  %107 = icmp sle i32 %97, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %94, %85
  %109 = load i32, i32* @TRACER_EVENT_TYPE_STRING, align 4
  %110 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %111 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.tracer_event*, %struct.tracer_event** @tracer_string_event, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* @timestamp, align 4
  %115 = call i8* @MLX5_GET(%struct.tracer_event* %112, i32* %113, i32 %114)
  %116 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %117 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i8* %115, i8** %118, align 8
  %119 = load %struct.tracer_event*, %struct.tracer_event** @tracer_string_event, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @string_param, align 4
  %122 = call i8* @MLX5_GET(%struct.tracer_event* %119, i32* %120, i32 %121)
  %123 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %124 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i8* %122, i8** %125, align 8
  %126 = load %struct.tracer_event*, %struct.tracer_event** @tracer_string_event, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* @tmsn, align 4
  %129 = call i8* @MLX5_GET(%struct.tracer_event* %126, i32* %127, i32 %128)
  %130 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %131 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load %struct.tracer_event*, %struct.tracer_event** @tracer_string_event, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* @tdsn, align 4
  %136 = call i8* @MLX5_GET(%struct.tracer_event* %133, i32* %134, i32 %135)
  %137 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %138 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  br label %144

140:                                              ; preds = %94
  %141 = load i32, i32* @TRACER_EVENT_TYPE_UNRECOGNIZED, align 4
  %142 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %143 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %140, %108
  br label %145

145:                                              ; preds = %144, %59
  ret void
}

declare dso_local i8* @MLX5_GET(%struct.tracer_event*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
