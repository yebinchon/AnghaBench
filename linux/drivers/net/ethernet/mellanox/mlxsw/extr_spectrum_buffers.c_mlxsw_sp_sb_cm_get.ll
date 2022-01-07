; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_cm_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_cm_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_sb_cm = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_sb_port* }
%struct.mlxsw_sp_sb_port = type { %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm* }

@MLXSW_REG_SBXX_DIR_INGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_sb_cm* (%struct.mlxsw_sp*, i64, i64, i32)* @mlxsw_sp_sb_cm_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_sb_cm* @mlxsw_sp_sb_cm_get(%struct.mlxsw_sp* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp_sb_cm*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlxsw_sp_sb_port*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_sb_port*, %struct.mlxsw_sp_sb_port** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_sb_port, %struct.mlxsw_sp_sb_port* %15, i64 %16
  store %struct.mlxsw_sp_sb_port* %17, %struct.mlxsw_sp_sb_port** %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mlxsw_sp_sb_cm_exists(i64 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MLXSW_REG_SBXX_DIR_INGRESS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.mlxsw_sp_sb_port*, %struct.mlxsw_sp_sb_port** %10, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_sb_port, %struct.mlxsw_sp_sb_port* %29, i32 0, i32 1
  %31 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %31, i64 %32
  store %struct.mlxsw_sp_sb_cm* %33, %struct.mlxsw_sp_sb_cm** %5, align 8
  br label %40

34:                                               ; preds = %4
  %35 = load %struct.mlxsw_sp_sb_port*, %struct.mlxsw_sp_sb_port** %10, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_sb_port, %struct.mlxsw_sp_sb_port* %35, i32 0, i32 0
  %37 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_sb_cm, %struct.mlxsw_sp_sb_cm* %37, i64 %38
  store %struct.mlxsw_sp_sb_cm* %39, %struct.mlxsw_sp_sb_cm** %5, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.mlxsw_sp_sb_cm*, %struct.mlxsw_sp_sb_cm** %5, align 8
  ret %struct.mlxsw_sp_sb_cm* %41
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mlxsw_sp_sb_cm_exists(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
