; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/slip/extr_slip.c_sl_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.slip = type { i64, i64 }

@slip_maxdev = common dso_local global i32 0, align 4
@slip_devs = common dso_local global %struct.net_device** null, align 8
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sl_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sl_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.slip*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %41, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @slip_maxdev, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = load %struct.net_device**, %struct.net_device*** @slip_devs, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.net_device*, %struct.net_device** %9, i64 %11
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = icmp eq %struct.net_device* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %44

17:                                               ; preds = %8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call %struct.slip* @netdev_priv(%struct.net_device* %18)
  store %struct.slip* %19, %struct.slip** %3, align 8
  %20 = load %struct.slip*, %struct.slip** %3, align 8
  %21 = getelementptr inbounds %struct.slip, %struct.slip* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load %struct.slip*, %struct.slip** %3, align 8
  %26 = getelementptr inbounds %struct.slip, %struct.slip* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %17
  br label %41

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = call i32 @dev_close(%struct.net_device* %38)
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %4

44:                                               ; preds = %16, %4
  ret void
}

declare dso_local %struct.slip* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
