; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32 }
%struct.pci_device_id = type { i64 }

@MLXSW_REG_MRSR_LEN = common dso_local global i32 0, align 4
@mrsr = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_MELLANOX_SWITCHX2 = common dso_local global i64 0, align 8
@MLXSW_PCI_SW_RESET_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@MLXSW_PCI_SW_RESET_WAIT_MSECS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FW_READY = common dso_local global i32 0, align 4
@MLXSW_PCI_FW_READY_MASK = common dso_local global i32 0, align 4
@MLXSW_PCI_FW_READY_MAGIC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_pci*, %struct.pci_device_id*)* @mlxsw_pci_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_pci_sw_reset(%struct.mlxsw_pci* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_pci*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %12 = load i32, i32* @MLXSW_REG_MRSR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = call i32 @mlxsw_reg_mrsr_pack(i8* %15)
  %17 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %18 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @mrsr, align 4
  %21 = call i32 @MLXSW_REG(i32 %20)
  %22 = call i32 @mlxsw_reg_write(i32 %19, i32 %21, i8* %15)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

27:                                               ; preds = %2
  %28 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_DEVICE_ID_MELLANOX_SWITCHX2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @MLXSW_PCI_SW_RESET_TIMEOUT_MSECS, align 4
  %35 = call i32 @msleep(i32 %34)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

36:                                               ; preds = %27
  %37 = load i32, i32* @MLXSW_PCI_SW_RESET_WAIT_MSECS, align 4
  %38 = call i32 @msleep(i32 %37)
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i32, i32* @MLXSW_PCI_SW_RESET_TIMEOUT_MSECS, align 4
  %41 = call i64 @msecs_to_jiffies(i32 %40)
  %42 = add i64 %39, %41
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %55, %36
  %44 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %4, align 8
  %45 = load i32, i32* @FW_READY, align 4
  %46 = call i32 @mlxsw_pci_read32(%struct.mlxsw_pci* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @MLXSW_PCI_FW_READY_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @MLXSW_PCI_FW_READY_MAGIC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

53:                                               ; preds = %43
  %54 = call i32 (...) @cond_resched()
  br label %55

55:                                               ; preds = %53
  %56 = load i64, i64* @jiffies, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @time_before(i64 %56, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %43, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %60, %52, %33, %25
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_mrsr_pack(i8*) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @mlxsw_pci_read32(%struct.mlxsw_pci*, i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i64 @time_before(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
