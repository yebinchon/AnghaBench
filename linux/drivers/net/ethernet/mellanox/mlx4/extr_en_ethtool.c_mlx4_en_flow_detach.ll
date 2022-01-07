; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_flow_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_flow_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ethtool_flow_id = type { i32, i32, i64 }
%struct.mlx4_en_priv = type { %struct.TYPE_3__*, %struct.ethtool_flow_id* }
%struct.TYPE_3__ = type { i32 }

@MAX_NUM_OF_FS_RULES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Fail to detach network rule at location %d. registration id = 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @mlx4_en_flow_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_flow_detach(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_flow_id*, align 8
  %8 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %8, align 8
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAX_NUM_OF_FS_RULES, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %69

20:                                               ; preds = %2
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 1
  %23 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %22, align 8
  %24 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %23, i64 %27
  store %struct.ethtool_flow_id* %28, %struct.ethtool_flow_id** %7, align 8
  %29 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %7, align 8
  %30 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %67

36:                                               ; preds = %20
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %7, align 8
  %43 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @mlx4_flow_detach(i32 %41, i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %50 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %7, align 8
  %55 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @en_err(%struct.mlx4_en_priv* %49, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %56)
  br label %67

58:                                               ; preds = %36
  %59 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %7, align 8
  %60 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %7, align 8
  %62 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %61, i32 0, i32 1
  %63 = call i32 @memset(i32* %62, i32 0, i32 4)
  %64 = load %struct.ethtool_flow_id*, %struct.ethtool_flow_id** %7, align 8
  %65 = getelementptr inbounds %struct.ethtool_flow_id, %struct.ethtool_flow_id* %64, i32 0, i32 0
  %66 = call i32 @list_del(i32* %65)
  br label %67

67:                                               ; preds = %58, %48, %33
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_flow_detach(i32, i64) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
