; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_reset_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32, %struct.atl1c_adapter* }
%struct.atl1c_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_OOB_DIS = common dso_local global i32 0, align 4
@MASTER_CTRL_SOFT_RST = common dso_local global i32 0, align 4
@IDLE_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"MAC state machine can't be idle since disabled for 10ms second\0A\00", align 1
@REG_MAC_CTRL = common dso_local global i32 0, align 4
@MAC_CTRL_SPEED_MODE_SW = common dso_local global i32 0, align 4
@REG_SERDES = common dso_local global i32 0, align 4
@SERDES_PHY_CLK_SLOWDOWN = common dso_local global i32 0, align 4
@SERDES_MAC_CLK_SLOWDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_hw*)* @atl1c_reset_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_reset_mac(%struct.atl1c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca %struct.atl1c_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  %7 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %8 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %7, i32 0, i32 1
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  store %struct.atl1c_adapter* %9, %struct.atl1c_adapter** %4, align 8
  %10 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %14 = call i32 @atl1c_stop_mac(%struct.atl1c_hw* %13)
  %15 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %16 = load i32, i32* @REG_MASTER_CTRL, align 4
  %17 = call i32 @AT_READ_REG(%struct.atl1c_hw* %15, i32 %16, i32* %6)
  %18 = load i32, i32* @MASTER_CTRL_OOB_DIS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %22 = load i32, i32* @REG_MASTER_CTRL, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MASTER_CTRL_SOFT_RST, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %21, i32 %22, i32 %25)
  %27 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %28 = call i32 @AT_WRITE_FLUSH(%struct.atl1c_hw* %27)
  %29 = call i32 @msleep(i32 10)
  %30 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %31 = load i32, i32* @IDLE_STATUS_MASK, align 4
  %32 = call i64 @atl1c_wait_until_idle(%struct.atl1c_hw* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

38:                                               ; preds = %1
  %39 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %40 = load i32, i32* @REG_MASTER_CTRL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %39, i32 %40, i32 %41)
  %43 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %44 = load i32, i32* @REG_MAC_CTRL, align 4
  %45 = call i32 @AT_READ_REG(%struct.atl1c_hw* %43, i32 %44, i32* %6)
  %46 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %47 = load i32, i32* @REG_MAC_CTRL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MAC_CTRL_SPEED_MODE_SW, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %46, i32 %47, i32 %50)
  %52 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %53 = load i32, i32* @REG_SERDES, align 4
  %54 = call i32 @AT_READ_REG(%struct.atl1c_hw* %52, i32 %53, i32* %6)
  %55 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %56 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %79 [
    i32 129, label %58
    i32 128, label %69
    i32 130, label %69
  ]

58:                                               ; preds = %38
  %59 = load i32, i32* @SERDES_PHY_CLK_SLOWDOWN, align 4
  %60 = load i32, i32* @SERDES_MAC_CLK_SLOWDOWN, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %66 = load i32, i32* @REG_SERDES, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %65, i32 %66, i32 %67)
  br label %80

69:                                               ; preds = %38, %38
  %70 = load i32, i32* @SERDES_PHY_CLK_SLOWDOWN, align 4
  %71 = load i32, i32* @SERDES_MAC_CLK_SLOWDOWN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %76 = load i32, i32* @REG_SERDES, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %75, i32 %76, i32 %77)
  br label %80

79:                                               ; preds = %38
  br label %80

80:                                               ; preds = %79, %69, %58
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %34
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @atl1c_stop_mac(%struct.atl1c_hw*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1c_hw*, i32, i32*) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @AT_WRITE_FLUSH(%struct.atl1c_hw*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @atl1c_wait_until_idle(%struct.atl1c_hw*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
