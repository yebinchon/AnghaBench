; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_get_rx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_get_rx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i32, i64 }

@S5P_CEC_RX_BUFF0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"cec-rx: cec size(%d): %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_cec_get_rx_buf(%struct.s5p_cec_dev* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.s5p_cec_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [40 x i8], align 16
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @S5P_CEC_RX_BUFF0, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* %7, align 8
  %20 = mul i64 %19, 4
  %21 = add i64 %18, %20
  %22 = call i32 @readb(i64 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %27 = load i64, i64* %7, align 8
  %28 = mul i64 %27, 2
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i32*, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %7, align 8
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %4, align 8
  %39 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %43 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %41, i8* %42)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
