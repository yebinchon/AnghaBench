; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i32, i32 (%struct.TYPE_8__*)*, i32, i32 }

@cpmac_mii = common dso_local global %struct.TYPE_8__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cpmac-mii\00", align 1
@cpmac_mdio_read = common dso_local global i32 0, align 4
@cpmac_mdio_write = common dso_local global i32 0, align 4
@AR7_REGS_MDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't ioremap mdio registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AR7_RESET_BIT_CPMAC_LO = common dso_local global i32 0, align 4
@AR7_RESET_BIT_CPMAC_HI = common dso_local global i32 0, align 4
@AR7_RESET_BIT_EPHY = common dso_local global i32 0, align 4
@CPMAC_MDIO_ALIVE = common dso_local global i32 0, align 4
@external_switch = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cpmac-1\00", align 1
@cpmac_driver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpmac_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_8__* (...) @mdiobus_alloc()
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** @cpmac_mii, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %109

11:                                               ; preds = %0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* @cpmac_mdio_read, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @cpmac_mdio_write, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  store i32 (%struct.TYPE_8__*)* @cpmac_mdio_reset, i32 (%struct.TYPE_8__*)** %21, align 8
  %22 = load i32, i32* @AR7_REGS_MDIO, align 4
  %23 = call i32 @ioremap(i32 %22, i32 256)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %11
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %105

34:                                               ; preds = %11
  %35 = call i32 @ar7_gpio_disable(i32 26)
  %36 = call i32 @ar7_gpio_disable(i32 27)
  %37 = load i32, i32* @AR7_RESET_BIT_CPMAC_LO, align 4
  %38 = call i32 @ar7_device_reset(i32 %37)
  %39 = load i32, i32* @AR7_RESET_BIT_CPMAC_HI, align 4
  %40 = call i32 @ar7_device_reset(i32 %39)
  %41 = load i32, i32* @AR7_RESET_BIT_EPHY, align 4
  %42 = call i32 @ar7_device_reset(i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 4
  %45 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %47 = call i32 %45(%struct.TYPE_8__* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %63, %34
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 300
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CPMAC_MDIO_ALIVE, align 4
  %56 = call i32 @cpmac_read(i32 %54, i32 %55)
  store i32 %56, i32* %2, align 4
  %57 = load i32, i32* %2, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %66

60:                                               ; preds = %51
  %61 = call i32 @msleep(i32 10)
  br label %62

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %48

66:                                               ; preds = %59, %48
  %67 = load i32, i32* %2, align 4
  %68 = and i32 %67, 2147483647
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 1, i32* @external_switch, align 4
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32, i32* %2, align 4
  %77 = or i32 %76, -2147483648
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %85 = call i32 @snprintf(i32 %83, i32 %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %87 = call i32 @mdiobus_register(%struct.TYPE_8__* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %75
  br label %100

91:                                               ; preds = %75
  %92 = call i32 @platform_driver_register(i32* @cpmac_driver)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %97

96:                                               ; preds = %91
  store i32 0, i32* %1, align 4
  br label %109

97:                                               ; preds = %95
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %99 = call i32 @mdiobus_unregister(%struct.TYPE_8__* %98)
  br label %100

100:                                              ; preds = %97, %90
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @iounmap(i32 %103)
  br label %105

105:                                              ; preds = %100, %30
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpmac_mii, align 8
  %107 = call i32 @mdiobus_free(%struct.TYPE_8__* %106)
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %1, align 4
  br label %109

109:                                              ; preds = %105, %96, %8
  %110 = load i32, i32* %1, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_8__* @mdiobus_alloc(...) #1

declare dso_local i32 @cpmac_mdio_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ar7_gpio_disable(i32) #1

declare dso_local i32 @ar7_device_reset(i32) #1

declare dso_local i32 @cpmac_read(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_driver_register(i32*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
