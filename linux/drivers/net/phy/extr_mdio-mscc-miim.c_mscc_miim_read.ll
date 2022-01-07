; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mscc-miim.c_mscc_miim_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-mscc-miim.c_mscc_miim_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mscc_miim_dev* }
%struct.mscc_miim_dev = type { i64 }

@MSCC_MIIM_CMD_VLD = common dso_local global i32 0, align 4
@MSCC_MIIM_CMD_PHYAD_SHIFT = common dso_local global i32 0, align 4
@MSCC_MIIM_CMD_REGAD_SHIFT = common dso_local global i32 0, align 4
@MSCC_MIIM_CMD_OPR_READ = common dso_local global i32 0, align 4
@MSCC_MIIM_REG_CMD = common dso_local global i64 0, align 8
@MSCC_MIIM_REG_DATA = common dso_local global i64 0, align 8
@MSCC_MIIM_DATA_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @mscc_miim_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mscc_miim_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mscc_miim_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %11, align 8
  store %struct.mscc_miim_dev* %12, %struct.mscc_miim_dev** %7, align 8
  %13 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %14 = call i32 @mscc_miim_wait_ready(%struct.mii_bus* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %58

18:                                               ; preds = %3
  %19 = load i32, i32* @MSCC_MIIM_CMD_VLD, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MSCC_MIIM_CMD_PHYAD_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MSCC_MIIM_CMD_REGAD_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* @MSCC_MIIM_CMD_OPR_READ, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %7, align 8
  %31 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MSCC_MIIM_REG_CMD, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %37 = call i32 @mscc_miim_wait_ready(%struct.mii_bus* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %18
  br label %58

41:                                               ; preds = %18
  %42 = load %struct.mscc_miim_dev*, %struct.mscc_miim_dev** %7, align 8
  %43 = getelementptr inbounds %struct.mscc_miim_dev, %struct.mscc_miim_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MSCC_MIIM_REG_DATA, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MSCC_MIIM_DATA_ERROR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 65535
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %52, %40, %17
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local i32 @mscc_miim_wait_ready(%struct.mii_bus*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
