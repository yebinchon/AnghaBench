; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_rx_ovfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_rx_ovfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DE4X5_OMR = common dso_local global i32 0, align 4
@OMR_SR = common dso_local global i32 0, align 4
@DE4X5_STS = common dso_local global i32 0, align 4
@STS_RS = common dso_local global i32 0, align 4
@R_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_rx_ovfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_rx_ovfc(%struct.net_device* %0) #0 {
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
  %14 = load i32, i32* @OMR_SR, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = load i32, i32* @DE4X5_OMR, align 4
  %18 = call i32 @outl(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %25, %1
  %20 = load i32, i32* @DE4X5_STS, align 4
  %21 = call i32 @inl(i32 %20)
  %22 = load i32, i32* @STS_RS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %19

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %39, %26
  %28 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %29 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %32 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le32_to_cpu(i32 %36)
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %27
  %40 = load i32, i32* @R_OWN, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  %42 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %43 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %46 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %41, i32* %49, align 4
  %50 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %51 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %55 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = urem i64 %53, %57
  %59 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %60 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %27

61:                                               ; preds = %27
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @DE4X5_OMR, align 4
  %64 = call i32 @outl(i32 %62, i32 %63)
  ret i32 0
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
