; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_part_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_kvdl.c_mlxsw_sp1_kvdl_part_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp1_kvdl_part = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part*, i32)* @mlxsw_sp1_kvdl_part_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp1_kvdl_part_update(%struct.mlxsw_sp1_kvdl_part* %0, %struct.mlxsw_sp1_kvdl_part* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %5 = alloca %struct.mlxsw_sp1_kvdl_part*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp1_kvdl_part* %0, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  store %struct.mlxsw_sp1_kvdl_part* %1, %struct.mlxsw_sp1_kvdl_part** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %5, align 8
  %8 = icmp ne %struct.mlxsw_sp1_kvdl_part* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = sub i32 %10, 1
  %12 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %5, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %19, 1
  %21 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %27, %28
  %30 = sub i32 %29, 1
  %31 = load %struct.mlxsw_sp1_kvdl_part*, %struct.mlxsw_sp1_kvdl_part** %4, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp1_kvdl_part, %struct.mlxsw_sp1_kvdl_part* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %15, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
