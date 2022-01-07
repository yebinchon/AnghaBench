; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.csi2tx_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @csi2tx_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2tx_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.csi2tx_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.csi2tx_priv* @v4l2_subdev_to_csi2tx(%struct.v4l2_subdev* %7)
  store %struct.csi2tx_priv* %8, %struct.csi2tx_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %10 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %16 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %21 = call i32 @csi2tx_start(%struct.csi2tx_priv* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %45

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %28 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %33 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %37 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %42 = call i32 @csi2tx_stop(%struct.csi2tx_priv* %41)
  br label %43

43:                                               ; preds = %40, %31
  br label %44

44:                                               ; preds = %43, %26
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.csi2tx_priv*, %struct.csi2tx_priv** %5, align 8
  %47 = getelementptr inbounds %struct.csi2tx_priv, %struct.csi2tx_priv* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.csi2tx_priv* @v4l2_subdev_to_csi2tx(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @csi2tx_start(%struct.csi2tx_priv*) #1

declare dso_local i32 @csi2tx_stop(%struct.csi2tx_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
