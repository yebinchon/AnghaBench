; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_qdisc = type { i64, i32 }
%struct.mlxsw_sp_port = type { %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc* }

@TC_H_ROOT = common dso_local global i64 0, align 8
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_qdisc* (%struct.mlxsw_sp_port*, i64, i32)* @mlxsw_sp_qdisc_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_qdisc* @mlxsw_sp_qdisc_find(%struct.mlxsw_sp_port* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @TC_H_ROOT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %15, align 8
  store %struct.mlxsw_sp_qdisc* %16, %struct.mlxsw_sp_qdisc** %4, align 8
  br label %58

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %21, i32 0, i32 1
  %23 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %22, align 8
  %24 = icmp ne %struct.mlxsw_sp_qdisc* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 1
  %28 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %27, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @TC_H_MAJ(i64 %33)
  %35 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %35, i32 0, i32 1
  %37 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %36, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @TC_H_MIN(i64 %42)
  %44 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %32, %25, %20, %17
  store %struct.mlxsw_sp_qdisc* null, %struct.mlxsw_sp_qdisc** %4, align 8
  br label %58

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @TC_H_MIN(i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @MLXSW_SP_PRIO_CHILD_TO_TCLASS(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %52, i32 0, i32 0
  %54 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %54, i64 %56
  store %struct.mlxsw_sp_qdisc* %57, %struct.mlxsw_sp_qdisc** %4, align 8
  br label %58

58:                                               ; preds = %47, %46, %13
  %59 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  ret %struct.mlxsw_sp_qdisc* %59
}

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local i32 @TC_H_MIN(i64) #1

declare dso_local i32 @MLXSW_SP_PRIO_CHILD_TO_TCLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
