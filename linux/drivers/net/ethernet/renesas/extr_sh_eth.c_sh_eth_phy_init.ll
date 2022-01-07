; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sh_eth_private = type { i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__*, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@sh_eth_adjust_link = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to connect PHY\0A\00", align 1
@SH_ETH_REG_GIGABIT = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to limit PHY to 100 Mbit/s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_phy_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sh_eth_private*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %17)
  store %struct.sh_eth_private* %18, %struct.sh_eth_private** %5, align 8
  %19 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %20 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %22 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %24 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %29, %struct.device_node** %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load %struct.device_node*, %struct.device_node** %7, align 8
  %32 = load i32, i32* @sh_eth_adjust_link, align 4
  %33 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %34 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %30, %struct.device_node* %31, i32 %32, i32 0, i32 %35)
  store %struct.phy_device* %36, %struct.phy_device** %6, align 8
  %37 = load %struct.device_node*, %struct.device_node** %7, align 8
  %38 = call i32 @of_node_put(%struct.device_node* %37)
  %39 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %40 = icmp ne %struct.phy_device* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.phy_device* @ERR_PTR(i32 %43)
  store %struct.phy_device* %44, %struct.phy_device** %6, align 8
  br label %45

45:                                               ; preds = %41, %27
  br label %70

46:                                               ; preds = %1
  %47 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %48 = add nsw i32 %47, 3
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %8, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %9, align 8
  %52 = trunc i64 %49 to i32
  %53 = load i8*, i8** @PHY_ID_FMT, align 8
  %54 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %55 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %60 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snprintf(i8* %51, i32 %52, i8* %53, i32 %58, i32 %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = load i32, i32* @sh_eth_adjust_link, align 4
  %65 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %66 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.phy_device* @phy_connect(%struct.net_device* %63, i8* %51, i32 %64, i32 %67)
  store %struct.phy_device* %68, %struct.phy_device** %6, align 8
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  br label %70

70:                                               ; preds = %46, %45
  %71 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %72 = call i64 @IS_ERR(%struct.phy_device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %78 = call i32 @PTR_ERR(%struct.phy_device* %77)
  store i32 %78, i32* %2, align 4
  br label %103

79:                                               ; preds = %70
  %80 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %81 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SH_ETH_REG_GIGABIT, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %79
  %88 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %89 = load i32, i32* @SPEED_100, align 4
  %90 = call i32 @phy_set_max_speed(%struct.phy_device* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = call i32 @netdev_err(%struct.net_device* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %97 = call i32 @phy_disconnect(%struct.phy_device* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %103

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %79
  %101 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %102 = call i32 @phy_attached_info(%struct.phy_device* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %93, %74
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.phy_device* @ERR_PTR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
