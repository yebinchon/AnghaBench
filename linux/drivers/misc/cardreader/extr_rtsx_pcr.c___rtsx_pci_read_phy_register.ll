; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c___rtsx_pci_read_phy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_pcr.c___rtsx_pci_read_phy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32 }

@WRITE_REG_CMD = common dso_local global i32 0, align 4
@PHYADDR = common dso_local global i32 0, align 4
@PHYRWCTL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@READ_REG_CMD = common dso_local global i32 0, align 4
@PHYDATA0 = common dso_local global i32 0, align 4
@PHYDATA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rtsx_pci_read_phy_register(%struct.rtsx_pcr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_pcr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %15 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %14)
  %16 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %17 = load i32, i32* @WRITE_REG_CMD, align 4
  %18 = load i32, i32* @PHYADDR, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %16, i32 %17, i32 %18, i32 255, i32 %19)
  %21 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %22 = load i32, i32* @WRITE_REG_CMD, align 4
  %23 = load i32, i32* @PHYRWCTL, align 4
  %24 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %21, i32 %22, i32 %23, i32 255, i32 128)
  %25 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %26 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %25, i32 100)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %92

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 100000
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %37 = load i32, i32* @PHYRWCTL, align 4
  %38 = call i32 @rtsx_pci_read_register(%struct.rtsx_pcr* %36, i32 %37, i32* %13)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %92

43:                                               ; preds = %35
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %32

52:                                               ; preds = %47, %32
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %92

58:                                               ; preds = %52
  %59 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %60 = call i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr* %59)
  %61 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %62 = load i32, i32* @READ_REG_CMD, align 4
  %63 = load i32, i32* @PHYDATA0, align 4
  %64 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %61, i32 %62, i32 %63, i32 0, i32 0)
  %65 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %66 = load i32, i32* @READ_REG_CMD, align 4
  %67 = load i32, i32* @PHYDATA1, align 4
  %68 = call i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr* %65, i32 %66, i32 %67, i32 0, i32 0)
  %69 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %70 = call i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr* %69, i32 100)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %92

75:                                               ; preds = %58
  %76 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %5, align 8
  %77 = call i32* @rtsx_pci_get_cmd_data(%struct.rtsx_pcr* %76)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 8
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %81, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %75
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %73, %55, %41, %29
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @rtsx_pci_init_cmd(%struct.rtsx_pcr*) #1

declare dso_local i32 @rtsx_pci_add_cmd(%struct.rtsx_pcr*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_pci_send_cmd(%struct.rtsx_pcr*, i32) #1

declare dso_local i32 @rtsx_pci_read_register(%struct.rtsx_pcr*, i32, i32*) #1

declare dso_local i32* @rtsx_pci_get_cmd_data(%struct.rtsx_pcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
