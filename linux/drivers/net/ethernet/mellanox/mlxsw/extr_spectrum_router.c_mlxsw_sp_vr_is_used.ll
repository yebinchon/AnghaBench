; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_is_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_is_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_vr = type { i32*, i32, i32 }

@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_vr*)* @mlxsw_sp_vr_is_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_vr_is_used(%struct.mlxsw_sp_vr* %0) #0 {
  %2 = alloca %struct.mlxsw_sp_vr*, align 8
  store %struct.mlxsw_sp_vr* %0, %struct.mlxsw_sp_vr** %2, align 8
  %3 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %2, align 8
  %4 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  %13 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %20, %12, %7, %1
  %31 = phi i1 [ true, %12 ], [ true, %7 ], [ true, %1 ], [ %29, %20 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
