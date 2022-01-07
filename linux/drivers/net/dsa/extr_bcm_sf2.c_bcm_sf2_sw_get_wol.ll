; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* }
%struct.ethtool_wolinfo = type { i32, i32, i32 }
%struct.bcm_sf2_priv = type { i32 }

@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)* @bcm_sf2_sw_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_sw_get_wol(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_wolinfo* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ethtool_wolinfo*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.bcm_sf2_priv*, align 8
  %9 = alloca %struct.ethtool_wolinfo, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ethtool_wolinfo* %2, %struct.ethtool_wolinfo** %6, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %21 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %20)
  store %struct.bcm_sf2_priv* %21, %struct.bcm_sf2_priv** %8, align 8
  %22 = bitcast %struct.ethtool_wolinfo* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 12, i1 false)
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)** %26, align 8
  %28 = icmp ne i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %3
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)** %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = call i32 %34(%struct.net_device* %35, %struct.ethtool_wolinfo* %9)
  br label %37

37:                                               ; preds = %29, %3
  %38 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %6, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %42, i32 0, i32 1
  %44 = call i32 @memset(i32* %43, i32 0, i32 4)
  %45 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %6, align 8
  %52 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(i32* %52, i32 %54, i32 4)
  br label %56

56:                                               ; preds = %50, %37
  %57 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %8, align 8
  %58 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %6, align 8
  %68 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %72

69:                                               ; preds = %56
  %70 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %6, align 8
  %71 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %64
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
