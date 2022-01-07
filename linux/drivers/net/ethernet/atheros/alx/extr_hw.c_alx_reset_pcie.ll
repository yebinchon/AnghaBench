; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_reset_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@ALX_PCI_CMD = common dso_local global i32 0, align 4
@PCI_COMMAND_INTX_DISABLE = common dso_local global i32 0, align 4
@ALX_WOL0 = common dso_local global i32 0, align 4
@ALX_PDLL_TRNS1 = common dso_local global i32 0, align 4
@ALX_PDLL_TRNS1_D3PLLOFF_EN = common dso_local global i32 0, align 4
@ALX_UE_SVRT = common dso_local global i32 0, align 4
@ALX_UE_SVRT_DLPROTERR = common dso_local global i32 0, align 4
@ALX_UE_SVRT_FCPROTERR = common dso_local global i32 0, align 4
@ALX_MASTER = common dso_local global i32 0, align 4
@ALX_MASTER_WAKEN_25M = common dso_local global i32 0, align 4
@ALX_MASTER_PCLKSEL_SRDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alx_reset_pcie(%struct.alx_hw* %0) #0 {
  %2 = alloca %struct.alx_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %2, align 8
  %6 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %7 = call i32 @alx_hw_revision(%struct.alx_hw* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %9 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_COMMAND, align 4
  %12 = call i32 @pci_read_config_word(i32 %10, i32 %11, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ALX_PCI_CMD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ALX_PCI_CMD, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PCI_COMMAND_INTX_DISABLE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %30 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCI_COMMAND, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pci_write_config_word(i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %17
  %36 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %37 = load i32, i32* @ALX_WOL0, align 4
  %38 = call i32 @alx_read_mem32(%struct.alx_hw* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %40 = load i32, i32* @ALX_WOL0, align 4
  %41 = call i32 @alx_write_mem32(%struct.alx_hw* %39, i32 %40, i32 0)
  %42 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %43 = load i32, i32* @ALX_PDLL_TRNS1, align 4
  %44 = call i32 @alx_read_mem32(%struct.alx_hw* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %46 = load i32, i32* @ALX_PDLL_TRNS1, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @ALX_PDLL_TRNS1_D3PLLOFF_EN, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @alx_write_mem32(%struct.alx_hw* %45, i32 %46, i32 %50)
  %52 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %53 = load i32, i32* @ALX_UE_SVRT, align 4
  %54 = call i32 @alx_read_mem32(%struct.alx_hw* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @ALX_UE_SVRT_DLPROTERR, align 4
  %56 = load i32, i32* @ALX_UE_SVRT_FCPROTERR, align 4
  %57 = or i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %62 = load i32, i32* @ALX_UE_SVRT, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @alx_write_mem32(%struct.alx_hw* %61, i32 %62, i32 %63)
  %65 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %66 = load i32, i32* @ALX_MASTER, align 4
  %67 = call i32 @alx_read_mem32(%struct.alx_hw* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @alx_is_rev_a(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %95

71:                                               ; preds = %35
  %72 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %73 = call i64 @alx_hw_with_cr(%struct.alx_hw* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @ALX_MASTER_WAKEN_25M, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @ALX_MASTER_PCLKSEL_SRDS, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80, %75
  %86 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %87 = load i32, i32* @ALX_MASTER, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @ALX_MASTER_PCLKSEL_SRDS, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @ALX_MASTER_WAKEN_25M, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @alx_write_mem32(%struct.alx_hw* %86, i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %85, %80
  br label %116

95:                                               ; preds = %71, %35
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @ALX_MASTER_WAKEN_25M, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @ALX_MASTER_PCLKSEL_SRDS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100, %95
  %106 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %107 = load i32, i32* @ALX_MASTER, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @ALX_MASTER_PCLKSEL_SRDS, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = load i32, i32* @ALX_MASTER_WAKEN_25M, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @alx_write_mem32(%struct.alx_hw* %106, i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %105, %100
  br label %116

116:                                              ; preds = %115, %94
  %117 = load %struct.alx_hw*, %struct.alx_hw** %2, align 8
  %118 = call i32 @alx_enable_aspm(%struct.alx_hw* %117, i32 1, i32 1)
  %119 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @alx_hw_revision(%struct.alx_hw*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @alx_read_mem32(%struct.alx_hw*, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i64 @alx_is_rev_a(i32) #1

declare dso_local i64 @alx_hw_with_cr(%struct.alx_hw*) #1

declare dso_local i32 @alx_enable_aspm(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
