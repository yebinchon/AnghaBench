; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_print_hw_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_print_hw_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_nic = type { i32, i64 }

@PCI_LINK_STATUS_REG = common dso_local global i32 0, align 4
@PCI_DEV_CTRL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@BDX_NIC_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c", 2-Port\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"srom 0x%x fpga %d build %u lane# %d max_pl 0x%x mrrs 0x%x\0A\00", align 1
@SROM_VER = common dso_local global i64 0, align 8
@FPGA_VER = common dso_local global i64 0, align 8
@FPGA_SEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @print_hw_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_hw_id(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.pci_nic* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.pci_nic* %7, %struct.pci_nic** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @PCI_LINK_STATUS_REG, align 4
  %10 = call i32 @pci_read_config_word(%struct.pci_dev* %8, i32 %9, i32* %4)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = load i32, i32* @PCI_DEV_CTRL_REG, align 4
  %13 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i32 %12, i32* %5)
  %14 = load i32, i32* @BDX_NIC_NAME, align 4
  %15 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %16 = getelementptr inbounds %struct.pci_nic, %struct.pci_nic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %20)
  %22 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %23 = getelementptr inbounds %struct.pci_nic, %struct.pci_nic* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SROM_VER, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %29 = getelementptr inbounds %struct.pci_nic, %struct.pci_nic* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FPGA_VER, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = and i32 %33, 4095
  %35 = load %struct.pci_nic*, %struct.pci_nic** %3, align 8
  %36 = getelementptr inbounds %struct.pci_nic, %struct.pci_nic* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FPGA_SEED, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readl(i64 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @GET_LINK_STATUS_LANES(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @GET_DEV_CTRL_MAXPL(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @GET_DEV_CTRL_MRRS(i32 %45)
  %47 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %34, i32 %40, i32 %42, i32 %44, i32 %46)
  ret void
}

declare dso_local %struct.pci_nic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @GET_LINK_STATUS_LANES(i32) #1

declare dso_local i32 @GET_DEV_CTRL_MAXPL(i32) #1

declare dso_local i32 @GET_DEV_CTRL_MRRS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
