; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_vr = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*)* @mlxsw_sp_vr_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_vr_put(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_vr* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_vr* %1, %struct.mlxsw_sp_vr** %4, align 8
  %5 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i64 @list_empty(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %9
  %17 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @mlxsw_sp_mr_table_empty(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @mlxsw_sp_mr_table_empty(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %43 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  %44 = call i32 @mlxsw_sp_vr_destroy(%struct.mlxsw_sp* %42, %struct.mlxsw_sp_vr* %43)
  br label %45

45:                                               ; preds = %41, %32, %23, %16, %9, %2
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @mlxsw_sp_mr_table_empty(i32) #1

declare dso_local i32 @mlxsw_sp_vr_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
