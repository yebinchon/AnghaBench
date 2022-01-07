; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_find_by_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_find_by_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_span_entry = type { %struct.net_device*, i64 }
%struct.mlxsw_sp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_span_entry* }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxsw_sp_span_entry* @mlxsw_sp_span_entry_find_by_port(%struct.mlxsw_sp* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_span_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %36, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %19, i64 %21
  store %struct.mlxsw_sp_span_entry* %22, %struct.mlxsw_sp_span_entry** %7, align 8
  %23 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %7, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %7, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %28, i32 0, i32 0
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = icmp eq %struct.net_device* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %7, align 8
  store %struct.mlxsw_sp_span_entry* %34, %struct.mlxsw_sp_span_entry** %3, align 8
  br label %40

35:                                               ; preds = %27, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %8

39:                                               ; preds = %8
  store %struct.mlxsw_sp_span_entry* null, %struct.mlxsw_sp_span_entry** %3, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %3, align 8
  ret %struct.mlxsw_sp_span_entry* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
