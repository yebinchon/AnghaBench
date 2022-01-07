; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.bcm_sf2_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.ethtool_wolinfo*)* @bcm_sf2_sw_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_sw_set_wol(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_wolinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_wolinfo*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.bcm_sf2_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ethtool_wolinfo, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ethtool_wolinfo* %2, %struct.ethtool_wolinfo** %7, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %8, align 8
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %23 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %22)
  store %struct.bcm_sf2_priv* %23, %struct.bcm_sf2_priv** %9, align 8
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %25 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = bitcast %struct.ethtool_wolinfo* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 8, i1 false)
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)** %38, align 8
  %40 = icmp ne i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %3
  %42 = load %struct.net_device*, %struct.net_device** %8, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)** %45, align 8
  %47 = load %struct.net_device*, %struct.net_device** %8, align 8
  %48 = call i32 %46(%struct.net_device* %47, %struct.ethtool_wolinfo* %11)
  br label %49

49:                                               ; preds = %41, %3
  %50 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %7, align 8
  %51 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %117

61:                                               ; preds = %49
  %62 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %7, align 8
  %63 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = shl i32 1, %67
  %69 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %70 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %81

73:                                               ; preds = %61
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %78 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %73, %66
  %82 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %83 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %88 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 1, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = shl i32 1, %94
  %96 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %97 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %108

100:                                              ; preds = %86, %81
  %101 = load i32, i32* %10, align 4
  %102 = shl i32 1, %101
  %103 = xor i32 %102, -1
  %104 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %105 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %100, %93
  %109 = load %struct.net_device*, %struct.net_device** %8, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32 (%struct.net_device*, %struct.ethtool_wolinfo*)*, i32 (%struct.net_device*, %struct.ethtool_wolinfo*)** %112, align 8
  %114 = load %struct.net_device*, %struct.net_device** %8, align 8
  %115 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %7, align 8
  %116 = call i32 %113(%struct.net_device* %114, %struct.ethtool_wolinfo* %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %108, %58
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
