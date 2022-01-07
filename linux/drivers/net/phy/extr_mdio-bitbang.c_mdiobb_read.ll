; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32, %struct.mdiobb_ctrl* }
%struct.mdiobb_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mdiobb_ctrl*, i32)* }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MDIO_C45_READ = common dso_local global i32 0, align 4
@MDIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @mdiobb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdiobb_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdiobb_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 1
  %13 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %12, align 8
  store %struct.mdiobb_ctrl* %13, %struct.mdiobb_ctrl** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MII_ADDR_C45, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @mdiobb_cmd_addr(%struct.mdiobb_ctrl* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %24 = load i32, i32* @MDIO_C45_READ, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mdiobb_cmd(%struct.mdiobb_ctrl* %23, i32 %24, i32 %25, i32 %26)
  br label %34

28:                                               ; preds = %3
  %29 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %30 = load i32, i32* @MDIO_READ, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mdiobb_cmd(%struct.mdiobb_ctrl* %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %18
  %35 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %36 = getelementptr inbounds %struct.mdiobb_ctrl, %struct.mdiobb_ctrl* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.mdiobb_ctrl*, i32)*, i32 (%struct.mdiobb_ctrl*, i32)** %38, align 8
  %40 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %41 = call i32 %39(%struct.mdiobb_ctrl* %40, i32 0)
  %42 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %43 = call i64 @mdiobb_get_bit(%struct.mdiobb_ctrl* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %34
  %46 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %47 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %60, %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 32
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %59 = call i64 @mdiobb_get_bit(%struct.mdiobb_ctrl* %58)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %54

63:                                               ; preds = %54
  store i32 65535, i32* %4, align 4
  br label %70

64:                                               ; preds = %45, %34
  %65 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %66 = call i32 @mdiobb_get_num(%struct.mdiobb_ctrl* %65, i32 16)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %68 = call i64 @mdiobb_get_bit(%struct.mdiobb_ctrl* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %63
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mdiobb_cmd_addr(%struct.mdiobb_ctrl*, i32, i32) #1

declare dso_local i32 @mdiobb_cmd(%struct.mdiobb_ctrl*, i32, i32, i32) #1

declare dso_local i64 @mdiobb_get_bit(%struct.mdiobb_ctrl*) #1

declare dso_local i32 @mdiobb_get_num(%struct.mdiobb_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
