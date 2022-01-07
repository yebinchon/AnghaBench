; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi2rx_priv = type { i32, i32, i32, i32, i32*, i64, i32 }

@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't disable our subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi2rx_priv*)* @csi2rx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2rx_stop(%struct.csi2rx_priv* %0) #0 {
  %2 = alloca %struct.csi2rx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.csi2rx_priv* %0, %struct.csi2rx_priv** %2, align 8
  %4 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %5 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @clk_prepare_enable(i32 %6)
  %8 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %9 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_disable_unprepare(i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %15 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %20 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @CSI2RX_STREAM_CTRL_REG(i32 %22)
  %24 = add nsw i64 %21, %23
  %25 = call i32 @writel(i32 0, i64 %24)
  %26 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %27 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %39 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_disable_unprepare(i32 %40)
  %42 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %43 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @video, align 4
  %46 = load i32, i32* @s_stream, align 4
  %47 = call i64 @v4l2_subdev_call(i32 %44, i32 %45, i32 %46, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %2, align 8
  %51 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %37
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @CSI2RX_STREAM_CTRL_REG(i32) #1

declare dso_local i64 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
