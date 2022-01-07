; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.dsa_switch* }
%struct.dsa_switch = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.dsa_switch** }
%struct.TYPE_6__ = type { %struct.net_device* }

@DSA_MAX_SWITCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6xxx_port_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_vlan(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsa_switch*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dsa_switch* null, %struct.dsa_switch** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DSA_MAX_SWITCHES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %16, i32 0, i32 0
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %17, align 8
  %19 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.dsa_switch**, %struct.dsa_switch*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dsa_switch*, %struct.dsa_switch** %22, i64 %24
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %25, align 8
  store %struct.dsa_switch* %26, %struct.dsa_switch** %8, align 8
  br label %27

27:                                               ; preds = %15, %3
  %28 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %29 = icmp ne %struct.dsa_switch* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %33 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %27
  store i32 0, i32* %4, align 4
  br label %102

37:                                               ; preds = %30
  %38 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @dsa_is_dsa_port(%struct.dsa_switch* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %37
  %48 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %49 = call i32 @mv88e6xxx_port_mask(%struct.mv88e6xxx_chip* %48)
  store i32 %49, i32* %4, align 4
  br label %102

50:                                               ; preds = %42
  %51 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %52 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.net_device*, %struct.net_device** %57, align 8
  store %struct.net_device* %58, %struct.net_device** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %97, %50
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %62 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %59
  %65 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %66 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %65, i32 0, i32 0
  %67 = load %struct.dsa_switch*, %struct.dsa_switch** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %91, label %71

71:                                               ; preds = %64
  %72 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %73 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %72, i32 0, i32 0
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @dsa_is_dsa_port(%struct.dsa_switch* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %71
  %79 = load %struct.net_device*, %struct.net_device** %9, align 8
  %80 = icmp ne %struct.net_device* %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %83 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %82, i32 0, i32 0
  %84 = load %struct.dsa_switch*, %struct.dsa_switch** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call %struct.TYPE_6__* @dsa_to_port(%struct.dsa_switch* %84, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.net_device*, %struct.net_device** %87, align 8
  %89 = load %struct.net_device*, %struct.net_device** %9, align 8
  %90 = icmp eq %struct.net_device* %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %81, %71, %64
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @BIT(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %91, %81, %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %59

100:                                              ; preds = %59
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %47, %36
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_is_dsa_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @mv88e6xxx_port_mask(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #1

declare dso_local %struct.TYPE_6__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
