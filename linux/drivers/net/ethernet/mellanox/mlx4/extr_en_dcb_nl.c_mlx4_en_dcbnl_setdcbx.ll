; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_setdcbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_setdcbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32 }
%struct.ieee_ets = type { i8*, i32 }
%struct.ieee_pfc = type { i8*, i32 }

@DCB_CAP_DCBX_LLD_MANAGED = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_HOST = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx4_en_dcbnl_setdcbx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_setdcbx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.ieee_ets, align 8
  %8 = alloca %struct.ieee_pfc, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %6, align 8
  %11 = bitcast %struct.ieee_ets* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = bitcast %struct.ieee_pfc* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DCB_CAP_DCBX_LLD_MANAGED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DCB_CAP_DCBX_HOST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29, %19
  br label %92

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** @IEEE_8021QAZ_MAX_TCS, align 8
  %45 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %7, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load i8*, i8** @IEEE_8021QAZ_MAX_TCS, align 8
  %47 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %8, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %40
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i64 @mlx4_en_dcbnl_ieee_setets(%struct.net_device* %53, %struct.ieee_ets* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %92

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i64 @mlx4_en_dcbnl_ieee_setpfc(%struct.net_device* %58, %struct.ieee_pfc* %8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %92

62:                                               ; preds = %57
  br label %91

63:                                               ; preds = %40
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = call i64 @mlx4_en_dcbnl_set_all(%struct.net_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %92

73:                                               ; preds = %68
  br label %90

74:                                               ; preds = %63
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i64 @mlx4_en_dcbnl_ieee_setets(%struct.net_device* %75, %struct.ieee_ets* %7)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %92

79:                                               ; preds = %74
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = call i64 @mlx4_en_dcbnl_ieee_setpfc(%struct.net_device* %80, %struct.ieee_pfc* %8)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %92

84:                                               ; preds = %79
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i64 @mlx4_en_alloc_tx_queue_per_tc(%struct.net_device* %85, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %92

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %73
  br label %91

91:                                               ; preds = %90, %62
  store i32 0, i32* %3, align 4
  br label %93

92:                                               ; preds = %88, %83, %78, %72, %61, %56, %39
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %91, %18
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @mlx4_en_dcbnl_ieee_setets(%struct.net_device*, %struct.ieee_ets*) #1

declare dso_local i64 @mlx4_en_dcbnl_ieee_setpfc(%struct.net_device*, %struct.ieee_pfc*) #1

declare dso_local i64 @mlx4_en_dcbnl_set_all(%struct.net_device*) #1

declare dso_local i64 @mlx4_en_alloc_tx_queue_per_tc(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
