; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i64, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32, i64 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"adding VLAN:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed configuring VLAN filter\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed adding vlan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mlx4_en_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx4_en_priv* %12, %struct.mlx4_en_priv** %7, align 8
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 3
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  store %struct.mlx4_en_dev* %15, %struct.mlx4_en_dev** %8, align 8
  %16 = load i32, i32* @HW, align 4
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @en_dbg(i32 %16, %struct.mlx4_en_priv* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @set_bit(i32 %20, i32 %23)
  %25 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %3
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %42 = call i32 @mlx4_SET_VLAN_FLTR(i32 %40, %struct.mlx4_en_priv* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %47 = call i32 @en_err(%struct.mlx4_en_priv* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %66

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %32, %3
  %50 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @mlx4_register_vlan(i32 %52, i32 %55, i32 %56, i32* %10)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %49
  %61 = load i32, i32* @HW, align 4
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @en_dbg(i32 %61, %struct.mlx4_en_priv* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %49
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_SET_VLAN_FLTR(i32, %struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_register_vlan(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
