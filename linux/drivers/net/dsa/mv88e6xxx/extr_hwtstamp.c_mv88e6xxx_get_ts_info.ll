; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6xxx_chip* }
%struct.mv88e6xxx_chip = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mv88e6xxx_ptp_ops* }
%struct.mv88e6xxx_ptp_ops = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_get_ts_info(%struct.dsa_switch* %0, i32 %1, %struct.ethtool_ts_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_ts_info*, align 8
  %8 = alloca %struct.mv88e6xxx_ptp_ops*, align 8
  %9 = alloca %struct.mv88e6xxx_chip*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ethtool_ts_info* %2, %struct.ethtool_ts_info** %7, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %11, align 8
  store %struct.mv88e6xxx_chip* %12, %struct.mv88e6xxx_chip** %9, align 8
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %14 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %18, align 8
  store %struct.mv88e6xxx_ptp_ops* %19, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %21 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %3
  %30 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %31 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %7, align 8
  %36 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %9, align 8
  %38 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ptp_clock_index(i32 %39)
  %41 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %7, align 8
  %42 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %7, align 8
  %49 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %51 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %7, align 8
  %54 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %29, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ptp_clock_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
