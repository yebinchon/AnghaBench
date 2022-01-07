; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64, %struct.atl1_adapter* }
%struct.atl1_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MASTER_CTRL_SOFT_RST = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i64 0, align 8
@REG_PHY_ENABLE = common dso_local global i64 0, align 8
@REG_IDLE_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"ICR = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl1_hw*)* @atl1_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl1_reset_hw(%struct.atl1_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atl1_hw*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %3, align 8
  %8 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %9 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %8, i32 0, i32 1
  %10 = load %struct.atl1_adapter*, %struct.atl1_adapter** %9, align 8
  %11 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %14 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %13, i32 0, i32 1
  %15 = load %struct.atl1_adapter*, %struct.atl1_adapter** %14, align 8
  store %struct.atl1_adapter* %15, %struct.atl1_adapter** %5, align 8
  %16 = load i32, i32* @MASTER_CTRL_SOFT_RST, align 4
  %17 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %18 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_MASTER_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite32(i32 %16, i64 %21)
  %23 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %24 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_MASTER_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i64 @ioread32(i64 %27)
  %29 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %30 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REG_PHY_ENABLE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite16(i32 1, i64 %33)
  %35 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %36 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @REG_PHY_ENABLE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @ioread16(i64 %39)
  %41 = call i32 @msleep(i32 1)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %58, %1
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.atl1_hw*, %struct.atl1_hw** %3, align 8
  %47 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_IDLE_STATUS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i64 @ioread32(i64 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %61

55:                                               ; preds = %45
  %56 = call i32 @msleep(i32 1)
  %57 = call i32 (...) @cpu_relax()
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %42

61:                                               ; preds = %54, %42
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %66 = call i64 @netif_msg_hw(%struct.atl1_adapter* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %71)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %2, align 8
  br label %76

75:                                               ; preds = %61
  store i64 0, i64* %2, align 8
  br label %76

76:                                               ; preds = %75, %73
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @iowrite16(i32, i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @netif_msg_hw(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
