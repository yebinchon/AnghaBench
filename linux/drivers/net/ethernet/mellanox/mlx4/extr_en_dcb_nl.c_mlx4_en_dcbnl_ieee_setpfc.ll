; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setpfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i8*, i32, i32, i32 }
%struct.mlx4_en_priv = type { i32, i64, i32, %struct.mlx4_en_dev*, %struct.mlx4_en_port_profile* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_port_profile = type { i8*, i8*, i8*, i8* }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cap: 0x%x en: 0x%x mbc: 0x%x delay: %d\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed setting pause params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_pfc*)* @mlx4_en_dcbnl_ieee_setpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_ieee_setpfc(%struct.net_device* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_pfc*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_port_profile*, align 8
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx4_en_priv* %15, %struct.mlx4_en_priv** %6, align 8
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 4
  %18 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %17, align 8
  store %struct.mlx4_en_port_profile* %18, %struct.mlx4_en_port_profile** %7, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 3
  %21 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %20, align 8
  store %struct.mlx4_en_dev* %21, %struct.mlx4_en_dev** %8, align 8
  %22 = load i32, i32* @DRV, align 4
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %24 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %25 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %28 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %31 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %34 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @en_dbg(i32 %22, %struct.mlx4_en_priv* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %29, i32 %32, i32 %35)
  %37 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %43 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %2
  %48 = phi i1 [ false, %2 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %11, align 8
  %52 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %58 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %47
  %63 = phi i1 [ false, %47 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %9, align 8
  %67 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %68 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %12, align 8
  %70 = load %struct.ieee_pfc*, %struct.ieee_pfc** %5, align 8
  %71 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %10, align 8
  %73 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %77 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ETH_FCS_LEN, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @mlx4_SET_PORT_general(i32 %75, i32 %78, i64 %83, i8* %84, i8* %85, i8* %86, i8* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %62
  %92 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %93 = call i32 @en_err(%struct.mlx4_en_priv* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %3, align 4
  br label %119

95:                                               ; preds = %62
  %96 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %99, i32 0, i32 0
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @mlx4_en_update_pfc_stats_bitmap(i32 %98, i32* %100, i8* %101, i8* %102, i8* %103, i8* %104)
  %106 = load i8*, i8** %10, align 8
  %107 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %114 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %117 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %95, %91
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_general(i32, i32, i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_update_pfc_stats_bitmap(i32, i32*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
