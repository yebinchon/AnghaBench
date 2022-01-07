; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_partition = type { %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_partition*, i32, %struct.vsp1_partition_window*)* @rpf_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpf_partition(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_partition* %2, i32 %3, %struct.vsp1_partition_window* %4) #0 {
  %6 = alloca %struct.vsp1_entity*, align 8
  %7 = alloca %struct.vsp1_pipeline*, align 8
  %8 = alloca %struct.vsp1_partition*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vsp1_partition_window*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %6, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %7, align 8
  store %struct.vsp1_partition* %2, %struct.vsp1_partition** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.vsp1_partition_window* %4, %struct.vsp1_partition_window** %10, align 8
  %11 = load %struct.vsp1_partition*, %struct.vsp1_partition** %8, align 8
  %12 = getelementptr inbounds %struct.vsp1_partition, %struct.vsp1_partition* %11, i32 0, i32 0
  %13 = load %struct.vsp1_partition_window*, %struct.vsp1_partition_window** %10, align 8
  %14 = bitcast %struct.vsp1_partition_window* %12 to i8*
  %15 = bitcast %struct.vsp1_partition_window* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
