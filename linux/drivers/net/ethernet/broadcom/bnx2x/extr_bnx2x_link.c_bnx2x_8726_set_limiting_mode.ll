; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8726_set_limiting_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8726_set_limiting_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_ROM_VER2 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Current Limiting mode is 0x%x\0A\00", align 1
@EDC_MODE_LIMITING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Setting LIMITING MODE\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Setting LRM MODE\0A\00", align 1
@MDIO_PMA_REG_LRM_MODE = common dso_local global i32 0, align 4
@MDIO_PMA_REG_MISC_CTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*, i64)* @bnx2x_8726_set_limiting_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8726_set_limiting_mode(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_phy*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %11 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %12 = load i32, i32* @MDIO_PMA_REG_ROM_VER2, align 4
  %13 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %9, %struct.bnx2x_phy* %10, i32 %11, i32 %12, i64* %8)
  %14 = load i32, i32* @NETIF_MSG_LINK, align 4
  %15 = load i64, i64* %8, align 8
  %16 = call i32 (i32, i8*, ...) @DP(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @EDC_MODE_LIMITING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load i32, i32* @NETIF_MSG_LINK, align 4
  %22 = call i32 (i32, i8*, ...) @DP(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %25 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %26 = load i32, i32* @MDIO_PMA_REG_ROM_VER2, align 4
  %27 = load i64, i64* @EDC_MODE_LIMITING, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %25, i32 %26, i32 %28)
  br label %58

30:                                               ; preds = %3
  %31 = load i32, i32* @NETIF_MSG_LINK, align 4
  %32 = call i32 (i32, i8*, ...) @DP(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @EDC_MODE_LIMITING, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %59

37:                                               ; preds = %30
  %38 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %39 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %40 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %41 = load i32, i32* @MDIO_PMA_REG_LRM_MODE, align 4
  %42 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %38, %struct.bnx2x_phy* %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %45 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %46 = load i32, i32* @MDIO_PMA_REG_ROM_VER2, align 4
  %47 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 %45, i32 %46, i32 296)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %49 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %50 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %51 = load i32, i32* @MDIO_PMA_REG_MISC_CTRL0, align 4
  %52 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %48, %struct.bnx2x_phy* %49, i32 %50, i32 %51, i32 16392)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %55 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %56 = load i32, i32* @MDIO_PMA_REG_LRM_MODE, align 4
  %57 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %53, %struct.bnx2x_phy* %54, i32 %55, i32 %56, i32 43690)
  br label %58

58:                                               ; preds = %37, %20
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i64*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
