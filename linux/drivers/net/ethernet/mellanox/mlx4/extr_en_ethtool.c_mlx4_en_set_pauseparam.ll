; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i64 }
%struct.mlx4_en_priv = type { %struct.TYPE_2__*, i32, i64, i32, %struct.mlx4_en_dev* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.mlx4_en_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Failed setting pause params, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @mlx4_en_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.mlx4_en_priv* %14, %struct.mlx4_en_priv** %6, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 4
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %7, align 8
  %18 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %127

25:                                               ; preds = %2
  %26 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %8, align 8
  %35 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %25
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %25
  br label %56

50:                                               ; preds = %46
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi i8* [ null, %49 ], [ %55, %50 ]
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %56
  br label %70

64:                                               ; preds = %60
  %65 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  br label %70

70:                                               ; preds = %64, %63
  %71 = phi i8* [ null, %63 ], [ %69, %64 ]
  store i8* %71, i8** %9, align 8
  %72 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ETH_FCS_LEN, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @mlx4_SET_PORT_general(i32 %74, i32 %77, i64 %82, i8* %83, i8* %84, i8* %85, i8* %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %70
  %91 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @en_err(%struct.mlx4_en_priv* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %3, align 4
  br label %127

95:                                               ; preds = %70
  %96 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %100 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %99, i32 0, i32 1
  %101 = load i8*, i8** %11, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @mlx4_en_update_pfc_stats_bitmap(i32 %98, i32* %100, i8* %101, i8* %102, i8* %103, i8* %104)
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i8* %106, i8** %110, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i8* %111, i8** %115, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %118 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i8* %116, i8** %120, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %123 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i8* %121, i8** %125, align 8
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %95, %90, %22
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_SET_PORT_general(i32, i32, i64, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mlx4_en_update_pfc_stats_bitmap(i32, i32*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
