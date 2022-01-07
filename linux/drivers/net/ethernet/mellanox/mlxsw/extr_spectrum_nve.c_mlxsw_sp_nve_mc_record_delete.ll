; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_mc_record_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_nve_mc_record = type { i64, i32, %struct.mlxsw_sp_nve_mc_entry*, %struct.TYPE_2__* }
%struct.mlxsw_sp_nve_mc_entry = type { i32 }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_nve* }
%struct.mlxsw_sp_nve = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_nve_mc_record*)* @mlxsw_sp_nve_mc_record_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_nve_mc_record_delete(%struct.mlxsw_sp_nve_mc_record* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_nve_mc_record*, align 8
  %3 = alloca %struct.mlxsw_sp_nve*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_nve_mc_entry*, align 8
  store %struct.mlxsw_sp_nve_mc_record* %0, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %7 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %10, align 8
  store %struct.mlxsw_sp_nve* %11, %struct.mlxsw_sp_nve** %3, align 8
  %12 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %40, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %25, i32 0, i32 2
  %27 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %27, i64 %29
  store %struct.mlxsw_sp_nve_mc_entry* %30, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %31 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_entry, %struct.mlxsw_sp_nve_mc_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %38 = load %struct.mlxsw_sp_nve_mc_entry*, %struct.mlxsw_sp_nve_mc_entry** %6, align 8
  %39 = call i32 @mlxsw_sp_nve_mc_record_entry_del(%struct.mlxsw_sp_nve_mc_record* %37, %struct.mlxsw_sp_nve_mc_entry* %38)
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_nve_mc_record, %struct.mlxsw_sp_nve_mc_record* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_record** %2, align 8
  %49 = call i32 @mlxsw_sp_nve_mc_record_put(%struct.mlxsw_sp_nve_mc_record* %48)
  ret void
}

declare dso_local i32 @mlxsw_sp_nve_mc_record_entry_del(%struct.mlxsw_sp_nve_mc_record*, %struct.mlxsw_sp_nve_mc_entry*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_nve_mc_record_put(%struct.mlxsw_sp_nve_mc_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
