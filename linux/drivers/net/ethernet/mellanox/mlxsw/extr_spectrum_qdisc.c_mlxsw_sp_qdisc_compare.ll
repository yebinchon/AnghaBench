; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_qdisc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_qdisc*, i64, i32)* @mlxsw_sp_qdisc_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_compare(%struct.mlxsw_sp_qdisc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_qdisc* %0, %struct.mlxsw_sp_qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %8 = icmp ne %struct.mlxsw_sp_qdisc* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %14, %9, %3
  %29 = phi i1 [ false, %14 ], [ false, %9 ], [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
