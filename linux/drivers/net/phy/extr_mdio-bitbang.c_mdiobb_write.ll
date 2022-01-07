; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mdiobb_ctrl* }
%struct.mdiobb_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mdiobb_ctrl*, i32)* }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MDIO_C45_WRITE = common dso_local global i32 0, align 4
@MDIO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @mdiobb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdiobb_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdiobb_ctrl*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %11 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %10, i32 0, i32 0
  %12 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %11, align 8
  store %struct.mdiobb_ctrl* %12, %struct.mdiobb_ctrl** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MII_ADDR_C45, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mdiobb_cmd_addr(%struct.mdiobb_ctrl* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %23 = load i32, i32* @MDIO_C45_WRITE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mdiobb_cmd(%struct.mdiobb_ctrl* %22, i32 %23, i32 %24, i32 %25)
  br label %33

27:                                               ; preds = %4
  %28 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %29 = load i32, i32* @MDIO_WRITE, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @mdiobb_cmd(%struct.mdiobb_ctrl* %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %35 = call i32 @mdiobb_send_bit(%struct.mdiobb_ctrl* %34, i32 1)
  %36 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %37 = call i32 @mdiobb_send_bit(%struct.mdiobb_ctrl* %36, i32 0)
  %38 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mdiobb_send_num(%struct.mdiobb_ctrl* %38, i32 %39, i32 16)
  %41 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %42 = getelementptr inbounds %struct.mdiobb_ctrl, %struct.mdiobb_ctrl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.mdiobb_ctrl*, i32)*, i32 (%struct.mdiobb_ctrl*, i32)** %44, align 8
  %46 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %47 = call i32 %45(%struct.mdiobb_ctrl* %46, i32 0)
  %48 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %9, align 8
  %49 = call i32 @mdiobb_get_bit(%struct.mdiobb_ctrl* %48)
  ret i32 0
}

declare dso_local i32 @mdiobb_cmd_addr(%struct.mdiobb_ctrl*, i32, i32) #1

declare dso_local i32 @mdiobb_cmd(%struct.mdiobb_ctrl*, i32, i32, i32) #1

declare dso_local i32 @mdiobb_send_bit(%struct.mdiobb_ctrl*, i32) #1

declare dso_local i32 @mdiobb_send_num(%struct.mdiobb_ctrl*, i32, i32) #1

declare dso_local i32 @mdiobb_get_bit(%struct.mdiobb_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
