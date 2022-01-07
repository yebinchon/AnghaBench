; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_sru.c_sru_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_partition = type { %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.vsp1_sru = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64 }

@SRU_PAD_SINK = common dso_local global i32 0, align 4
@SRU_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_partition*, i32, %struct.vsp1_partition_window*)* @sru_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sru_partition(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_partition* %2, i32 %3, %struct.vsp1_partition_window* %4) #0 {
  %6 = alloca %struct.vsp1_entity*, align 8
  %7 = alloca %struct.vsp1_pipeline*, align 8
  %8 = alloca %struct.vsp1_partition*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vsp1_partition_window*, align 8
  %11 = alloca %struct.vsp1_sru*, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %13 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %6, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %7, align 8
  store %struct.vsp1_partition* %2, %struct.vsp1_partition** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.vsp1_partition_window* %4, %struct.vsp1_partition_window** %10, align 8
  %14 = load %struct.vsp1_entity*, %struct.vsp1_entity** %6, align 8
  %15 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %14, i32 0, i32 0
  %16 = call %struct.vsp1_sru* @to_sru(i32* %15)
  store %struct.vsp1_sru* %16, %struct.vsp1_sru** %11, align 8
  %17 = load %struct.vsp1_sru*, %struct.vsp1_sru** %11, align 8
  %18 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %17, i32 0, i32 0
  %19 = load %struct.vsp1_sru*, %struct.vsp1_sru** %11, align 8
  %20 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SRU_PAD_SINK, align 4
  %24 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %18, i32 %22, i32 %23)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %12, align 8
  %25 = load %struct.vsp1_sru*, %struct.vsp1_sru** %11, align 8
  %26 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %25, i32 0, i32 0
  %27 = load %struct.vsp1_sru*, %struct.vsp1_sru** %11, align 8
  %28 = getelementptr inbounds %struct.vsp1_sru, %struct.vsp1_sru* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SRU_PAD_SOURCE, align 4
  %32 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__* %26, i32 %30, i32 %31)
  store %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt** %13, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %34 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %5
  %41 = load %struct.vsp1_partition_window*, %struct.vsp1_partition_window** %10, align 8
  %42 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %42, align 4
  %45 = load %struct.vsp1_partition_window*, %struct.vsp1_partition_window** %10, align 8
  %46 = getelementptr inbounds %struct.vsp1_partition_window, %struct.vsp1_partition_window* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 2
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %40, %5
  %50 = load %struct.vsp1_partition*, %struct.vsp1_partition** %8, align 8
  %51 = getelementptr inbounds %struct.vsp1_partition, %struct.vsp1_partition* %50, i32 0, i32 0
  %52 = load %struct.vsp1_partition_window*, %struct.vsp1_partition_window** %10, align 8
  %53 = bitcast %struct.vsp1_partition_window* %51 to i8*
  %54 = bitcast %struct.vsp1_partition_window* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 8, i1 false)
  ret void
}

declare dso_local %struct.vsp1_sru* @to_sru(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_2__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
