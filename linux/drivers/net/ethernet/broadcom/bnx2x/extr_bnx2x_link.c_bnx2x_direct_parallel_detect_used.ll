; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_direct_parallel_detect_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_direct_parallel_detect_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@MDIO_REG_BANK_SERDES_DIGITAL = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_STATUS2 = common dso_local global i32 0, align 4
@MDIO_SERDES_DIGITAL_A_1000X_STATUS2_AN_DISABLED = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"1G parallel detect link on port %d\0A\00", align 1
@MDIO_REG_BANK_10G_PARALLEL_DETECT = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS = common dso_local global i32 0, align 4
@MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS_PD_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"10G parallel detect link on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_direct_parallel_detect_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_direct_parallel_detect_used(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %6, align 8
  %12 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %13 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %21 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %22 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_STATUS2, align 4
  %23 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %19, %struct.bnx2x_phy* %20, i32 %21, i32 %22, i32* %8)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %26 = load i32, i32* @MDIO_REG_BANK_SERDES_DIGITAL, align 4
  %27 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_STATUS2, align 4
  %28 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %24, %struct.bnx2x_phy* %25, i32 %26, i32 %27, i32* %8)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MDIO_SERDES_DIGITAL_A_1000X_STATUS2_AN_DISABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load i32, i32* @NETIF_MSG_LINK, align 4
  %35 = load %struct.link_params*, %struct.link_params** %5, align 8
  %36 = getelementptr inbounds %struct.link_params, %struct.link_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @DP(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 1, i32* %3, align 4
  br label %56

39:                                               ; preds = %18
  %40 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %41 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %42 = load i32, i32* @MDIO_REG_BANK_10G_PARALLEL_DETECT, align 4
  %43 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS, align 4
  %44 = call i32 @CL22_RD_OVER_CL45(%struct.bnx2x* %40, %struct.bnx2x_phy* %41, i32 %42, i32 %43, i32* %7)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS_PD_LINK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i32, i32* @NETIF_MSG_LINK, align 4
  %51 = load %struct.link_params*, %struct.link_params** %5, align 8
  %52 = getelementptr inbounds %struct.link_params, %struct.link_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DP(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49, %33, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @CL22_RD_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
