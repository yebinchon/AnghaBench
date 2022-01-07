; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_get_advertising.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_ethtool.c_get_advertising.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@Pause = common dso_local global i32 0, align 4
@Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.ethtool_link_ksettings*, i32)* @get_advertising to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_advertising(i32 %0, i32 %1, i32 %2, %struct.ethtool_link_ksettings* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethtool_link_ksettings*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ethtool_link_ksettings* %3, %struct.ethtool_link_ksettings** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %9, align 8
  %13 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %11, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @ptys2ethtool_adver_link(i64* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %9, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i32, i32* @Pause, align 4
  %26 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %23, i64* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = xor i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %9, align 8
  %34 = load i64*, i64** %11, align 8
  %35 = load i32, i32* @Asym_Pause, align 4
  %36 = call i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings* %33, i64* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @ptys2ethtool_adver_link(i64*, i32, i32) #1

declare dso_local i32 @ethtool_link_ksettings_add_link_mode(%struct.ethtool_link_ksettings*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
