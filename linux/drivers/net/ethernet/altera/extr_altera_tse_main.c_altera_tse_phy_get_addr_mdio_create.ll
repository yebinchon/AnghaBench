; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_altera_tse_phy_get_addr_mdio_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_altera_tse_phy_get_addr_mdio_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.altera_tse_private = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"phy-addr\00", align 1
@POLL_PHY = common dso_local global i64 0, align 8
@PHY_MAX_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid phy-addr specified %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@instance_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @altera_tse_phy_get_addr_mdio_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_tse_phy_get_addr_mdio_create(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.altera_tse_private*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %7)
  store %struct.altera_tse_private* %8, %struct.altera_tse_private** %4, align 8
  %9 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %10 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_get_phy_mode(%struct.device_node* %14)
  %16 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %17 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %19 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

23:                                               ; preds = %1
  %24 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %25 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.device_node*, %struct.device_node** %27, align 8
  %29 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %30 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %29, i32 0, i32 0
  %31 = call i64 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i64, i64* @POLL_PHY, align 8
  %35 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %36 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %39 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @POLL_PHY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %62, label %43

43:                                               ; preds = %37
  %44 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %45 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %50 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PHY_MAX_ADDR, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %62, label %54

54:                                               ; preds = %48, %43
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %57 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %72

62:                                               ; preds = %48, %37
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @atomic_add_return(i32 1, i32* @instance_count)
  %65 = call i32 @altera_tse_mdio_create(%struct.net_device* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %68, %54, %22
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @altera_tse_mdio_create(%struct.net_device*, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
