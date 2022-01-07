; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_port_hwtstamp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_port_hwtstamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { %struct.TYPE_2__*, %struct.mv88e6xxx_port_hwtstamp* }
%struct.TYPE_2__ = type { i32 }
%struct.mv88e6xxx_port_hwtstamp = type { %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i32 }
%struct.ifreq = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_hwtstamp_get(%struct.dsa_switch* %0, i32 %1, %struct.ifreq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.mv88e6xxx_chip*, align 8
  %9 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  %10 = alloca %struct.hwtstamp_config*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifreq* %2, %struct.ifreq** %7, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %12, align 8
  store %struct.mv88e6xxx_chip* %13, %struct.mv88e6xxx_chip** %8, align 8
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %15 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %14, i32 0, i32 1
  %16 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %16, i64 %18
  store %struct.mv88e6xxx_port_hwtstamp* %19, %struct.mv88e6xxx_port_hwtstamp** %9, align 8
  %20 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %9, align 8
  %21 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %20, i32 0, i32 0
  store %struct.hwtstamp_config* %21, %struct.hwtstamp_config** %10, align 8
  %22 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %8, align 8
  %23 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %10, align 8
  %36 = call i64 @copy_to_user(i32 %34, %struct.hwtstamp_config* %35, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
