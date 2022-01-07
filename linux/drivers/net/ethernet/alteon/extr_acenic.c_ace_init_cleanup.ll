; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_init_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alteon/extr_acenic.c_ace_init_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ace_private = type { i32, i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ace_init_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_init_cleanup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ace_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ace_private* @netdev_priv(%struct.net_device* %4)
  store %struct.ace_private* %5, %struct.ace_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @ace_free_descriptors(%struct.net_device* %6)
  %8 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %9 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %14 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %17 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %20 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pci_free_consistent(i32 %15, i32 4, i64 %18, i32 %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %25 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %29 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @free_irq(i64 %39, %struct.net_device* %40)
  br label %42

42:                                               ; preds = %36, %23
  %43 = load %struct.ace_private*, %struct.ace_private** %3, align 8
  %44 = getelementptr inbounds %struct.ace_private, %struct.ace_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @iounmap(i32 %45)
  ret void
}

declare dso_local %struct.ace_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ace_free_descriptors(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
