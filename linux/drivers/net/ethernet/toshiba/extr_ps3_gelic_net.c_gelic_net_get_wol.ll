; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_net_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_net_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i64, i64 }

@WAKE_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @gelic_net_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_net_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %5 = call i64 @ps3_compare_firmware_version(i32 2, i32 2, i32 0)
  %6 = icmp sle i64 0, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i64, i64* @WAKE_MAGIC, align 8
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = call i64 (...) @ps3_sys_manager_get_wol()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i64 [ %20, %17 ], [ 0, %21 ]
  %24 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %26, i32 0, i32 0
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  ret void
}

declare dso_local i64 @ps3_compare_firmware_version(i32, i32, i32) #1

declare dso_local i64 @ps3_sys_manager_get_wol(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
