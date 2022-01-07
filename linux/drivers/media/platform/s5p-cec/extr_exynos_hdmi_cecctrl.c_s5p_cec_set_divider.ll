; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_set_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_set_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i32, i32, i32 }

@S5P_HDMI_FIN = common dso_local global i32 0, align 4
@CEC_DIV_RATIO = common dso_local global i32 0, align 4
@EXYNOS_HDMI_PHY_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read phy control\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to write phy control\0A\00", align 1
@S5P_CEC_DIVISOR_3 = common dso_local global i64 0, align 8
@S5P_CEC_DIVISOR_2 = common dso_local global i64 0, align 8
@S5P_CEC_DIVISOR_1 = common dso_local global i64 0, align 8
@S5P_CEC_DIVISOR_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_cec_set_divider(%struct.s5p_cec_dev* %0) #0 {
  %2 = alloca %struct.s5p_cec_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %2, align 8
  %6 = load i32, i32* @S5P_HDMI_FIN, align 4
  %7 = load i32, i32* @CEC_DIV_RATIO, align 4
  %8 = sdiv i32 %6, %7
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EXYNOS_HDMI_PHY_CONTROL, align 4
  %14 = call i64 @regmap_read(i32 %12, i32 %13, i32* %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %18 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %74

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, -67043329
  %24 = load i32, i32* %3, align 4
  %25 = shl i32 %24, 16
  %26 = or i32 %23, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %28 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EXYNOS_HDMI_PHY_CONTROL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @regmap_write(i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %36 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %74

39:                                               ; preds = %21
  %40 = load i32, i32* @CEC_DIV_RATIO, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double %41, 5.000000e-05
  %43 = fsub double %42, 1.000000e+00
  %44 = fptosi double %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %46 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @S5P_CEC_DIVISOR_3, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writeb(i32 0, i64 %50)
  %52 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %53 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @S5P_CEC_DIVISOR_2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writeb(i32 0, i64 %57)
  %59 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %60 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @S5P_CEC_DIVISOR_1, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writeb(i32 0, i64 %64)
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %68 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @S5P_CEC_DIVISOR_0, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writeb(i32 %66, i64 %72)
  br label %74

74:                                               ; preds = %39, %34, %16
  ret void
}

declare dso_local i64 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
