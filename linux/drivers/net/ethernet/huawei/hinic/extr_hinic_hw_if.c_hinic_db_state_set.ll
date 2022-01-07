; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_db_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_db_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { i32 }

@HINIC_CSR_FUNC_ATTR4_ADDR = common dso_local global i32 0, align 4
@DB_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_db_state_set(%struct.hinic_hwif* %0, i32 %1) #0 {
  %3 = alloca %struct.hinic_hwif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %7 = load i32, i32* @HINIC_CSR_FUNC_ATTR4_ADDR, align 4
  %8 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DB_STATE, align 4
  %11 = call i32 @HINIC_FA4_CLEAR(i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DB_STATE, align 4
  %14 = call i32 @HINIC_FA4_SET(i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hinic_hwif*, %struct.hinic_hwif** %3, align 8
  %18 = load i32, i32* @HINIC_CSR_FUNC_ATTR4_ADDR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @hinic_hwif_read_reg(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_FA4_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_FA4_SET(i32, i32) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
