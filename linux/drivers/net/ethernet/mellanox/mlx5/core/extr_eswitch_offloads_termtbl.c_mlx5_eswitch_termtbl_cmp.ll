; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads_termtbl.c_mlx5_eswitch_termtbl_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_act = type { i64, i32 }
%struct.mlx5_flow_destination = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_act*, %struct.mlx5_flow_destination*, %struct.mlx5_flow_act*, %struct.mlx5_flow_destination*)* @mlx5_eswitch_termtbl_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_eswitch_termtbl_cmp(%struct.mlx5_flow_act* %0, %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_act* %2, %struct.mlx5_flow_destination* %3) #0 {
  %5 = alloca %struct.mlx5_flow_act*, align 8
  %6 = alloca %struct.mlx5_flow_destination*, align 8
  %7 = alloca %struct.mlx5_flow_act*, align 8
  %8 = alloca %struct.mlx5_flow_destination*, align 8
  store %struct.mlx5_flow_act* %0, %struct.mlx5_flow_act** %5, align 8
  store %struct.mlx5_flow_destination* %1, %struct.mlx5_flow_destination** %6, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %7, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %8, align 8
  %9 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %43, label %16

16:                                               ; preds = %4
  %17 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %43, label %26

26:                                               ; preds = %16
  %27 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %30, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %5, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %37, i32 0, i32 1
  %39 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %39, i32 0, i32 1
  %41 = call i64 @memcmp(i32* %38, i32* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %36, %26, %16, %4
  %44 = phi i1 [ true, %26 ], [ true, %16 ], [ true, %4 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
