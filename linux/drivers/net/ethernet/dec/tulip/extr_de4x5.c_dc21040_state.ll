; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc21040_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_dc21040_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, i32, i32, i32 }

@DE4X5_AUTOSENSE_MS = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32, i32, i32, i32 (%struct.net_device*, i32)*)* @dc21040_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc21040_state(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 (%struct.net_device*, i32)* %7) #0 {
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32 (%struct.net_device*, i32)*, align 8
  %17 = alloca %struct.de4x5_private*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 (%struct.net_device*, i32)* %7, i32 (%struct.net_device*, i32)** %16, align 8
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %20)
  store %struct.de4x5_private* %21, %struct.de4x5_private** %17, align 8
  %22 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %22, i32* %18, align 4
  %23 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %24 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %90 [
    i32 0, label %26
    i32 1, label %36
  ]

26:                                               ; preds = %8
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @reset_init_sia(%struct.net_device* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %33 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 500, i32* %18, align 4
  br label %90

36:                                               ; preds = %8
  %37 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %38 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %73, label %41

41:                                               ; preds = %36
  %42 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %16, align 8
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 %42(%struct.net_device* %43, i32 %44)
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @TIMER_CB, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  store i32 %52, i32* %18, align 4
  br label %72

53:                                               ; preds = %41
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %58 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @AUTO, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %67 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %56, %53
  %69 = load %struct.net_device*, %struct.net_device** %9, align 8
  %70 = call i32 @de4x5_init_connection(%struct.net_device* %69)
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %48
  br label %89

73:                                               ; preds = %36
  %74 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %75 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %80 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AUTO, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.de4x5_private*, %struct.de4x5_private** %17, align 8
  %87 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 3000, i32* %18, align 4
  br label %88

88:                                               ; preds = %84, %78, %73
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %8, %89, %26
  %91 = load i32, i32* %18, align 4
  ret i32 %91
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @reset_init_sia(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @de4x5_init_connection(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
