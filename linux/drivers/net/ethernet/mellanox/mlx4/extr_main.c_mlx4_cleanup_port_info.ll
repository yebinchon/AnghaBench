; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_cleanup_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_cleanup_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_port_info = type { i64, i32*, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_port_info*)* @mlx4_cleanup_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_cleanup_port_info(%struct.mlx4_port_info* %0) #0 {
  %2 = alloca %struct.mlx4_port_info*, align 8
  store %struct.mlx4_port_info* %0, %struct.mlx4_port_info** %2, align 8
  %3 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %2, align 8
  %4 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %2, align 8
  %18 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %17, i32 0, i32 5
  %19 = call i32 @device_remove_file(i32* %16, i32* %18)
  %20 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %2, align 8
  %21 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %2, align 8
  %29 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %28, i32 0, i32 3
  %30 = call i32 @device_remove_file(i32* %27, i32* %29)
  %31 = load %struct.mlx4_port_info*, %struct.mlx4_port_info** %2, align 8
  %32 = getelementptr inbounds %struct.mlx4_port_info, %struct.mlx4_port_info* %31, i32 0, i32 2
  %33 = call i32 @devlink_port_unregister(i32* %32)
  br label %34

34:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @devlink_port_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
