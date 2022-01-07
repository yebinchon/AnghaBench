; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_bist_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_bist_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32 }

@PCI_BIST = common dso_local global i32 0, align 4
@PCI_BIST_START = common dso_local global i32 0, align 4
@PCI_BIST_CODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*, i32*)* @s2io_bist_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2io_bist_test(%struct.s2io_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %9 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_BIST, align 4
  %12 = call i32 @pci_read_config_byte(i32 %10, i32 %11, i32* %5)
  %13 = load i32, i32* @PCI_BIST_START, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %17 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCI_BIST, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pci_write_config_word(i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %40, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 20
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %27 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PCI_BIST, align 4
  %30 = call i32 @pci_read_config_byte(i32 %28, i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PCI_BIST_START, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PCI_BIST_CODE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %7, align 4
  br label %44

40:                                               ; preds = %25
  %41 = call i32 @msleep(i32 100)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %22

44:                                               ; preds = %35, %22
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
