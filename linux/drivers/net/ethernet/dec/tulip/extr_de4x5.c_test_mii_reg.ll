; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_mii_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_test_mii_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DE4X5_MII = common dso_local global i32 0, align 4
@TIMER_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32, i64)* @test_mii_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mii_reg(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.de4x5_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %14)
  store %struct.de4x5_private* %15, %struct.de4x5_private** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %20 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = sdiv i64 %24, 100
  %26 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %27 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %23, %5
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %31 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %34 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DE4X5_MII, align 4
  %40 = call i32 @mii_rd(i32 %29, i32 %38, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 -1, i32 0
  %48 = xor i32 %43, %47
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %28
  %54 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %55 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @TIMER_CB, align 4
  %61 = or i32 100, %60
  store i32 %61, i32* %7, align 4
  br label %65

62:                                               ; preds = %53, %28
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %11, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 0
  store i64 -1, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_rd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
