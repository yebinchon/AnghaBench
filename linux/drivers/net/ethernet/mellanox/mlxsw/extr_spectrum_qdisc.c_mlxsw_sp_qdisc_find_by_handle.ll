; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_find_by_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_find_by_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_qdisc = type { i64 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc* }

@TC_H_UNSPEC = common dso_local global i64 0, align 8
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_qdisc* (%struct.mlxsw_sp_port*, i64)* @mlxsw_sp_qdisc_find_by_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_qdisc* @mlxsw_sp_qdisc_find_by_handle(%struct.mlxsw_sp_port* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %7, i32 0, i32 1
  %9 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %8, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %16, align 8
  store %struct.mlxsw_sp_qdisc* %17, %struct.mlxsw_sp_qdisc** %3, align 8
  br label %55

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %19, i32 0, i32 1
  %21 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %20, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TC_H_UNSPEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store %struct.mlxsw_sp_qdisc* null, %struct.mlxsw_sp_qdisc** %3, align 8
  br label %55

27:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %33, i32 0, i32 0
  %35 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %35, i64 %37
  %39 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %44, i32 0, i32 0
  %46 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %46, i64 %48
  store %struct.mlxsw_sp_qdisc* %49, %struct.mlxsw_sp_qdisc** %3, align 8
  br label %55

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %28

54:                                               ; preds = %28
  store %struct.mlxsw_sp_qdisc* null, %struct.mlxsw_sp_qdisc** %3, align 8
  br label %55

55:                                               ; preds = %54, %43, %26, %14
  %56 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %3, align 8
  ret %struct.mlxsw_sp_qdisc* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
