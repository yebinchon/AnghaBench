; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_mdio.c_b53_mdio_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_mdio.c_b53_mdio_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@REG_MII_PAGE_ENABLE = common dso_local global i32 0, align 4
@BRCM_PSEUDO_PHY_ADDR = common dso_local global i32 0, align 4
@REG_MII_PAGE = common dso_local global i32 0, align 4
@REG_MII_ADDR = common dso_local global i32 0, align 4
@REG_MII_ADDR_WRITE = common dso_local global i32 0, align 4
@REG_MII_ADDR_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32, i32, i32)* @b53_mdio_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_mdio_op(%struct.b53_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mii_bus*, align 8
  store %struct.b53_device* %0, %struct.b53_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %15 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %14, i32 0, i32 1
  %16 = load %struct.mii_bus*, %struct.mii_bus** %15, align 8
  store %struct.mii_bus* %16, %struct.mii_bus** %13, align 8
  %17 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %18 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* @REG_MII_PAGE_ENABLE, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  %28 = load i32, i32* @BRCM_PSEUDO_PHY_ADDR, align 4
  %29 = load i32, i32* @REG_MII_PAGE, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mdiobus_write_nested(%struct.mii_bus* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %85

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %39 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  %46 = load i32, i32* @BRCM_PSEUDO_PHY_ADDR, align 4
  %47 = load i32, i32* @REG_MII_ADDR, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @mdiobus_write_nested(%struct.mii_bus* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %85

54:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %72, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 5
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  %60 = load i32, i32* @BRCM_PSEUDO_PHY_ADDR, align 4
  %61 = load i32, i32* @REG_MII_ADDR, align 4
  %62 = call i32 @mdiobus_read_nested(%struct.mii_bus* %59, i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @REG_MII_ADDR_WRITE, align 4
  %65 = load i32, i32* @REG_MII_ADDR_READ, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %75

70:                                               ; preds = %58
  %71 = call i32 @usleep_range(i32 10, i32 100)
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %55

75:                                               ; preds = %69, %55
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 5
  %78 = zext i1 %77 to i32
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %85

84:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %81, %52, %34
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @mdiobus_write_nested(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i32 @mdiobus_read_nested(%struct.mii_bus*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
