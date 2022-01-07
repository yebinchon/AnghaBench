; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_disable_pcie_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_disable_pcie_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_GIO_DIS = common dso_local global i32 0, align 4
@IXGBE_PCI_MASTER_DISABLE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"GIO disable did not set - requesting resets\0A\00", align 1
@IXGBE_STATUS = common dso_local global i32 0, align 4
@IXGBE_STATUS_GIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"GIO Master Disable bit didn't clear - requesting resets\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@ixgbe_mac_X550 = common dso_local global i64 0, align 8
@IXGBE_PCI_DEVICE_STATUS = common dso_local global i32 0, align 4
@IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"PCIe transaction pending bit also did not clear.\0A\00", align 1
@IXGBE_ERR_MASTER_REQUESTS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_disable_pcie_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_disable_pcie_master(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %8 = load i32, i32* @IXGBE_CTRL, align 4
  %9 = load i32, i32* @IXGBE_CTRL_GIO_DIS, align 4
  %10 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %7, i32 %8, i32 %9)
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @IXGBE_PCI_MASTER_DISABLE_TIMEOUT, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %17 = load i32, i32* @IXGBE_CTRL, align 4
  %18 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %16, i32 %17)
  %19 = load i32, i32* @IXGBE_CTRL_GIO_DIS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %28

23:                                               ; preds = %15
  %24 = call i32 @usleep_range(i32 100, i32 120)
  br label %25

25:                                               ; preds = %23
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %4, align 8
  br label %11

28:                                               ; preds = %22, %11
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @IXGBE_PCI_MASTER_DISABLE_TIMEOUT, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = call i32 @hw_dbg(%struct.ixgbe_hw* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %70

35:                                               ; preds = %28
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %37 = load i32, i32* @IXGBE_STATUS, align 4
  %38 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %36, i32 %37)
  %39 = load i32, i32* @IXGBE_STATUS_GIO, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ixgbe_removed(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %35
  store i32 0, i32* %2, align 4
  br label %116

49:                                               ; preds = %42
  store i64 0, i64* %4, align 8
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @IXGBE_PCI_MASTER_DISABLE_TIMEOUT, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = call i32 @udelay(i32 100)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = load i32, i32* @IXGBE_STATUS, align 4
  %58 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %56, i32 %57)
  %59 = load i32, i32* @IXGBE_STATUS_GIO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %116

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %4, align 8
  br label %50

67:                                               ; preds = %50
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %69 = call i32 @hw_dbg(%struct.ixgbe_hw* %68, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %32
  %71 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ixgbe_mac_X550, align 8
  %82 = icmp sge i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %116

84:                                               ; preds = %70
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = call i64 @ixgbe_pcie_timeout_poll(%struct.ixgbe_hw* %85)
  store i64 %86, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %87

87:                                               ; preds = %109, %84
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = call i32 @udelay(i32 100)
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %94 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS, align 4
  %95 = call i32 @ixgbe_read_pci_cfg_word(%struct.ixgbe_hw* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @ixgbe_removed(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %116

102:                                              ; preds = %91
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @IXGBE_PCI_DEVICE_STATUS_TRANSACTION_PENDING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  store i32 0, i32* %2, align 4
  br label %116

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %4, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %4, align 8
  br label %87

112:                                              ; preds = %87
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %114 = call i32 @hw_dbg(%struct.ixgbe_hw* %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %115 = load i32, i32* @IXGBE_ERR_MASTER_REQUESTS_PENDING, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %107, %101, %83, %62, %48
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @ixgbe_pcie_timeout_poll(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_read_pci_cfg_word(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
