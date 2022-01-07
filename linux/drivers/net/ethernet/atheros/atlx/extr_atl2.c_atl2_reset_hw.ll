; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_hw = type { i32 }

@PCI_REG_COMMAND = common dso_local global i32 0, align 4
@CMD_IO_SPACE = common dso_local global i32 0, align 4
@CMD_MEMORY_SPACE = common dso_local global i32 0, align 4
@CMD_BUS_MASTER = common dso_local global i32 0, align 4
@REG_MASTER_CTRL = common dso_local global i32 0, align 4
@MASTER_CTRL_SOFT_RST = common dso_local global i32 0, align 4
@REG_IDLE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atl2_hw*)* @atl2_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atl2_reset_hw(%struct.atl2_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atl2_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl2_hw* %0, %struct.atl2_hw** %3, align 8
  %7 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %8 = load i32, i32* @PCI_REG_COMMAND, align 4
  %9 = call i32 @atl2_read_pci_cfg(%struct.atl2_hw* %7, i32 %8, i32* %5)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CMD_IO_SPACE, align 4
  %12 = load i32, i32* @CMD_MEMORY_SPACE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CMD_BUS_MASTER, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = load i32, i32* @CMD_IO_SPACE, align 4
  %18 = load i32, i32* @CMD_MEMORY_SPACE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CMD_BUS_MASTER, align 4
  %21 = or i32 %19, %20
  %22 = icmp ne i32 %16, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load i32, i32* @CMD_IO_SPACE, align 4
  %25 = load i32, i32* @CMD_MEMORY_SPACE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CMD_BUS_MASTER, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %32 = load i32, i32* @PCI_REG_COMMAND, align 4
  %33 = call i32 @atl2_write_pci_cfg(%struct.atl2_hw* %31, i32 %32, i32* %5)
  br label %34

34:                                               ; preds = %23, %1
  %35 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %36 = load i32, i32* @REG_MASTER_CTRL, align 4
  %37 = load i32, i32* @MASTER_CTRL_SOFT_RST, align 4
  %38 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %35, i32 %36, i32 %37)
  %39 = call i32 (...) @wmb()
  %40 = call i32 @msleep(i32 1)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %54, %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.atl2_hw*, %struct.atl2_hw** %3, align 8
  %46 = load i32, i32* @REG_IDLE_STATUS, align 4
  %47 = call i64 @ATL2_READ_REG(%struct.atl2_hw* %45, i32 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %57

51:                                               ; preds = %44
  %52 = call i32 @msleep(i32 1)
  %53 = call i32 (...) @cpu_relax()
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %41

57:                                               ; preds = %50, %41
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %2, align 8
  br label %63

62:                                               ; preds = %57
  store i64 0, i64* %2, align 8
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i64, i64* %2, align 8
  ret i64 %64
}

declare dso_local i32 @atl2_read_pci_cfg(%struct.atl2_hw*, i32, i32*) #1

declare dso_local i32 @atl2_write_pci_cfg(%struct.atl2_hw*, i32, i32*) #1

declare dso_local i32 @ATL2_WRITE_REG(%struct.atl2_hw*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ATL2_READ_REG(%struct.atl2_hw*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
