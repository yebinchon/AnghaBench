; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_mdio_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_mdio_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.nb8800_priv* }
%struct.nb8800_priv = type { i32 }

@NB8800_MDIO_CMD = common dso_local global i32 0, align 4
@MDIO_CMD_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32)* @nb8800_mdio_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nb8800_mdio_cmd(%struct.mii_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nb8800_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %9 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %8, i32 0, i32 0
  %10 = load %struct.nb8800_priv*, %struct.nb8800_priv** %9, align 8
  store %struct.nb8800_priv* %10, %struct.nb8800_priv** %6, align 8
  %11 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %12 = call i32 @nb8800_mdio_wait(%struct.mii_bus* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %19 = load i32, i32* @NB8800_MDIO_CMD, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nb8800_writel(%struct.nb8800_priv* %18, i32 %19, i32 %20)
  %22 = call i32 @udelay(i32 10)
  %23 = load %struct.nb8800_priv*, %struct.nb8800_priv** %6, align 8
  %24 = load i32, i32* @NB8800_MDIO_CMD, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MDIO_CMD_GO, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @nb8800_writel(%struct.nb8800_priv* %23, i32 %24, i32 %27)
  %29 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %30 = call i32 @nb8800_mdio_wait(%struct.mii_bus* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %17, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @nb8800_mdio_wait(%struct.mii_bus*) #1

declare dso_local i32 @nb8800_writel(%struct.nb8800_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
