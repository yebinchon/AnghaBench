; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_msix_attr_cnt_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_msix_attr_cnt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RESEND_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_msix_attr_cnt_clear(%struct.hinic_hwif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hinic_hwif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %9 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @VALID_MSIX_IDX(i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @RESEND_TIMER, align 4
  %18 = call i32 @HINIC_MSIX_CNT_SET(i32 1, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @HINIC_CSR_MSIX_CNT_ADDR(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @hinic_hwif_write_reg(%struct.hinic_hwif* %21, i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @VALID_MSIX_IDX(i32*, i32) #1

declare dso_local i32 @HINIC_MSIX_CNT_SET(i32, i32) #1

declare dso_local i32 @HINIC_CSR_MSIX_CNT_ADDR(i32) #1

declare dso_local i32 @hinic_hwif_write_reg(%struct.hinic_hwif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
