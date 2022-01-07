; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-2ph-1-0.c_csiphy_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-2ph-1-0.c_csiphy_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i64 }

@CAMSS_CSI_PHY_GLBL_IRQ_CMD = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csiphy_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csiphy_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.csiphy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.csiphy_device*
  store %struct.csiphy_device* %9, %struct.csiphy_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %48, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %15 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @CAMSS_CSI_PHY_INTERRUPT_STATUSn(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %23 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @CAMSS_CSI_PHY_INTERRUPT_CLEARn(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @writel_relaxed(i32 %21, i64 %27)
  %29 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %30 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CAMSS_CSI_PHY_GLBL_IRQ_CMD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 1, i64 %33)
  %35 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %36 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CAMSS_CSI_PHY_GLBL_IRQ_CMD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 0, i64 %39)
  %41 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %42 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @CAMSS_CSI_PHY_INTERRUPT_CLEARn(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = call i32 @writel_relaxed(i32 0, i64 %46)
  br label %48

48:                                               ; preds = %13
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %10

51:                                               ; preds = %10
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @CAMSS_CSI_PHY_INTERRUPT_STATUSn(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CAMSS_CSI_PHY_INTERRUPT_CLEARn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
