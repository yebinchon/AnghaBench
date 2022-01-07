; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c___rtsx_pci_write_phy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c___rtsx_pci_write_phy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@PHYDATA0 = common dso_local global i32 0, align 4
@PHYDATA1 = common dso_local global i32 0, align 4
@PHYADDR = common dso_local global i32 0, align 4
@PHYRWCTL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rtsx_pci_write_phy_register(%struct.rtsx_pcr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_pcr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %13 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %12)
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %15 = load i32, i32* @WRITE_REG_CMD, align 4
  %16 = load i32, i32* @PHYDATA0, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %14, i32 %15, i32 %16, i32 255, i32 %17)
  %19 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %20 = load i32, i32* @WRITE_REG_CMD, align 4
  %21 = load i32, i32* @PHYDATA1, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 8
  %24 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %19, i32 %20, i32 %21, i32 255, i32 %23)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %26 = load i32, i32* @WRITE_REG_CMD, align 4
  %27 = load i32, i32* @PHYADDR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %25, i32 %26, i32 %27, i32 255, i32 %28)
  %30 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %31 = load i32, i32* @WRITE_REG_CMD, align 4
  %32 = load i32, i32* @PHYRWCTL, align 4
  %33 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %30, i32 %31, i32 %32, i32 255, i32 129)
  %34 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %35 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %34, i32 100)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %68

40:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 100000
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %46 = load i32, i32* @PHYRWCTL, align 4
  %47 = call i32 @rtsx_pci_read_register(%struct.rtsx_pcr* %45, i32 %46, i32* %11)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 128
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %61

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %41

61:                                               ; preds = %56, %41
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %64, %50, %38
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_read_register(%struct.rtsx_pcr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
