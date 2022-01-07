; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndo_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpsw_priv = type { %struct.TYPE_6__*, i32, i32, %struct.cpsw_common* }
%struct.TYPE_6__ = type { i32 }
%struct.cpsw_common = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"removing vlanid %d from vlan filter\0A\00", align 1
@HOST_PORT_NUM = common dso_local global i32 0, align 4
@ALE_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i64)* @cpsw_ndo_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndo_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cpsw_priv*, align 8
  %9 = alloca %struct.cpsw_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.cpsw_priv* %13, %struct.cpsw_priv** %8, align 8
  %14 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %15 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %14, i32 0, i32 3
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %15, align 8
  store %struct.cpsw_common* %16, %struct.cpsw_common** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %19 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %117

24:                                               ; preds = %3
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pm_runtime_get_sync(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %33 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pm_runtime_put_noidle(i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %117

37:                                               ; preds = %24
  %38 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %39 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %47 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %54 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %52, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %111

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %44

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %70 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @dev_info(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %75 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @cpsw_ale_del_vlan(i32 %76, i64 %77, i32 0)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %80 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %83 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @HOST_PORT_NUM, align 4
  %86 = load i32, i32* @ALE_VLAN, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @cpsw_ale_del_ucast(i32 %81, i32 %84, i32 %85, i32 %86, i64 %87)
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %92 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cpsw_priv*, %struct.cpsw_priv** %8, align 8
  %95 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ALE_VLAN, align 4
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @cpsw_ale_del_mcast(i32 %93, i32 %98, i32 0, i32 %99, i64 %100)
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %105 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @cpsw_ale_flush_multicast(i32 %106, i32 0, i64 %107)
  %109 = load i32, i32* %10, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %68, %62
  %112 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %113 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @pm_runtime_put(i32 %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %111, %31, %23
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @cpsw_ale_del_vlan(i32, i64, i32) #1

declare dso_local i32 @cpsw_ale_del_ucast(i32, i32, i32, i32, i64) #1

declare dso_local i32 @cpsw_ale_del_mcast(i32, i32, i32, i32, i64) #1

declare dso_local i32 @cpsw_ale_flush_multicast(i32, i32, i64) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
