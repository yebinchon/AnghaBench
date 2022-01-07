; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@LBCIF_CONTROL_REGISTER = common dso_local global i32 0, align 4
@LBCIF_CONTROL_LBCIF_ENABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LBCIF_ADDRESS_REGISTER = common dso_local global i32 0, align 4
@LBCIF_STATUS_ACK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*, i32, i32*)* @eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_read(%struct.et131x_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.et131x_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %15 = call i32 @eeprom_wait_ready(%struct.pci_dev* %14, i32* null)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %22 = load i32, i32* @LBCIF_CONTROL_REGISTER, align 4
  %23 = load i32, i32* @LBCIF_CONTROL_LBCIF_ENABLE, align 4
  %24 = call i64 @pci_write_config_byte(%struct.pci_dev* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %20
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = load i32, i32* @LBCIF_ADDRESS_REGISTER, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @pci_write_config_dword(%struct.pci_dev* %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %58

38:                                               ; preds = %29
  %39 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %40 = call i32 @eeprom_wait_ready(%struct.pci_dev* %39, i32* %10)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %58

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @LBCIF_STATUS_ACK_ERROR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %43, %35, %26, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @eeprom_wait_ready(%struct.pci_dev*, i32*) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
