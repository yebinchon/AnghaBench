; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8706_8726_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8706_8726_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32, i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"XGXS 8706/8726\0A\00", align 1
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXSTAT = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_TXSTAT = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_TXCTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"8706/8726 LASI status 0x%x--> 0x%x\0A\00", align 1
@MDIO_PMA_REG_RX_SD = common dso_local global i32 0, align 4
@MDIO_PCS_DEVAD = common dso_local global i32 0, align 4
@MDIO_PCS_REG_STATUS = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_LINK_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"8706/8726 rx_sd 0x%x pcs_status 0x%x 1Gbps link_status 0x%x\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8706_8726_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8706_8726_read_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.link_params*, %struct.link_params** %5, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 0
  %15 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  store %struct.bnx2x* %15, %struct.bnx2x** %12, align 8
  %16 = load i32, i32* @NETIF_MSG_LINK, align 4
  %17 = call i32 (i32, i8*, ...) @DP(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %20 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %21 = load i32, i32* @MDIO_PMA_LASI_RXSTAT, align 4
  %22 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %18, %struct.bnx2x_phy* %19, i32 %20, i32 %21, i32* %9)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %25 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %26 = load i32, i32* @MDIO_PMA_LASI_TXCTRL, align 4
  %27 = call i32 @bnx2x_sfp_mask_fault(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %30 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %31 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %32 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, i32 %30, i32 %31, i32* %8)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %35 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %36 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %37 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 %35, i32 %36, i32* %9)
  %38 = load i32, i32* @NETIF_MSG_LINK, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 (i32, i8*, ...) @DP(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %44 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %45 = load i32, i32* @MDIO_PMA_REG_RX_SD, align 4
  %46 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %42, %struct.bnx2x_phy* %43, i32 %44, i32 %45, i32* %10)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %49 = load i32, i32* @MDIO_PCS_DEVAD, align 4
  %50 = load i32, i32* @MDIO_PCS_REG_STATUS, align 4
  %51 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %47, %struct.bnx2x_phy* %48, i32 %49, i32 %50, i32* %11)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %53 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %54 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %55 = load i32, i32* @MDIO_AN_REG_LINK_STATUS, align 4
  %56 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %52, %struct.bnx2x_phy* %53, i32 %54, i32 %55, i32* %9)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %58 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %59 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %60 = load i32, i32* @MDIO_AN_REG_LINK_STATUS, align 4
  %61 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %57, %struct.bnx2x_phy* %58, i32 %59, i32 %60, i32* %9)
  %62 = load i32, i32* @NETIF_MSG_LINK, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i32, i8*, ...) @DP(i32 %62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %67, %68
  %70 = and i32 %69, 1
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %3
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %3
  %77 = phi i1 [ true, %3 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64, i64* @SPEED_1000, align 8
  %87 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %88 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  br label %93

89:                                               ; preds = %81
  %90 = load i64, i64* @SPEED_10000, align 8
  %91 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %92 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  %94 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %95 = load %struct.link_params*, %struct.link_params** %5, align 8
  %96 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %97 = call i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %94, %struct.link_params* %95, %struct.link_vars* %96)
  %98 = load i32, i32* @DUPLEX_FULL, align 4
  %99 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %100 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %93, %76
  %102 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %103 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SPEED_10000, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %101
  %108 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %109 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %110 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %111 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %112 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %108, %struct.bnx2x_phy* %109, i32 %110, i32 %111, i32* %8)
  %113 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %114 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %115 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %116 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %117 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %113, %struct.bnx2x_phy* %114, i32 %115, i32 %116, i32* %8)
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %107
  %122 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %123 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %121, %107
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_sfp_mask_fault(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32) #1

declare dso_local i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
