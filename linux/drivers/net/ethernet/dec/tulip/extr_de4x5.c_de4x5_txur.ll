; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_txur.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_txur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64 }

@DE4X5_OMR = common dso_local global i32 0, align 4
@OMR_SF = common dso_local global i32 0, align 4
@DC21041 = common dso_local global i64 0, align 8
@DC21040 = common dso_local global i64 0, align 8
@OMR_ST = common dso_local global i32 0, align 4
@OMR_SR = common dso_local global i32 0, align 4
@DE4X5_STS = common dso_local global i32 0, align 4
@STS_TS = common dso_local global i32 0, align 4
@OMR_TR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_txur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_txur(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @DE4X5_OMR, align 4
  %12 = call i32 @inl(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @OMR_SF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %19 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DC21041, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DC21040, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %23, %17, %1
  %30 = load i32, i32* @OMR_ST, align 4
  %31 = load i32, i32* @OMR_SR, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @DE4X5_OMR, align 4
  %38 = call i32 @outl(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %45, %29
  %40 = load i32, i32* @DE4X5_STS, align 4
  %41 = call i32 @inl(i32 %40)
  %42 = load i32, i32* @STS_TS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %39

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @OMR_TR, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @OMR_TR, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 16384
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @OMR_SF, align 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @OMR_ST, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @OMR_SR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @DE4X5_OMR, align 4
  %66 = call i32 @outl(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %23
  ret i32 0
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
