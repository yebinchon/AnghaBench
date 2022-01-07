; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_mdiobus_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_mdiobus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ftgmac100 = type { i64 }

@FTGMAC100_OFFSET_PHYCR = common dso_local global i64 0, align 8
@FTGMAC100_PHYCR_MDC_CYCTHR_MASK = common dso_local global i32 0, align 4
@FTGMAC100_PHYCR_MIIWR = common dso_local global i32 0, align 4
@FTGMAC100_OFFSET_PHYDATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"mdio write timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @ftgmac100_mdiobus_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_mdiobus_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ftgmac100*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %16 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %18)
  store %struct.ftgmac100* %19, %struct.ftgmac100** %11, align 8
  %20 = load %struct.ftgmac100*, %struct.ftgmac100** %11, align 8
  %21 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FTGMAC100_OFFSET_PHYCR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread32(i64 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @FTGMAC100_PHYCR_MDC_CYCTHR_MASK, align 4
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @FTGMAC100_PHYCR_PHYAD(i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @FTGMAC100_PHYCR_REGAD(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @FTGMAC100_PHYCR_MIIWR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %12, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @FTGMAC100_PHYDATA_MIIWDATA(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.ftgmac100*, %struct.ftgmac100** %11, align 8
  %42 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FTGMAC100_OFFSET_PHYDATA, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @iowrite32(i32 %40, i64 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.ftgmac100*, %struct.ftgmac100** %11, align 8
  %49 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FTGMAC100_OFFSET_PHYCR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @iowrite32(i32 %47, i64 %52)
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %71, %4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 10
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.ftgmac100*, %struct.ftgmac100** %11, align 8
  %59 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FTGMAC100_OFFSET_PHYCR, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @ioread32(i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @FTGMAC100_PHYCR_MIIWR, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %79

69:                                               ; preds = %57
  %70 = call i32 @udelay(i32 100)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %54

74:                                               ; preds = %54
  %75 = load %struct.net_device*, %struct.net_device** %10, align 8
  %76 = call i32 @netdev_err(%struct.net_device* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %68
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @FTGMAC100_PHYCR_PHYAD(i32) #1

declare dso_local i32 @FTGMAC100_PHYCR_REGAD(i32) #1

declare dso_local i32 @FTGMAC100_PHYDATA_MIIWDATA(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
