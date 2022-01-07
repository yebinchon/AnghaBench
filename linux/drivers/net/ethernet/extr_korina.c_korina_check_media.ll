; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_check_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_check_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.korina_private = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ETH_MAC2_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @korina_check_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @korina_check_media(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.korina_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.korina_private* @netdev_priv(%struct.net_device* %6)
  store %struct.korina_private* %7, %struct.korina_private** %5, align 8
  %8 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %9 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %8, i32 0, i32 1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @mii_check_media(%struct.TYPE_4__* %9, i32 0, i32 %10)
  %12 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %13 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %19 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @readl(i32* %21)
  %23 = load i32, i32* @ETH_MAC2_FD, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %26 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @writel(i32 %24, i32* %28)
  br label %44

30:                                               ; preds = %2
  %31 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %32 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @readl(i32* %34)
  %36 = load i32, i32* @ETH_MAC2_FD, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load %struct.korina_private*, %struct.korina_private** %5, align 8
  %40 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @writel(i32 %38, i32* %42)
  br label %44

44:                                               ; preds = %30, %17
  ret void
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_check_media(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
