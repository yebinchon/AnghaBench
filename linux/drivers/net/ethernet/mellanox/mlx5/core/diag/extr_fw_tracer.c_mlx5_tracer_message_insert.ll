; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_tracer_message_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/diag/extr_fw_tracer.c_mlx5_tracer_message_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracer_string_format = type { i32 }
%struct.mlx5_fw_tracer = type { %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.tracer_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tracer_string_format* (%struct.mlx5_fw_tracer*, %struct.tracer_event*)* @mlx5_tracer_message_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tracer_string_format* @mlx5_tracer_message_insert(%struct.mlx5_fw_tracer* %0, %struct.tracer_event* %1) #0 {
  %3 = alloca %struct.tracer_string_format*, align 8
  %4 = alloca %struct.mlx5_fw_tracer*, align 8
  %5 = alloca %struct.tracer_event*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca %struct.tracer_string_format*, align 8
  store %struct.mlx5_fw_tracer* %0, %struct.mlx5_fw_tracer** %4, align 8
  store %struct.tracer_event* %1, %struct.tracer_event** %5, align 8
  %8 = load %struct.mlx5_fw_tracer*, %struct.mlx5_fw_tracer** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_fw_tracer, %struct.mlx5_fw_tracer* %8, i32 0, i32 0
  %10 = load %struct.hlist_head*, %struct.hlist_head** %9, align 8
  %11 = load %struct.tracer_event*, %struct.tracer_event** %5, align 8
  %12 = getelementptr inbounds %struct.tracer_event, %struct.tracer_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @mlx5_tracer_message_hash(i32 %14)
  %16 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %10, i64 %15
  store %struct.hlist_head* %16, %struct.hlist_head** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.tracer_string_format* @kzalloc(i32 4, i32 %17)
  store %struct.tracer_string_format* %18, %struct.tracer_string_format** %7, align 8
  %19 = load %struct.tracer_string_format*, %struct.tracer_string_format** %7, align 8
  %20 = icmp ne %struct.tracer_string_format* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store %struct.tracer_string_format* null, %struct.tracer_string_format** %3, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.tracer_string_format*, %struct.tracer_string_format** %7, align 8
  %24 = getelementptr inbounds %struct.tracer_string_format, %struct.tracer_string_format* %23, i32 0, i32 0
  %25 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %26 = call i32 @hlist_add_head(i32* %24, %struct.hlist_head* %25)
  %27 = load %struct.tracer_string_format*, %struct.tracer_string_format** %7, align 8
  store %struct.tracer_string_format* %27, %struct.tracer_string_format** %3, align 8
  br label %28

28:                                               ; preds = %22, %21
  %29 = load %struct.tracer_string_format*, %struct.tracer_string_format** %3, align 8
  ret %struct.tracer_string_format* %29
}

declare dso_local i64 @mlx5_tracer_message_hash(i32) #1

declare dso_local %struct.tracer_string_format* @kzalloc(i32, i32) #1

declare dso_local i32 @hlist_add_head(i32*, %struct.hlist_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
