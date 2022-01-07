; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_entry_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_span_entry = type { i32, %struct.net_device*, %struct.mlxsw_sp_span_entry_ops* }
%struct.mlxsw_sp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_span_entry* }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_span_entry_ops = type { i32 }
%struct.mlxsw_sp_span_parms = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_span_entry* (%struct.mlxsw_sp*, %struct.net_device*, %struct.mlxsw_sp_span_entry_ops*, i32)* @mlxsw_sp_span_entry_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_span_entry* @mlxsw_sp_span_entry_create(%struct.mlxsw_sp* %0, %struct.net_device* %1, %struct.mlxsw_sp_span_entry_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_span_parms, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mlxsw_sp_span_entry_ops*, align 8
  %10 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %6, i32 0, i32 0
  store i32 %3, i32* %12, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.mlxsw_sp_span_entry_ops* %2, %struct.mlxsw_sp_span_entry_ops** %9, align 8
  store %struct.mlxsw_sp_span_entry* null, %struct.mlxsw_sp_span_entry** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %40, %4
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %13
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %20
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %35, i64 %37
  store %struct.mlxsw_sp_span_entry* %38, %struct.mlxsw_sp_span_entry** %10, align 8
  br label %43

39:                                               ; preds = %20
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %13

43:                                               ; preds = %31, %13
  %44 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %10, align 8
  %45 = icmp ne %struct.mlxsw_sp_span_entry* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store %struct.mlxsw_sp_span_entry* null, %struct.mlxsw_sp_span_entry** %5, align 8
  br label %62

47:                                               ; preds = %43
  %48 = load %struct.mlxsw_sp_span_entry_ops*, %struct.mlxsw_sp_span_entry_ops** %9, align 8
  %49 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %10, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %49, i32 0, i32 2
  store %struct.mlxsw_sp_span_entry_ops* %48, %struct.mlxsw_sp_span_entry_ops** %50, align 8
  %51 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %10, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %10, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %54, i32 0, i32 1
  store %struct.net_device* %53, %struct.net_device** %55, align 8
  %56 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %57 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %10, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @mlxsw_sp_span_entry_configure(%struct.mlxsw_sp* %56, %struct.mlxsw_sp_span_entry* %57, i32 %59)
  %61 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %10, align 8
  store %struct.mlxsw_sp_span_entry* %61, %struct.mlxsw_sp_span_entry** %5, align 8
  br label %62

62:                                               ; preds = %47, %46
  %63 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %5, align 8
  ret %struct.mlxsw_sp_span_entry* %63
}

declare dso_local i32 @mlxsw_sp_span_entry_configure(%struct.mlxsw_sp*, %struct.mlxsw_sp_span_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
