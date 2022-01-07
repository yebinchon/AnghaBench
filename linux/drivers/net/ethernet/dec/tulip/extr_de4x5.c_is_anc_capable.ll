; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_is_anc_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_is_anc_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@MII_SR = common dso_local global i32 0, align 4
@DE4X5_MII = common dso_local global i32 0, align 4
@DC2114x = common dso_local global i32 0, align 4
@DE4X5_SISR = common dso_local global i32 0, align 4
@SISR_LPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @is_anc_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_anc_capable(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.de4x5_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %12 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %15 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %28 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @MII_SR, align 4
  %33 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %34 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %37 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DE4X5_MII, align 4
  %43 = call i32 @mii_rd(i32 %32, i32 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %26, %1
  %45 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %46 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, -256
  %49 = load i32, i32* @DC2114x, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @DE4X5_SISR, align 4
  %53 = call i32 @inl(i32 %52)
  %54 = load i32, i32* @SISR_LPN, align 4
  %55 = and i32 %53, %54
  %56 = ashr i32 %55, 12
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %51, %31
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_rd(i32, i32, i32) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
