; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_mdiobus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_mdiobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ftgmac100 = type { i64 }

@FTGMAC100_OFFSET_PHYCR = common dso_local global i64 0, align 8
@FTGMAC100_PHYCR_MDC_CYCTHR_MASK = common dso_local global i32 0, align 4
@FTGMAC100_PHYCR_MIIRD = common dso_local global i32 0, align 4
@FTGMAC100_OFFSET_PHYDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"mdio read timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @ftgmac100_mdiobus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_mdiobus_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.ftgmac100*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %14 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %16)
  store %struct.ftgmac100* %17, %struct.ftgmac100** %9, align 8
  %18 = load %struct.ftgmac100*, %struct.ftgmac100** %9, align 8
  %19 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FTGMAC100_OFFSET_PHYCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i8* @ioread32(i64 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @FTGMAC100_PHYCR_MDC_CYCTHR_MASK, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @FTGMAC100_PHYCR_PHYAD(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @FTGMAC100_PHYCR_REGAD(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* @FTGMAC100_PHYCR_MIIRD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.ftgmac100*, %struct.ftgmac100** %9, align 8
  %39 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @FTGMAC100_OFFSET_PHYCR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @iowrite32(i32 %37, i64 %42)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %71, %3
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = load %struct.ftgmac100*, %struct.ftgmac100** %9, align 8
  %49 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FTGMAC100_OFFSET_PHYCR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i8* @ioread32(i64 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @FTGMAC100_PHYCR_MIIRD, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %47
  %60 = load %struct.ftgmac100*, %struct.ftgmac100** %9, align 8
  %61 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FTGMAC100_OFFSET_PHYDATA, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i8* @ioread32(i64 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @FTGMAC100_PHYDATA_MIIRDATA(i32 %67)
  store i32 %68, i32* %4, align 4
  br label %79

69:                                               ; preds = %47
  %70 = call i32 @udelay(i32 100)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = call i32 @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %59
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @FTGMAC100_PHYCR_PHYAD(i32) #1

declare dso_local i32 @FTGMAC100_PHYCR_REGAD(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @FTGMAC100_PHYDATA_MIIRDATA(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
