; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_ans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_ans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32 }

@DE4X5_IMR = common dso_local global i32 0, align 4
@DE4X5_STS = common dso_local global i32 0, align 4
@DE4X5_SISR = common dso_local global i32 0, align 4
@SISR_ANS = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@ANS_NWOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @test_ans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ans(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.de4x5_private*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %13)
  store %struct.de4x5_private* %14, %struct.de4x5_private** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 100
  %25 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %26 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DE4X5_IMR, align 4
  %29 = call i32 @outl(i32 %27, i32 %28)
  %30 = load i32, i32* @DE4X5_STS, align 4
  %31 = call i32 @inl(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @DE4X5_STS, align 4
  %34 = call i32 @outl(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %22, %4
  %36 = load i32, i32* @DE4X5_SISR, align 4
  %37 = call i32 @inl(i32 %36)
  %38 = load i32, i32* @SISR_ANS, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @DE4X5_STS, align 4
  %41 = call i32 @inl(i32 %40)
  %42 = load i32, i32* @TIMER_CB, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @ANS_NWOK, align 4
  %52 = xor i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %56 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @TIMER_CB, align 4
  %62 = or i32 100, %61
  store i32 %62, i32* %11, align 4
  br label %66

63:                                               ; preds = %54, %49, %35
  %64 = load %struct.de4x5_private*, %struct.de4x5_private** %9, align 8
  %65 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
