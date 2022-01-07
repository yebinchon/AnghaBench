; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_alloc_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_alloc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @veth_alloc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_alloc_queues(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.veth_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.veth_priv* %7, %struct.veth_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_4__* @kcalloc(i32 %10, i32 16, i32 %11)
  %13 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %14 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %13, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %16 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %32 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store %struct.net_device* %30, %struct.net_device** %37, align 8
  %38 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %39 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @u64_stats_init(i32* %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %23

50:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
