; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-3ph-1-0.c_csiphy_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-3ph-1-0.c_csiphy_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csiphy_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csiphy_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.csiphy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.csiphy_device*
  store %struct.csiphy_device* %10, %struct.csiphy_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 11
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 22
  store i32 %16, i32* %7, align 4
  %17 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %18 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @readl_relaxed(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %26 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel_relaxed(i32 %24, i64 %30)
  br label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %37 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 10)
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i32 1, i64 %40)
  %42 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %43 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 10)
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 0, i64 %46)
  store i32 22, i32* %6, align 4
  br label %48

48:                                               ; preds = %59, %35
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 33
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.csiphy_device*, %struct.csiphy_device** %5, align 8
  %53 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32 %55)
  %57 = add nsw i64 %54, %56
  %58 = call i32 @writel_relaxed(i32 0, i64 %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %48

62:                                               ; preds = %48
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
