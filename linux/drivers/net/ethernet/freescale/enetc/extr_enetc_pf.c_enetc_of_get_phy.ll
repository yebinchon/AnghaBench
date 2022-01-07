; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_of_get_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_of_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_ndev_priv = type { %struct.device_node*, %struct.TYPE_2__*, i64, i32 }
%struct.device_node = type { i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.enetc_pf = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"missing ENETC port node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PHY not specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"fixed link registration failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"missing phy type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_ndev_priv*)* @enetc_of_get_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_of_get_phy(%struct.enetc_ndev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enetc_ndev_priv*, align 8
  %4 = alloca %struct.enetc_pf*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.enetc_ndev_priv* %0, %struct.enetc_ndev_priv** %3, align 8
  %8 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.enetc_pf* @enetc_si_priv(i32 %10)
  store %struct.enetc_pf* %11, %struct.enetc_pf** %4, align 8
  %12 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %13 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %113

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %29 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %30 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %29, i32 0, i32 0
  store %struct.device_node* %28, %struct.device_node** %30, align 8
  %31 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %32 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %31, i32 0, i32 0
  %33 = load %struct.device_node*, %struct.device_node** %32, align 8
  %34 = icmp ne %struct.device_node* %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %26
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i64 @of_phy_is_fixed_link(%struct.device_node* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %41 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = call i32 @dev_err(%struct.TYPE_2__* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %113

46:                                               ; preds = %35
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i32 @of_phy_register_fixed_link(%struct.device_node* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %53 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @dev_err(%struct.TYPE_2__* %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %113

57:                                               ; preds = %46
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call %struct.device_node* @of_node_get(%struct.device_node* %58)
  %60 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %61 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %60, i32 0, i32 0
  store %struct.device_node* %59, %struct.device_node** %61, align 8
  br label %62

62:                                               ; preds = %57, %26
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.device_node* %64, %struct.device_node** %6, align 8
  %65 = load %struct.device_node*, %struct.device_node** %6, align 8
  %66 = icmp ne %struct.device_node* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load %struct.device_node*, %struct.device_node** %6, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  %70 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %71 = call i32 @enetc_mdio_probe(%struct.enetc_pf* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %76 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %75, i32 0, i32 0
  %77 = load %struct.device_node*, %struct.device_node** %76, align 8
  %78 = call i32 @of_node_put(%struct.device_node* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  br label %113

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %62
  %82 = load %struct.device_node*, %struct.device_node** %5, align 8
  %83 = call i64 @of_get_phy_mode(%struct.device_node* %82)
  %84 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %85 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %87 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %81
  %92 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %93 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = call i32 @dev_err(%struct.TYPE_2__* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %3, align 8
  %97 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %96, i32 0, i32 0
  %98 = load %struct.device_node*, %struct.device_node** %97, align 8
  %99 = call i32 @of_node_put(%struct.device_node* %98)
  %100 = load %struct.device_node*, %struct.device_node** %5, align 8
  %101 = call i64 @of_phy_is_fixed_link(%struct.device_node* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.device_node*, %struct.device_node** %5, align 8
  %105 = call i32 @of_phy_deregister_fixed_link(%struct.device_node* %104)
  br label %109

106:                                              ; preds = %91
  %107 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %108 = call i32 @enetc_mdio_remove(%struct.enetc_pf* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %109, %74, %51, %39, %19
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.enetc_pf* @enetc_si_priv(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @enetc_mdio_probe(%struct.enetc_pf*) #1

declare dso_local i64 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @of_phy_deregister_fixed_link(%struct.device_node*) #1

declare dso_local i32 @enetc_mdio_remove(%struct.enetc_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
