; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_mirror_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_mirror_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, i32 }
%struct.mlxsw_sp_span_entry = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"no span entry found\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"removing inspected port from SPAN entry %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_span_mirror_del(%struct.mlxsw_sp_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_span_entry*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.mlxsw_sp_span_entry* @mlxsw_sp_span_entry_find_by_id(i32 %12, i32 %13)
  store %struct.mlxsw_sp_span_entry* %14, %struct.mlxsw_sp_span_entry** %9, align 8
  %15 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %9, align 8
  %16 = icmp ne %struct.mlxsw_sp_span_entry* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netdev_err(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %35

22:                                               ; preds = %4
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %9, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_dbg(i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %31 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @mlxsw_sp_span_inspected_port_del(%struct.mlxsw_sp_port* %30, %struct.mlxsw_sp_span_entry* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %17
  ret void
}

declare dso_local %struct.mlxsw_sp_span_entry* @mlxsw_sp_span_entry_find_by_id(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mlxsw_sp_span_inspected_port_del(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_span_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
