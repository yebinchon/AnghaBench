; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c___netvsc_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c___netvsc_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i64, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }

@NVSP_PROTOCOL_VERSION_2 = common dso_local global i64 0, align 8
@NETVSC_RECEIVE_BUFFER_SIZE_LEGACY = common dso_local global i32 0, align 4
@NETVSC_RECEIVE_BUFFER_SIZE = common dso_local global i32 0, align 4
@NETVSC_SEND_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netvsc_device*, %struct.ethtool_ringparam*)* @__netvsc_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__netvsc_get_ringparam(%struct.netvsc_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.netvsc_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca i32, align 4
  store %struct.netvsc_device* %0, %struct.netvsc_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %6 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %7 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 4
  %11 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %12 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %17 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NVSP_PROTOCOL_VERSION_2, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NETVSC_RECEIVE_BUFFER_SIZE_LEGACY, align 4
  store i32 %22, i32* %5, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NETVSC_RECEIVE_BUFFER_SIZE, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %28 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sdiv i32 %26, %29
  %31 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @NETVSC_SEND_BUFFER_SIZE, align 4
  %34 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %35 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %33, %36
  %38 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
