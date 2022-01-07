; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.net_device*, %struct.TYPE_4__* }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.phy_device = type { i32 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to register fixed PHY link: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not find valid phy node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ag71xx_phy_link_adjust = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not connect to PHY device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx*)* @ag71xx_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_phy_connect(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %9 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %10 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %16 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i64 @of_phy_is_fixed_link(%struct.device_node* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_phy_register_fixed_link(%struct.device_node* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %28 = load i32, i32* @probe, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %27, i32 %28, %struct.net_device* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %2, align 4
  br label %73

33:                                               ; preds = %21
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call %struct.device_node* @of_node_get(%struct.device_node* %34)
  store %struct.device_node* %35, %struct.device_node** %6, align 8
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %38, %struct.device_node** %6, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = icmp ne %struct.device_node* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %44 = load i32, i32* @probe, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %43, i32 %44, %struct.net_device* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %73

49:                                               ; preds = %39
  %50 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %51 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %50, i32 0, i32 1
  %52 = load %struct.net_device*, %struct.net_device** %51, align 8
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = load i32, i32* @ag71xx_phy_link_adjust, align 4
  %55 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %56 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %52, %struct.device_node* %53, i32 %54, i32 0, i32 %57)
  store %struct.phy_device* %58, %struct.phy_device** %7, align 8
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = call i32 @of_node_put(%struct.device_node* %59)
  %61 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %62 = icmp ne %struct.phy_device* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %49
  %64 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %65 = load i32, i32* @probe, align 4
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = call i32 (%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) @netif_err(%struct.ag71xx* %64, i32 %65, %struct.net_device* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %73

70:                                               ; preds = %49
  %71 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %72 = call i32 @phy_attached_info(%struct.phy_device* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %63, %42, %26
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @of_phy_is_fixed_link(%struct.device_node*) #1

declare dso_local i32 @of_phy_register_fixed_link(%struct.device_node*) #1

declare dso_local i32 @netif_err(%struct.ag71xx*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
