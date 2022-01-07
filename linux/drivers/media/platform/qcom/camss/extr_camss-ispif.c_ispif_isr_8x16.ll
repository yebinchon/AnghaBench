; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_isr_8x16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_isr_8x16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i32, i64 }

@ISPIF_IRQ_GLOBAL_CLEAR_CMD = common dso_local global i64 0, align 8
@ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"VFE0 pix0 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"VFE0 rdi0 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"VFE0 pix1 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"VFE0 rdi1 overflow\0A\00", align 1
@ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"VFE0 rdi2 overflow\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ispif_isr_8x16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ispif_isr_8x16(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ispif_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ispif_device*
  store %struct.ispif_device* %10, %struct.ispif_device** %5, align 8
  %11 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %12 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @ISPIF_VFE_m_IRQ_STATUS_0(i32 0)
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %18 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @ISPIF_VFE_m_IRQ_STATUS_1(i32 0)
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %24 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @ISPIF_VFE_m_IRQ_STATUS_2(i32 0)
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl_relaxed(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %31 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32 0)
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel_relaxed(i32 %29, i64 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %38 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32 0)
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %36, i64 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %45 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ISPIF_VFE_m_IRQ_CLEAR_2(i32 0)
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel_relaxed(i32 %43, i64 %48)
  %50 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %51 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ISPIF_IRQ_GLOBAL_CLEAR_CMD, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 1, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 27
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %2
  %61 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %62 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %61, i32 0, i32 0
  %63 = call i32 @complete(i32* %62)
  br label %64

64:                                               ; preds = %60, %2
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_0_PIX0_OVERFLOW, align 4
  %67 = and i32 %65, %66
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %72 = call i32 @to_device(%struct.ispif_device* %71)
  %73 = call i32 @dev_err_ratelimited(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_0_RDI0_OVERFLOW, align 4
  %77 = and i32 %75, %76
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %82 = call i32 @to_device(%struct.ispif_device* %81)
  %83 = call i32 @dev_err_ratelimited(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %74
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_1_PIX1_OVERFLOW, align 4
  %87 = and i32 %85, %86
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %92 = call i32 @to_device(%struct.ispif_device* %91)
  %93 = call i32 @dev_err_ratelimited(i32 %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %84
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_1_RDI1_OVERFLOW, align 4
  %97 = and i32 %95, %96
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %102 = call i32 @to_device(%struct.ispif_device* %101)
  %103 = call i32 @dev_err_ratelimited(i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @ISPIF_VFE_m_IRQ_STATUS_2_RDI2_OVERFLOW, align 4
  %107 = and i32 %105, %106
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.ispif_device*, %struct.ispif_device** %5, align 8
  %112 = call i32 @to_device(%struct.ispif_device* %111)
  %113 = call i32 @dev_err_ratelimited(i32 %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %104
  %115 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %115
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_STATUS_0(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_STATUS_1(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_STATUS_2(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_0(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_1(i32) #1

declare dso_local i64 @ISPIF_VFE_m_IRQ_CLEAR_2(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @to_device(%struct.ispif_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
