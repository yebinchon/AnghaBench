; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { %struct.net_device* }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*)* @atl1c_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_configure(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  %6 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %10 = call i32 @atl1c_init_ring_ptrs(%struct.atl1c_adapter* %9)
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @atl1c_set_multi(%struct.net_device* %11)
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %14 = call i32 @atl1c_restore_vlan(%struct.atl1c_adapter* %13)
  %15 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %16 = call i32 @atl1c_alloc_rx_buffer(%struct.atl1c_adapter* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %27 = call i64 @atl1c_configure_mac(%struct.atl1c_adapter* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %22
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @atl1c_init_ring_ptrs(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_set_multi(%struct.net_device*) #1

declare dso_local i32 @atl1c_restore_vlan(%struct.atl1c_adapter*) #1

declare dso_local i32 @atl1c_alloc_rx_buffer(%struct.atl1c_adapter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atl1c_configure_mac(%struct.atl1c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
