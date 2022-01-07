; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_bridge_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_bridge_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.dsa_switch** }
%struct.dsa_switch = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.net_device* }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.net_device*)* @mv88e6xxx_bridge_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_bridge_map(%struct.mv88e6xxx_chip* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %38, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %13 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = icmp eq %struct.net_device* %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %15
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mv88e6xxx_port_vlan_map(%struct.mv88e6xxx_chip* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %103

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %10

41:                                               ; preds = %10
  %42 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %43 = call i32 @mv88e6xxx_has_pvt(%struct.mv88e6xxx_chip* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %103

46:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %99, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %47
  %52 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %53 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.dsa_switch**, %struct.dsa_switch*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %58, i64 %60
  %62 = load %struct.dsa_switch*, %struct.dsa_switch** %61, align 8
  store %struct.dsa_switch* %62, %struct.dsa_switch** %6, align 8
  %63 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %64 = icmp ne %struct.dsa_switch* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %51
  br label %102

66:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %70 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %67
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %75 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.net_device*, %struct.net_device** %80, align 8
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = icmp eq %struct.net_device* %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %73
  %85 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @mv88e6xxx_pvt_map(%struct.mv88e6xxx_chip* %85, i32 %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %103

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %67

98:                                               ; preds = %67
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %47

102:                                              ; preds = %65, %47
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %91, %45, %34
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_vlan_map(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_has_pvt(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_pvt_map(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
