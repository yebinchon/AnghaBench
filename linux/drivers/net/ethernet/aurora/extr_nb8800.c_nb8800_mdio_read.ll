; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.nb8800_priv* }
%struct.nb8800_priv = type { i32 }

@NB8800_MDIO_STS = common dso_local global i32 0, align 4
@MDIO_STS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @nb8800_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nb8800_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.nb8800_priv*, %struct.nb8800_priv** %12, align 8
  store %struct.nb8800_priv* %13, %struct.nb8800_priv** %8, align 8
  %14 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @MDIO_CMD_ADDR(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @MDIO_CMD_REG(i32 %17)
  %19 = or i32 %16, %18
  %20 = call i32 @nb8800_mdio_cmd(%struct.mii_bus* %14, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.nb8800_priv*, %struct.nb8800_priv** %8, align 8
  %27 = load i32, i32* @NB8800_MDIO_STS, align 4
  %28 = call i32 @nb8800_readl(%struct.nb8800_priv* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MDIO_STS_ERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 65535, i32* %4, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 65535
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %33, %23
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @nb8800_mdio_cmd(%struct.mii_bus*, i32) #1

declare dso_local i32 @MDIO_CMD_ADDR(i32) #1

declare dso_local i32 @MDIO_CMD_REG(i32) #1

declare dso_local i32 @nb8800_readl(%struct.nb8800_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
