; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_7101_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_7101_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_STAT = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"10G-base-T LASI status 0x%x->0x%x\0A\00", align 1
@MDIO_PMA_REG_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"10G-base-T PMA status 0x%x->0x%x\0A\00", align 1
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_MASTER_STATUS = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"SFX7101 AN status 0x%x->Master=%x\0A\00", align 1
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_7101_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_7101_read_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %16 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %17 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %18 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %14, %struct.bnx2x_phy* %15, i32 %16, i32 %17, i32* %10)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %21 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %22 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %23 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %19, %struct.bnx2x_phy* %20, i32 %21, i32 %22, i32* %9)
  %24 = load i32, i32* @NETIF_MSG_LINK, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @DP(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %30 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %31 = load i32, i32* @MDIO_PMA_REG_STATUS, align 4
  %32 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, i32 %30, i32 %31, i32* %10)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %35 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %36 = load i32, i32* @MDIO_PMA_REG_STATUS, align 4
  %37 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 %35, i32 %36, i32* %9)
  %38 = load i32, i32* @NETIF_MSG_LINK, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 4
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %3
  %49 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %50 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %51 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %52 = load i32, i32* @MDIO_AN_REG_MASTER_STATUS, align 4
  %53 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %49, %struct.bnx2x_phy* %50, i32 %51, i32 %52, i32* %10)
  %54 = load i32, i32* @SPEED_10000, align 4
  %55 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %56 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @DUPLEX_FULL, align 4
  %58 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %59 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @NETIF_MSG_LINK, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 16384
  %64 = call i32 @DP(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %66 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %67 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %68 = call i32 @bnx2x_ext_phy_10G_an_resolve(%struct.bnx2x* %65, %struct.bnx2x_phy* %66, %struct.link_vars* %67)
  %69 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %70 = load %struct.link_params*, %struct.link_params** %5, align 8
  %71 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %72 = call i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %69, %struct.link_params* %70, %struct.link_vars* %71)
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 2048
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %48
  %77 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %78 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %79 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %48
  br label %83

83:                                               ; preds = %82, %3
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_ext_phy_10G_an_resolve(%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
