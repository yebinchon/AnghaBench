; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_msix_attr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_if.c_hinic_msix_attr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_hwif = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PENDING_LIMIT = common dso_local global i32 0, align 4
@COALESC_TIMER = common dso_local global i32 0, align 4
@LLI_TIMER = common dso_local global i32 0, align 4
@LLI_CREDIT = common dso_local global i32 0, align 4
@RESEND_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hinic_msix_attr_get(%struct.hinic_hwif* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hinic_hwif* %0, %struct.hinic_hwif** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %19 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %18, i32 0, i32 0
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @VALID_MSIX_IDX(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %52

26:                                               ; preds = %7
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @HINIC_CSR_MSIX_CTRL_ADDR(i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @hinic_hwif_read_reg(%struct.hinic_hwif* %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* @PENDING_LIMIT, align 4
  %34 = call i32 @HINIC_MSIX_ATTR_GET(i32 %32, i32 %33)
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* @COALESC_TIMER, align 4
  %38 = call i32 @HINIC_MSIX_ATTR_GET(i32 %36, i32 %37)
  %39 = load i32*, i32** %12, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* @LLI_TIMER, align 4
  %42 = call i32 @HINIC_MSIX_ATTR_GET(i32 %40, i32 %41)
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* @LLI_CREDIT, align 4
  %46 = call i32 @HINIC_MSIX_ATTR_GET(i32 %44, i32 %45)
  %47 = load i32*, i32** %14, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* @RESEND_TIMER, align 4
  %50 = call i32 @HINIC_MSIX_ATTR_GET(i32 %48, i32 %49)
  %51 = load i32*, i32** %15, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %26, %23
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @VALID_MSIX_IDX(i32*, i32) #1

declare dso_local i32 @HINIC_CSR_MSIX_CTRL_ADDR(i32) #1

declare dso_local i32 @hinic_hwif_read_reg(%struct.hinic_hwif*, i32) #1

declare dso_local i32 @HINIC_MSIX_ATTR_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
