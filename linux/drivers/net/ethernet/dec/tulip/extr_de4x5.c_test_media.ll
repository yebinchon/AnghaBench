; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i64, i64 }

@DE4X5_IMR = common dso_local global i32 0, align 4
@DE4X5_STS = common dso_local global i32 0, align 4
@DC21041 = common dso_local global i64 0, align 8
@DE4X5_SISR = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i32, i32, i32)* @test_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_media(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.de4x5_private*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %19)
  store %struct.de4x5_private* %20, %struct.de4x5_private** %15, align 8
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %15, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %7
  %29 = load i32, i32* %14, align 4
  %30 = sdiv i32 %29, 100
  %31 = load %struct.de4x5_private*, %struct.de4x5_private** %15, align 8
  %32 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.de4x5_private*, %struct.de4x5_private** %15, align 8
  %34 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @reset_init_sia(%struct.net_device* %38, i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @DE4X5_IMR, align 4
  %46 = call i32 @outl(i32 %44, i32 %45)
  %47 = load i32, i32* @DE4X5_STS, align 4
  %48 = call i32 @inl(i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @DE4X5_STS, align 4
  %51 = call i32 @outl(i32 %49, i32 %50)
  %52 = load %struct.de4x5_private*, %struct.de4x5_private** %15, align 8
  %53 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DC21041, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = load %struct.de4x5_private*, %struct.de4x5_private** %15, align 8
  %59 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57, %43
  %63 = load i32, i32* @DE4X5_SISR, align 4
  %64 = call i32 @inl(i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* @DE4X5_SISR, align 4
  %67 = call i32 @outl(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %57
  br label %69

69:                                               ; preds = %68, %7
  %70 = load i32, i32* @DE4X5_STS, align 4
  %71 = call i32 @inl(i32 %70)
  %72 = load i32, i32* @TIMER_CB, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %69
  %80 = load %struct.de4x5_private*, %struct.de4x5_private** %15, align 8
  %81 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @TIMER_CB, align 4
  %87 = or i32 100, %86
  store i32 %87, i32* %17, align 4
  br label %91

88:                                               ; preds = %79, %69
  %89 = load %struct.de4x5_private*, %struct.de4x5_private** %15, align 8
  %90 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %17, align 4
  ret i32 %92
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @reset_init_sia(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
