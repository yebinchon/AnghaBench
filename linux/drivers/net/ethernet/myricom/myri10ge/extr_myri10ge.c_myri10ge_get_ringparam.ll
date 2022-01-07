; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.myri10ge_priv = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @myri10ge_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.myri10ge_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.myri10ge_priv* %7, %struct.myri10ge_priv** %5, align 8
  %8 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %9 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 6
  store i64 %15, i64* %17, align 8
  %18 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %19 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %31 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %43, i32 0, i32 7
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %48, i32 0, i32 5
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %59 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  ret void
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
