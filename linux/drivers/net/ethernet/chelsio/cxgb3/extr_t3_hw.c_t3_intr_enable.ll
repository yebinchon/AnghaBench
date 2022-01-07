; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_val_pair = type { i32, i64 }
%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@t3_intr_enable.intr_en_avp = internal constant [10 x %struct.addr_val_pair] [%struct.addr_val_pair { i32 140, i64 129 }, %struct.addr_val_pair { i32 144, i64 135 }, %struct.addr_val_pair { i32 143, i64 135 }, %struct.addr_val_pair { i32 146, i64 135 }, %struct.addr_val_pair { i32 145, i64 137 }, %struct.addr_val_pair { i32 139, i64 128 }, %struct.addr_val_pair { i32 141, i64 130 }, %struct.addr_val_pair { i32 142, i64 131 }, %struct.addr_val_pair { i32 146, i64 138 }, %struct.addr_val_pair { i32 143, i64 132 }], align 16
@PL_INTR_MASK = common dso_local global i32 0, align 4
@A_TP_INT_ENABLE = common dso_local global i32 0, align 4
@T3_REV_C = common dso_local global i64 0, align 8
@A_CPL_INTR_ENABLE = common dso_local global i32 0, align 4
@CPLSW_INTR_MASK = common dso_local global i32 0, align 4
@F_CIM_OVFL_ERROR = common dso_local global i32 0, align 4
@A_ULPTX_INT_ENABLE = common dso_local global i32 0, align 4
@ULPTX_INTR_MASK = common dso_local global i32 0, align 4
@F_PBL_BOUND_ERR_CH0 = common dso_local global i32 0, align 4
@F_PBL_BOUND_ERR_CH1 = common dso_local global i32 0, align 4
@A_T3DBG_INT_ENABLE = common dso_local global i32 0, align 4
@A_PCIE_INT_ENABLE = common dso_local global i32 0, align 4
@PCIE_INTR_MASK = common dso_local global i32 0, align 4
@A_PCIX_INT_ENABLE = common dso_local global i32 0, align 4
@PCIX_INTR_MASK = common dso_local global i32 0, align 4
@A_PL_INT_ENABLE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_intr_enable(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load i32, i32* @PL_INTR_MASK, align 4
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.addr_val_pair* getelementptr inbounds ([10 x %struct.addr_val_pair], [10 x %struct.addr_val_pair]* @t3_intr_enable.intr_en_avp, i64 0, i64 0))
  %8 = call i32 @t3_write_regs(%struct.adapter* %6, %struct.addr_val_pair* getelementptr inbounds ([10 x %struct.addr_val_pair], [10 x %struct.addr_val_pair]* @t3_intr_enable.intr_en_avp, i64 0, i64 0), i32 %7, i32 0)
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = load i32, i32* @A_TP_INT_ENABLE, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @T3_REV_C, align 8
  %16 = icmp sge i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 46137343, i32 62914559
  %19 = call i32 @t3_write_reg(%struct.adapter* %9, i32 %10, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load i32, i32* @A_CPL_INTR_ENABLE, align 4
  %28 = load i32, i32* @CPLSW_INTR_MASK, align 4
  %29 = load i32, i32* @F_CIM_OVFL_ERROR, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @t3_write_reg(%struct.adapter* %26, i32 %27, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = load i32, i32* @A_ULPTX_INT_ENABLE, align 4
  %34 = load i32, i32* @ULPTX_INTR_MASK, align 4
  %35 = load i32, i32* @F_PBL_BOUND_ERR_CH0, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @F_PBL_BOUND_ERR_CH1, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @t3_write_reg(%struct.adapter* %32, i32 %33, i32 %38)
  br label %49

40:                                               ; preds = %1
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load i32, i32* @A_CPL_INTR_ENABLE, align 4
  %43 = load i32, i32* @CPLSW_INTR_MASK, align 4
  %44 = call i32 @t3_write_reg(%struct.adapter* %41, i32 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = load i32, i32* @A_ULPTX_INT_ENABLE, align 4
  %47 = load i32, i32* @ULPTX_INTR_MASK, align 4
  %48 = call i32 @t3_write_reg(%struct.adapter* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %25
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = load i32, i32* @A_T3DBG_INT_ENABLE, align 4
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = call i32 @calc_gpio_intr(%struct.adapter* %52)
  %54 = call i32 @t3_write_reg(%struct.adapter* %50, i32 %51, i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %2, align 8
  %56 = call i64 @is_pcie(%struct.adapter* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = load i32, i32* @A_PCIE_INT_ENABLE, align 4
  %61 = load i32, i32* @PCIE_INTR_MASK, align 4
  %62 = call i32 @t3_write_reg(%struct.adapter* %59, i32 %60, i32 %61)
  br label %68

63:                                               ; preds = %49
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = load i32, i32* @A_PCIX_INT_ENABLE, align 4
  %66 = load i32, i32* @PCIX_INTR_MASK, align 4
  %67 = call i32 @t3_write_reg(%struct.adapter* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.adapter*, %struct.adapter** %2, align 8
  %70 = load i32, i32* @A_PL_INT_ENABLE0, align 4
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @t3_write_reg(%struct.adapter* %69, i32 %70, i32 %73)
  %75 = load %struct.adapter*, %struct.adapter** %2, align 8
  %76 = load i32, i32* @A_PL_INT_ENABLE0, align 4
  %77 = call i32 @t3_read_reg(%struct.adapter* %75, i32 %76)
  ret void
}

declare dso_local i32 @t3_write_regs(%struct.adapter*, %struct.addr_val_pair*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.addr_val_pair*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @calc_gpio_intr(%struct.adapter*) #1

declare dso_local i64 @is_pcie(%struct.adapter*) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
