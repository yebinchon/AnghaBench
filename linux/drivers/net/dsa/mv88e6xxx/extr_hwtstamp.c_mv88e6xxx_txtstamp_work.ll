; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_txtstamp_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_txtstamp_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mv88e6xxx_ptp_ops* }
%struct.mv88e6xxx_ptp_ops = type { i32 }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff*, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@MV88E6XXX_PTP_TS_VALID = common dso_local global i32 0, align 4
@TX_TSTAMP_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"p%d: clearing tx timestamp hang\0A\00", align 1
@MV88E6XXX_PTP_TS_STATUS_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PTP_TS_STATUS_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"p%d: tx timestamp overrun\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"p%d: unexpected seq. id\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"p%d: txtstamp %llx status 0x%04x skb ID 0x%04x hw ID 0x%04x\0A\00", align 1
@MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_port_hwtstamp*)* @mv88e6xxx_txtstamp_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_txtstamp_work(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_port_hwtstamp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  %6 = alloca %struct.mv88e6xxx_ptp_ops*, align 8
  %7 = alloca %struct.skb_shared_hwtstamps, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6xxx_port_hwtstamp* %1, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %15 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %19, align 8
  store %struct.mv88e6xxx_ptp_ops* %20, %struct.mv88e6xxx_ptp_ops** %6, align 8
  %21 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %22 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %21, i32 0, i32 2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %169

26:                                               ; preds = %2
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %28 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %27)
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %30 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %31 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %6, align 8
  %34 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = call i32 @mv88e6xxx_port_ptp_read(%struct.mv88e6xxx_chip* %29, i32 %32, i32 %35, i32* %36, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %41 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %40)
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %158

45:                                               ; preds = %26
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* %46, align 16
  %48 = load i32, i32* @MV88E6XXX_PTP_TS_VALID, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %45
  %52 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %53 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TX_TSTAMP_TIMEOUT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i64 @time_is_before_jiffies(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %61 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %64 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_warn(i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %158

67:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %169

68:                                               ; preds = %45
  %69 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %70 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %69)
  %71 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %72 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %73 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %6, align 8
  %76 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mv88e6xxx_port_ptp_write(%struct.mv88e6xxx_chip* %71, i32 %74, i32 %77, i32 0)
  %79 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %80 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %79)
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %82 = load i32, i32* %81, align 16
  %83 = load i32, i32* @MV88E6XXX_PTP_TS_STATUS_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @MV88E6XXX_PTP_TS_STATUS_NORMAL, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %68
  %89 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %90 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %93 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_warn(i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %158

96:                                               ; preds = %68
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %100 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %105 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %108 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dev_warn(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %158

111:                                              ; preds = %96
  %112 = call i32 @memset(%struct.skb_shared_hwtstamps* %7, i32 0, i32 4)
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 16
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %115, %117
  store i32 %118, i32* %11, align 4
  %119 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %120 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %119)
  %121 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %122 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %121, i32 0, i32 1
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @timecounter_cyc2time(i32* %122, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %126 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %125)
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @ns_to_ktime(i32 %127)
  %129 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %7, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %131 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %134 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %7, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ktime_to_ns(i32 %137)
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %142 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @dev_dbg(i32 %132, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %138, i32 %140, i32 %143, i32 %145)
  %147 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %148 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %147, i32 0, i32 2
  %149 = load %struct.sk_buff*, %struct.sk_buff** %148, align 8
  store %struct.sk_buff* %149, %struct.sk_buff** %10, align 8
  %150 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %151 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %150, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %151, align 8
  %152 = load i32, i32* @MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS, align 4
  %153 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %154 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %153, i32 0, i32 1
  %155 = call i32 @clear_bit_unlock(i32 %152, i32* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = call i32 @skb_complete_tx_timestamp(%struct.sk_buff* %156, %struct.skb_shared_hwtstamps* %7)
  store i32 0, i32* %3, align 4
  br label %169

158:                                              ; preds = %103, %88, %59, %44
  %159 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %160 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %159, i32 0, i32 2
  %161 = load %struct.sk_buff*, %struct.sk_buff** %160, align 8
  %162 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %161)
  %163 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %164 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %163, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %164, align 8
  %165 = load i32, i32* @MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS, align 4
  %166 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %5, align 8
  %167 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %166, i32 0, i32 1
  %168 = call i32 @clear_bit_unlock(i32 %165, i32* %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %158, %111, %67, %25
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_ptp_read(%struct.mv88e6xxx_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mv88e6xxx_port_ptp_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @skb_complete_tx_timestamp(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
