; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/ipoib/extr_ipoib_vlan.c_mlx5i_pkey_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx5e_priv = type { i32, i32, i32**, %struct.TYPE_3__*, i32, %struct.mlx5_core_dev*, %struct.mlx5i_priv* }
%struct.TYPE_3__ = type { i32 (%struct.mlx5e_priv*)* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5i_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"prepare child underlay qp state failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"attach child underlay qp to ft failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"create child tis failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"opening child channels failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mlx5i_pkey_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5i_pkey_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5i_priv*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device* %8)
  store %struct.mlx5e_priv* %9, %struct.mlx5e_priv** %4, align 8
  %10 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %10, i32 0, i32 6
  %12 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %11, align 8
  store %struct.mlx5i_priv* %12, %struct.mlx5i_priv** %5, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 5
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %6, align 8
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %24 = call i32 @mlx5i_init_underlay_qp(%struct.mlx5e_priv* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %107

31:                                               ; preds = %1
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %33 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlx5_fs_add_rx_underlay_qpn(%struct.mlx5_core_dev* %32, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %104

44:                                               ; preds = %31
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %46 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %51 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = call i32 @mlx5i_create_tis(%struct.mlx5_core_dev* %45, i32 %49, i32* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %44
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %97

63:                                               ; preds = %44
  %64 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %65 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %65, i32 0, i32 4
  %67 = call i32 @mlx5e_open_channels(%struct.mlx5e_priv* %64, i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %87

74:                                               ; preds = %63
  %75 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.mlx5e_priv*)*, i32 (%struct.mlx5e_priv*)** %78, align 8
  %80 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %81 = call i32 %79(%struct.mlx5e_priv* %80)
  %82 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %83 = call i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv* %82)
  %84 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %85 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  store i32 0, i32* %2, align 4
  br label %116

87:                                               ; preds = %70
  %88 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %89 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %90 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @mlx5e_destroy_tis(%struct.mlx5_core_dev* %88, i32 %95)
  br label %97

97:                                               ; preds = %87, %59
  %98 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %99 = load %struct.mlx5i_priv*, %struct.mlx5i_priv** %5, align 8
  %100 = getelementptr inbounds %struct.mlx5i_priv, %struct.mlx5i_priv* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @mlx5_fs_remove_rx_underlay_qpn(%struct.mlx5_core_dev* %98, i32 %102)
  br label %104

104:                                              ; preds = %97, %40
  %105 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %106 = call i32 @mlx5i_uninit_underlay_qp(%struct.mlx5e_priv* %105)
  br label %107

107:                                              ; preds = %104, %27
  %108 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %109 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %110 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %109, i32 0, i32 1
  %111 = call i32 @clear_bit(i32 %108, i32* %110)
  %112 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %113 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %107, %74
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.mlx5e_priv* @mlx5i_epriv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mlx5i_init_underlay_qp(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_fs_add_rx_underlay_qpn(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5i_create_tis(%struct.mlx5_core_dev*, i32, i32*) #1

declare dso_local i32 @mlx5e_open_channels(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_activate_priv_channels(%struct.mlx5e_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlx5e_destroy_tis(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_fs_remove_rx_underlay_qpn(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5i_uninit_underlay_qp(%struct.mlx5e_priv*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
