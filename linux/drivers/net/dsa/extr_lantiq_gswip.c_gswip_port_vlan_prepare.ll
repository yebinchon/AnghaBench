; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_vlan_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_port_vlan_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.gswip_priv* }
%struct.gswip_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.switchdev_obj_port_vlan = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.net_device* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.switchdev_obj_port_vlan*)* @gswip_port_vlan_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_port_vlan_prepare(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.switchdev_obj_port_vlan*, align 8
  %8 = alloca %struct.gswip_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.switchdev_obj_port_vlan* %2, %struct.switchdev_obj_port_vlan** %7, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 0
  %17 = load %struct.gswip_priv*, %struct.gswip_priv** %16, align 8
  store %struct.gswip_priv* %17, %struct.gswip_priv** %8, align 8
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.TYPE_5__* @dsa_to_port(%struct.dsa_switch* %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %9, align 8
  %23 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %24 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %13, align 4
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dsa_is_cpu_port(%struct.dsa_switch* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %3
  %34 = load %struct.net_device*, %struct.net_device** %9, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %127

39:                                               ; preds = %33, %3
  %40 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %41 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %123, %39
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.switchdev_obj_port_vlan*, %struct.switchdev_obj_port_vlan** %7, align 8
  %46 = getelementptr inbounds %struct.switchdev_obj_port_vlan, %struct.switchdev_obj_port_vlan* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %44, %47
  br i1 %48, label %49, label %126

49:                                               ; preds = %43
  store i32 -1, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %83, %49
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %54 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %55)
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %60 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.net_device*, %struct.net_device** %65, align 8
  %67 = load %struct.net_device*, %struct.net_device** %9, align 8
  %68 = icmp eq %struct.net_device* %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %58
  %70 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %71 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %14, align 4
  br label %86

82:                                               ; preds = %69, %58
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %51

86:                                               ; preds = %80, %51
  %87 = load i32, i32* %14, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %93 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %94)
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %90
  %98 = load %struct.gswip_priv*, %struct.gswip_priv** %8, align 8
  %99 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.net_device*, %struct.net_device** %104, align 8
  %106 = icmp ne %struct.net_device* %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %115

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %90

115:                                              ; preds = %107, %90
  %116 = load i32, i32* %14, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %127

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %86
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %43

126:                                              ; preds = %43
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %118, %36
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_5__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
