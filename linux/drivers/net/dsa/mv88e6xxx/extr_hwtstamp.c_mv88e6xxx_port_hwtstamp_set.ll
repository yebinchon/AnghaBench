; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_port_hwtstamp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_port_hwtstamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { %struct.TYPE_2__*, %struct.mv88e6xxx_port_hwtstamp* }
%struct.TYPE_2__ = type { i32 }
%struct.mv88e6xxx_port_hwtstamp = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_hwtstamp_set(%struct.dsa_switch* %0, i32 %1, %struct.ifreq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.mv88e6xxx_chip*, align 8
  %9 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  %10 = alloca %struct.hwtstamp_config, align 4
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifreq* %2, %struct.ifreq** %7, align 8
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %13, align 8
  store %struct.mv88e6xxx_chip* %14, %struct.mv88e6xxx_chip** %8, align 8
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %15, i32 0, i32 1
  %17 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %17, i64 %19
  store %struct.mv88e6xxx_port_hwtstamp* %20, %struct.mv88e6xxx_port_hwtstamp** %9, align 8
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %22 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %62

30:                                               ; preds = %3
  %31 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @copy_from_user(%struct.hwtstamp_config* %10, i32 %33, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %30
  %40 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mv88e6xxx_set_hwtstamp_config(%struct.mv88e6xxx_chip* %40, i32 %41, %struct.hwtstamp_config* %10)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %62

47:                                               ; preds = %39
  %48 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %9, align 8
  %49 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %48, i32 0, i32 0
  %50 = call i32 @memcpy(i32* %49, %struct.hwtstamp_config* %10, i32 4)
  %51 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @copy_to_user(i32 %53, %struct.hwtstamp_config* %10, i32 4)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  br label %60

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %45, %36, %27
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_set_hwtstamp_config(%struct.mv88e6xxx_chip*, i32, %struct.hwtstamp_config*) #1

declare dso_local i32 @memcpy(i32*, %struct.hwtstamp_config*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
