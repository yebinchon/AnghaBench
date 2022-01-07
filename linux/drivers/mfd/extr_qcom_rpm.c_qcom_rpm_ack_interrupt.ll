; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom_rpm.c_qcom_rpm_ack_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_qcom_rpm.c_qcom_rpm_ack_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_rpm = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@RPM_NOTIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ignoring notification!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qcom_rpm_ack_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_rpm_ack_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qcom_rpm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.qcom_rpm*
  store %struct.qcom_rpm* %9, %struct.qcom_rpm** %5, align 8
  %10 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %11 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %12 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @RPM_CTRL_REG(%struct.qcom_rpm* %10, i64 %15)
  %17 = call i32 @readl_relaxed(i32 %16)
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %38, %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %21 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %28 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %29 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @RPM_CTRL_REG(%struct.qcom_rpm* %27, i64 %35)
  %37 = call i32 @writel_relaxed(i32 0, i32 %36)
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %43 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %44 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @RPM_CTRL_REG(%struct.qcom_rpm* %42, i64 %47)
  %49 = call i32 @writel(i32 0, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RPM_NOTIFICATION, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %56 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_warn(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %66

59:                                               ; preds = %41
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %62 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.qcom_rpm*, %struct.qcom_rpm** %5, align 8
  %64 = getelementptr inbounds %struct.qcom_rpm, %struct.qcom_rpm* %63, i32 0, i32 1
  %65 = call i32 @complete(i32* %64)
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %67
}

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @RPM_CTRL_REG(%struct.qcom_rpm*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
