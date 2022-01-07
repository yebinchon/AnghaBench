; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_netvsc_device_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_netvsc_device_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i32, %struct.netvsc_channel* }
%struct.netvsc_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netvsc_device*)* @netvsc_device_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_device_idle(%struct.netvsc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netvsc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netvsc_channel*, align 8
  store %struct.netvsc_device* %0, %struct.netvsc_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %9 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %14 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %13, i32 0, i32 1
  %15 = load %struct.netvsc_channel*, %struct.netvsc_channel** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %15, i64 %17
  store %struct.netvsc_channel* %18, %struct.netvsc_channel** %5, align 8
  %19 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %20 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %24 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %40

29:                                               ; preds = %12
  %30 = load %struct.netvsc_channel*, %struct.netvsc_channel** %5, align 8
  %31 = getelementptr inbounds %struct.netvsc_channel, %struct.netvsc_channel* %30, i32 0, i32 0
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %40

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %6

39:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %34, %28
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
