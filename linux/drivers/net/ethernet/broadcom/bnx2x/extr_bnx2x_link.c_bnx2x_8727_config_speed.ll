; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_config_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_config_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64, i64, i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@ETH_PHY_SFP_1G_FIBER = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Setting 1G force\0A\00", align 1
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_10G_CTRL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"1.7 = 0x%x\0A\00", align 1
@MDIO_PMA_REG_8727_PCS_GP = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Setting 1G clause37\0A\00", align 1
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_8727_MISC_CTRL = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_8727_config_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_8727_config_speed(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 0
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPEED_1000, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ETH_PHY_SFP_1G_FIBER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %61

22:                                               ; preds = %16, %2
  %23 = load i32, i32* @NETIF_MSG_LINK, align 4
  %24 = call i32 (i32, i8*, ...) @DP(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %26 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %27 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %28 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %29 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %25, %struct.bnx2x_phy* %26, i32 %27, i32 %28, i32 64)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %31 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %32 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %33 = load i32, i32* @MDIO_PMA_REG_10G_CTRL2, align 4
  %34 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %30, %struct.bnx2x_phy* %31, i32 %32, i32 %33, i32 13)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %36 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %37 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %38 = load i32, i32* @MDIO_PMA_REG_10G_CTRL2, align 4
  %39 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %35, %struct.bnx2x_phy* %36, i32 %37, i32 %38, i32* %6)
  %40 = load i32, i32* @NETIF_MSG_LINK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i8*, ...) @DP(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.link_params*, %struct.link_params** %4, align 8
  %44 = call i64 @DUAL_MEDIA(%struct.link_params* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %22
  %47 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %49 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %50 = load i32, i32* @MDIO_PMA_REG_8727_PCS_GP, align 4
  %51 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %47, %struct.bnx2x_phy* %48, i32 %49, i32 %50, i32* %7)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, 3072
  store i32 %53, i32* %7, align 4
  %54 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %55 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %56 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %57 = load i32, i32* @MDIO_PMA_REG_8727_PCS_GP, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %54, %struct.bnx2x_phy* %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %46, %22
  br label %117

61:                                               ; preds = %16
  %62 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %63 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %61
  %68 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %69 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %67
  %75 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %76 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %74
  %83 = load i32, i32* @NETIF_MSG_LINK, align 4
  %84 = call i32 (i32, i8*, ...) @DP(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %86 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %87 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %88 = load i32, i32* @MDIO_AN_REG_8727_MISC_CTRL, align 4
  %89 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %85, %struct.bnx2x_phy* %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %91 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %92 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %93 = load i32, i32* @MDIO_AN_REG_CL37_AN, align 4
  %94 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %90, %struct.bnx2x_phy* %91, i32 %92, i32 %93, i32 4864)
  br label %116

95:                                               ; preds = %74, %67, %61
  %96 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %97 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %98 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %99 = load i32, i32* @MDIO_AN_REG_8727_MISC_CTRL, align 4
  %100 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %96, %struct.bnx2x_phy* %97, i32 %98, i32 %99, i32 32)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %102 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %103 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %104 = load i32, i32* @MDIO_AN_REG_CL37_AN, align 4
  %105 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %101, %struct.bnx2x_phy* %102, i32 %103, i32 %104, i32 256)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %107 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %108 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %109 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %110 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %106, %struct.bnx2x_phy* %107, i32 %108, i32 %109, i32 8256)
  %111 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %112 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %113 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %114 = load i32, i32* @MDIO_PMA_REG_10G_CTRL2, align 4
  %115 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %111, %struct.bnx2x_phy* %112, i32 %113, i32 %114, i32 8)
  br label %116

116:                                              ; preds = %95, %82
  br label %117

117:                                              ; preds = %116, %60
  ret void
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i64 @DUAL_MEDIA(%struct.link_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
