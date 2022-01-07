; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_get_proto_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_eswitch_get_proto_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i8* (%struct.mlx5_eswitch_rep*)* }
%struct.mlx5_eswitch_rep = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@REP_LOADED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mlx5_eswitch_get_proto_dev(%struct.mlx5_eswitch* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5_eswitch_rep*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch* %9, i32 %10)
  store %struct.mlx5_eswitch_rep* %11, %struct.mlx5_eswitch_rep** %8, align 8
  %12 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %8, align 8
  %13 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i64 @atomic_read(i32* %17)
  %19 = load i64, i64* @REP_LOADED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8* (%struct.mlx5_eswitch_rep*)*, i8* (%struct.mlx5_eswitch_rep*)** %29, align 8
  %31 = icmp ne i8* (%struct.mlx5_eswitch_rep*)* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8* (%struct.mlx5_eswitch_rep*)*, i8* (%struct.mlx5_eswitch_rep*)** %40, align 8
  %42 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %8, align 8
  %43 = call i8* %41(%struct.mlx5_eswitch_rep* %42)
  store i8* %43, i8** %4, align 8
  br label %45

44:                                               ; preds = %21, %3
  store i8* null, i8** %4, align 8
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
