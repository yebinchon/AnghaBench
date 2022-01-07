; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_set_ctrl0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_set_ctrl0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i32, i32, i32, %struct.msix_entry }
%struct.msix_entry = type { i32 }

@HINIC_AEQ = common dso_local global i32 0, align 4
@INT_IDX = common dso_local global i32 0, align 4
@DMA_ATTR = common dso_local global i32 0, align 4
@PCI_INTF_IDX = common dso_local global i32 0, align 4
@INT_MODE = common dso_local global i32 0, align 4
@DMA_ATTR_AEQ_DEFAULT = common dso_local global i32 0, align 4
@EQ_INT_MODE_ARMED = common dso_local global i32 0, align 4
@HINIC_CEQ = common dso_local global i32 0, align 4
@INTR_IDX = common dso_local global i32 0, align 4
@KICK_THRESH = common dso_local global i32 0, align 4
@INTR_MODE = common dso_local global i32 0, align 4
@DMA_ATTR_CEQ_DEFAULT = common dso_local global i32 0, align 4
@THRESH_CEQ_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_eq*)* @set_ctrl0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ctrl0(%struct.hinic_eq* %0) #0 {
  %2 = alloca %struct.hinic_eq*, align 8
  %3 = alloca %struct.msix_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hinic_eq* %0, %struct.hinic_eq** %2, align 8
  %8 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %9 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %8, i32 0, i32 3
  store %struct.msix_entry* %9, %struct.msix_entry** %3, align 8
  %10 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %11 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @HINIC_AEQ, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %1
  %17 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %18 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @HINIC_CSR_AEQ_CTRL_0_ADDR(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %22 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @hinic_hwif_read_reg(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @INT_IDX, align 4
  %28 = call i32 @HINIC_AEQ_CTRL_0_CLEAR(i32 %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DMA_ATTR, align 4
  %31 = call i32 @HINIC_AEQ_CTRL_0_CLEAR(i32 %29, i32 %30)
  %32 = and i32 %28, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PCI_INTF_IDX, align 4
  %35 = call i32 @HINIC_AEQ_CTRL_0_CLEAR(i32 %33, i32 %34)
  %36 = and i32 %32, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @INT_MODE, align 4
  %39 = call i32 @HINIC_AEQ_CTRL_0_CLEAR(i32 %37, i32 %38)
  %40 = and i32 %36, %39
  store i32 %40, i32* %6, align 4
  %41 = load %struct.msix_entry*, %struct.msix_entry** %3, align 8
  %42 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @INT_IDX, align 4
  %45 = call i32 @HINIC_AEQ_CTRL_0_SET(i32 %43, i32 %44)
  %46 = load i32, i32* @DMA_ATTR_AEQ_DEFAULT, align 4
  %47 = load i32, i32* @DMA_ATTR, align 4
  %48 = call i32 @HINIC_AEQ_CTRL_0_SET(i32 %46, i32 %47)
  %49 = or i32 %45, %48
  %50 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %51 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @HINIC_HWIF_PCI_INTF(i32 %52)
  %54 = load i32, i32* @PCI_INTF_IDX, align 4
  %55 = call i32 @HINIC_AEQ_CTRL_0_SET(i32 %53, i32 %54)
  %56 = or i32 %49, %55
  %57 = load i32, i32* @EQ_INT_MODE_ARMED, align 4
  %58 = load i32, i32* @INT_MODE, align 4
  %59 = call i32 @HINIC_AEQ_CTRL_0_SET(i32 %57, i32 %58)
  %60 = or i32 %56, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %65 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @hinic_hwif_write_reg(i32 %66, i32 %67, i32 %68)
  br label %137

70:                                               ; preds = %1
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @HINIC_CEQ, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %136

74:                                               ; preds = %70
  %75 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %76 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @HINIC_CSR_CEQ_CTRL_0_ADDR(i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %80 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @hinic_hwif_read_reg(i32 %81, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @INTR_IDX, align 4
  %86 = call i32 @HINIC_CEQ_CTRL_0_CLEAR(i32 %84, i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @DMA_ATTR, align 4
  %89 = call i32 @HINIC_CEQ_CTRL_0_CLEAR(i32 %87, i32 %88)
  %90 = and i32 %86, %89
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @KICK_THRESH, align 4
  %93 = call i32 @HINIC_CEQ_CTRL_0_CLEAR(i32 %91, i32 %92)
  %94 = and i32 %90, %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PCI_INTF_IDX, align 4
  %97 = call i32 @HINIC_CEQ_CTRL_0_CLEAR(i32 %95, i32 %96)
  %98 = and i32 %94, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @INTR_MODE, align 4
  %101 = call i32 @HINIC_CEQ_CTRL_0_CLEAR(i32 %99, i32 %100)
  %102 = and i32 %98, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.msix_entry*, %struct.msix_entry** %3, align 8
  %104 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @INTR_IDX, align 4
  %107 = call i32 @HINIC_CEQ_CTRL_0_SET(i32 %105, i32 %106)
  %108 = load i32, i32* @DMA_ATTR_CEQ_DEFAULT, align 4
  %109 = load i32, i32* @DMA_ATTR, align 4
  %110 = call i32 @HINIC_CEQ_CTRL_0_SET(i32 %108, i32 %109)
  %111 = or i32 %107, %110
  %112 = load i32, i32* @THRESH_CEQ_DEFAULT, align 4
  %113 = load i32, i32* @KICK_THRESH, align 4
  %114 = call i32 @HINIC_CEQ_CTRL_0_SET(i32 %112, i32 %113)
  %115 = or i32 %111, %114
  %116 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %117 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @HINIC_HWIF_PCI_INTF(i32 %118)
  %120 = load i32, i32* @PCI_INTF_IDX, align 4
  %121 = call i32 @HINIC_CEQ_CTRL_0_SET(i32 %119, i32 %120)
  %122 = or i32 %115, %121
  %123 = load i32, i32* @EQ_INT_MODE_ARMED, align 4
  %124 = load i32, i32* @INTR_MODE, align 4
  %125 = call i32 @HINIC_CEQ_CTRL_0_SET(i32 %123, i32 %124)
  %126 = or i32 %122, %125
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %131 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @hinic_hwif_write_reg(i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %74, %70
  br label %137

137:                                              ; preds = %136, %16
  ret void
}

declare dso_local i32 @HINIC_CSR_AEQ_CTRL_0_ADDR(i32) #1

declare dso_local i32 @hinic_hwif_read_reg(i32, i32) #1

declare dso_local i32 @HINIC_AEQ_CTRL_0_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_AEQ_CTRL_0_SET(i32, i32) #1

declare dso_local i32 @HINIC_HWIF_PCI_INTF(i32) #1

declare dso_local i32 @hinic_hwif_write_reg(i32, i32, i32) #1

declare dso_local i32 @HINIC_CSR_CEQ_CTRL_0_ADDR(i32) #1

declare dso_local i32 @HINIC_CEQ_CTRL_0_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_CEQ_CTRL_0_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
