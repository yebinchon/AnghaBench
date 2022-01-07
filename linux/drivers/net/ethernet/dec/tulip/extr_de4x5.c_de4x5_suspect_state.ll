; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_suspect_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_suspect_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, i32, i32 }

@DE4X5_AUTOSENSE_MS = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*)*)* @de4x5_suspect_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_suspect_state(%struct.net_device* %0, i32 %1, i32 %2, i32 (%struct.net_device*, i32)* %3, i32 (%struct.net_device*)* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.net_device*, i32)*, align 8
  %10 = alloca i32 (%struct.net_device*)*, align 8
  %11 = alloca %struct.de4x5_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 (%struct.net_device*, i32)* %3, i32 (%struct.net_device*, i32)** %9, align 8
  store i32 (%struct.net_device*)* %4, i32 (%struct.net_device*)** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %14)
  store %struct.de4x5_private* %15, %struct.de4x5_private** %11, align 8
  %16 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %71 [
    i32 1, label %20
    i32 2, label %38
  ]

20:                                               ; preds = %5
  %21 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %22 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %28 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %31 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %10, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 %34(%struct.net_device* %35)
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %29, %25
  br label %71

38:                                               ; preds = %5
  %39 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %9, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 %39(%struct.net_device* %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @TIMER_CB, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %12, align 4
  br label %70

50:                                               ; preds = %38
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %55 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %60 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %69

61:                                               ; preds = %50
  %62 = load i32, i32* @INIT, align 4
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %66 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %53
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %5, %37
  %72 = load i32, i32* %12, align 4
  ret i32 %72
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
