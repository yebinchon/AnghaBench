; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_phy_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_phy_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.mv643xx_eth_private = type { i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@MV643XX_ETH_PHY_ADDR_DEFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PHY_ID_FMT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"orion-mdio-mii\00", align 1
@mv643xx_eth_adjust_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_device* (%struct.mv643xx_eth_private*, i32)* @phy_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_device* @phy_scan(%struct.mv643xx_eth_private* %0, i32 %1) #0 {
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %13 = add nsw i32 %12, 3
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MV643XX_ETH_PHY_ADDR_DEFAULT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %22 = call i32 @phy_addr_get(%struct.mv643xx_eth_private* %21)
  %23 = and i32 %22, 31
  store i32 %23, i32* %6, align 4
  store i32 32, i32* %7, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 31
  store i32 %26, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.phy_device* @ERR_PTR(i32 %29)
  store %struct.phy_device* %30, %struct.phy_device** %5, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %59, %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = and i32 %38, 31
  store i32 %39, i32* %11, align 4
  %40 = trunc i64 %14 to i32
  %41 = load i8*, i8** @PHY_ID_FMT, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @snprintf(i8* %16, i32 %40, i8* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %45 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @mv643xx_eth_adjust_link, align 4
  %48 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %49 = call i32 @get_phy_mode(%struct.mv643xx_eth_private* %48)
  %50 = call %struct.phy_device* @phy_connect(i32 %46, i8* %16, i32 %47, i32 %49)
  store %struct.phy_device* %50, %struct.phy_device** %5, align 8
  %51 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %52 = call i32 @IS_ERR(%struct.phy_device* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %35
  %55 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @phy_addr_set(%struct.mv643xx_eth_private* %55, i32 %56)
  br label %62

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %31

62:                                               ; preds = %54, %31
  %63 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %64 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %64)
  ret %struct.phy_device* %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @phy_addr_get(%struct.mv643xx_eth_private*) #2

declare dso_local %struct.phy_device* @ERR_PTR(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local %struct.phy_device* @phy_connect(i32, i8*, i32, i32) #2

declare dso_local i32 @get_phy_mode(%struct.mv643xx_eth_private*) #2

declare dso_local i32 @IS_ERR(%struct.phy_device*) #2

declare dso_local i32 @phy_addr_set(%struct.mv643xx_eth_private*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
