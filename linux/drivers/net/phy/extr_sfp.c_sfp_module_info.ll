; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ethtool_modinfo = type { i32, i32 }

@SFP_DIAGMON_ADDRMODE = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp*, %struct.ethtool_modinfo*)* @sfp_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_module_info(%struct.sfp* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca %struct.sfp*, align 8
  %4 = alloca %struct.ethtool_modinfo*, align 8
  store %struct.sfp* %0, %struct.sfp** %3, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %4, align 8
  %5 = load %struct.sfp*, %struct.sfp** %3, align 8
  %6 = getelementptr inbounds %struct.sfp, %struct.sfp* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.sfp*, %struct.sfp** %3, align 8
  %13 = getelementptr inbounds %struct.sfp, %struct.sfp* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SFP_DIAGMON_ADDRMODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %22 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %25 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %34

27:                                               ; preds = %11, %2
  %28 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %29 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %32 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %20
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
