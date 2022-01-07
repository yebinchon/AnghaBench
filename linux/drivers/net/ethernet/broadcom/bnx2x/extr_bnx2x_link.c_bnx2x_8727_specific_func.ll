; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_specific_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_specific_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@FLAGS_SFP_NOT_APPROVED = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXCTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_TXCTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_PCS_OPT_CTRL = common dso_local global i32 0, align 4
@FLAGS_NOC = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Function 0x%x not supported by 8727\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_8727_specific_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_8727_specific_func(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %78 [
    i32 130, label %13
    i32 129, label %17
    i32 128, label %29
  ]

13:                                               ; preds = %3
  %14 = load %struct.link_params*, %struct.link_params** %5, align 8
  %15 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %16 = call i32 @bnx2x_sfp_set_transmitter(%struct.link_params* %14, %struct.bnx2x_phy* %15, i32 0)
  br label %82

17:                                               ; preds = %3
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FLAGS_SFP_NOT_APPROVED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load %struct.link_params*, %struct.link_params** %5, align 8
  %26 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %27 = call i32 @bnx2x_sfp_set_transmitter(%struct.link_params* %25, %struct.bnx2x_phy* %26, i32 1)
  br label %28

28:                                               ; preds = %24, %17
  br label %82

29:                                               ; preds = %3
  %30 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %31 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %32 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %33 = load i32, i32* @MDIO_PMA_LASI_RXCTRL, align 4
  %34 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %30, %struct.bnx2x_phy* %31, i32 %32, i32 %33, i32 36)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %36 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %37 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %38 = load i32, i32* @MDIO_PMA_LASI_TXCTRL, align 4
  %39 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %35, %struct.bnx2x_phy* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %41 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %42 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %43 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %44 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %40, %struct.bnx2x_phy* %41, i32 %42, i32 %43, i32 6)
  %45 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %46 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %47 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %48 = load i32, i32* @MDIO_PMA_REG_8727_PCS_OPT_CTRL, align 4
  %49 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %45, %struct.bnx2x_phy* %46, i32 %47, i32 %48, i32* %8)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 4096
  store i32 %51, i32* %8, align 4
  %52 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FLAGS_NOC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %29
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, 96
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %29
  %62 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %63 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FLAGS_NOC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 65423
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %73 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %74 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %75 = load i32, i32* @MDIO_PMA_REG_8727_PCS_OPT_CTRL, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %72, %struct.bnx2x_phy* %73, i32 %74, i32 %75, i32 %76)
  br label %82

78:                                               ; preds = %3
  %79 = load i32, i32* @NETIF_MSG_LINK, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @DP(i32 %79, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %71, %28, %13
  ret void
}

declare dso_local i32 @bnx2x_sfp_set_transmitter(%struct.link_params*, %struct.bnx2x_phy*, i32) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
