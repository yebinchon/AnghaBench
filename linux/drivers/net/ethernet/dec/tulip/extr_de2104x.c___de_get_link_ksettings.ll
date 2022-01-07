; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c___de_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c___de_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, i64, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@PORT_AUI = common dso_local global i32 0, align 4
@PORT_BNC = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@MacMode = common dso_local global i32 0, align 4
@FullDuplex = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*, %struct.ethtool_link_ksettings*)* @__de_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__de_get_link_ksettings(%struct.de_private* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %5 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.de_private*, %struct.de_private** %3, align 8
  %10 = getelementptr inbounds %struct.de_private, %struct.de_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %8, i32 %11)
  %13 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.de_private*, %struct.de_private** %3, align 8
  %21 = getelementptr inbounds %struct.de_private, %struct.de_private* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %19, i32 %22)
  %24 = load %struct.de_private*, %struct.de_private** %3, align 8
  %25 = getelementptr inbounds %struct.de_private, %struct.de_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %37 [
    i32 129, label %27
    i32 128, label %32
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @PORT_AUI, align 4
  %29 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* @PORT_BNC, align 4
  %34 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  br label %42

37:                                               ; preds = %2
  %38 = load i32, i32* @PORT_TP, align 4
  %39 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %32, %27
  %43 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 10, i32* %45, align 8
  %46 = load i32, i32* @MacMode, align 4
  %47 = call i32 @dr32(i32 %46)
  %48 = load i32, i32* @FullDuplex, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* @DUPLEX_FULL, align 4
  %53 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  br label %61

56:                                               ; preds = %42
  %57 = load i32, i32* @DUPLEX_HALF, align 4
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.de_private*, %struct.de_private** %3, align 8
  %63 = getelementptr inbounds %struct.de_private, %struct.de_private* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @AUTONEG_DISABLE, align 4
  %68 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %76

71:                                               ; preds = %61
  %72 = load i32, i32* @AUTONEG_ENABLE, align 4
  %73 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %66
  ret void
}

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i32 @dr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
