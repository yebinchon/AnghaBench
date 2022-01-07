; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_pfc_cnt_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_port_pfc_cnt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.TYPE_2__, %struct.mlxsw_sp* }
%struct.TYPE_2__ = type { %struct.ieee_pfc* }
%struct.ieee_pfc = type { i32*, i32* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_PPCNT_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_PPCNT_PRIO_CNT = common dso_local global i32 0, align 4
@ppcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i64)* @mlxsw_sp_port_pfc_cnt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_pfc_cnt_get(%struct.mlxsw_sp_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca %struct.ieee_pfc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 2
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %6, align 8
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ieee_pfc*, %struct.ieee_pfc** %17, align 8
  store %struct.ieee_pfc* %18, %struct.ieee_pfc** %7, align 8
  %19 = load i32, i32* @MLXSW_REG_PPCNT_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MLXSW_REG_PPCNT_PRIO_CNT, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @mlxsw_reg_ppcnt_pack(i8* %22, i32 %25, i32 %26, i64 %27)
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ppcnt, align 4
  %33 = call i32 @MLXSW_REG(i32 %32)
  %34 = call i32 @mlxsw_reg_query(i32 %31, i32 %33, i8* %22)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %52

39:                                               ; preds = %2
  %40 = call i32 @mlxsw_reg_ppcnt_tx_pause_get(i8* %22)
  %41 = load %struct.ieee_pfc*, %struct.ieee_pfc** %7, align 8
  %42 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = call i32 @mlxsw_reg_ppcnt_rx_pause_get(i8* %22)
  %47 = load %struct.ieee_pfc*, %struct.ieee_pfc** %7, align 8
  %48 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %46, i32* %51, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %39, %37
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ppcnt_pack(i8*, i32, i32, i64) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_ppcnt_tx_pause_get(i8*) #2

declare dso_local i32 @mlxsw_reg_ppcnt_rx_pause_get(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
