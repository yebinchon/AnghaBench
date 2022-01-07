; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i32, i64 }

@S5P_CEC_STATUS_0 = common dso_local global i64 0, align 8
@S5P_CEC_TX_STAT1 = common dso_local global i64 0, align 8
@S5P_CEC_STATUS_1 = common dso_local global i64 0, align 8
@S5P_CEC_STATUS_2 = common dso_local global i64 0, align 8
@S5P_CEC_STATUS_3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"status = 0x%x!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_cec_get_status(%struct.s5p_cec_dev* %0) #0 {
  %2 = alloca %struct.s5p_cec_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S5P_CEC_STATUS_0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readb(i64 %8)
  %10 = and i32 %9, 15
  store i32 %10, i32* %3, align 4
  %11 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %12 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S5P_CEC_TX_STAT1, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readb(i64 %15)
  %17 = and i32 %16, 15
  %18 = shl i32 %17, 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %22 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @S5P_CEC_STATUS_1, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readb(i64 %25)
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %31 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S5P_CEC_STATUS_2, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readb(i64 %34)
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %40 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @S5P_CEC_STATUS_3, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readb(i64 %43)
  %45 = shl i32 %44, 24
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %49 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
