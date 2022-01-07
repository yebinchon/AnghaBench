; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.ethtool_cmd = type { i64, i32 }

@watchdog = common dso_local global i32 0, align 4
@ETHTOOL_GSET = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"right now = %ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"NIC Link is Up %u Mbps %s Duplex\0A\00", align 1
@SPEED_100 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@irq_sw_gen = common dso_local global i32 0, align 4
@mac_82557_D100_C = common dso_local global i64 0, align 8
@ich = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@ich_10h_workaround = common dso_local global i32 0, align 4
@E100_WATCHDOG_PERIOD = common dso_local global i64 0, align 8
@nic = common dso_local global %struct.nic* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @e100_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.ethtool_cmd, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.nic*, %struct.nic** %3, align 8
  %7 = ptrtoint %struct.nic* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @watchdog, align 4
  %10 = call %struct.nic* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.nic* %10, %struct.nic** %3, align 8
  %11 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %13 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %13, i32* %12, align 8
  %14 = load %struct.nic*, %struct.nic** %3, align 8
  %15 = load i32, i32* @timer, align 4
  %16 = load i32, i32* @KERN_DEBUG, align 4
  %17 = load %struct.nic*, %struct.nic** %3, align 8
  %18 = getelementptr inbounds %struct.nic, %struct.nic* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* @jiffies, align 8
  %21 = call i32 @netif_printk(%struct.nic* %14, i32 %15, i32 %16, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.nic*, %struct.nic** %3, align 8
  %23 = getelementptr inbounds %struct.nic, %struct.nic* %22, i32 0, i32 6
  %24 = call i32 @mii_ethtool_gset(i32* %23, %struct.ethtool_cmd* %4)
  %25 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %4)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.nic*, %struct.nic** %3, align 8
  %27 = getelementptr inbounds %struct.nic, %struct.nic* %26, i32 0, i32 6
  %28 = call i64 @mii_link_ok(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %1
  %31 = load %struct.nic*, %struct.nic** %3, align 8
  %32 = getelementptr inbounds %struct.nic, %struct.nic* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @netif_carrier_ok(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = load %struct.nic*, %struct.nic** %3, align 8
  %38 = getelementptr inbounds %struct.nic, %struct.nic* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @SPEED_100, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 100, i32 10
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DUPLEX_FULL, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %51 = call i32 (i32, i8*, ...) @netdev_info(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* %50)
  br label %69

52:                                               ; preds = %30, %1
  %53 = load %struct.nic*, %struct.nic** %3, align 8
  %54 = getelementptr inbounds %struct.nic, %struct.nic* %53, i32 0, i32 6
  %55 = call i64 @mii_link_ok(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52
  %58 = load %struct.nic*, %struct.nic** %3, align 8
  %59 = getelementptr inbounds %struct.nic, %struct.nic* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @netif_carrier_ok(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.nic*, %struct.nic** %3, align 8
  %65 = getelementptr inbounds %struct.nic, %struct.nic* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @netdev_info(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %57, %52
  br label %69

69:                                               ; preds = %68, %36
  %70 = load %struct.nic*, %struct.nic** %3, align 8
  %71 = getelementptr inbounds %struct.nic, %struct.nic* %70, i32 0, i32 6
  %72 = call i32 @mii_check_link(i32* %71)
  %73 = load %struct.nic*, %struct.nic** %3, align 8
  %74 = getelementptr inbounds %struct.nic, %struct.nic* %73, i32 0, i32 4
  %75 = call i32 @spin_lock_irq(i32* %74)
  %76 = load %struct.nic*, %struct.nic** %3, align 8
  %77 = getelementptr inbounds %struct.nic, %struct.nic* %76, i32 0, i32 5
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i32 @ioread8(i32* %80)
  %82 = load i32, i32* @irq_sw_gen, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.nic*, %struct.nic** %3, align 8
  %85 = getelementptr inbounds %struct.nic, %struct.nic* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = call i32 @iowrite8(i32 %83, i32* %88)
  %90 = load %struct.nic*, %struct.nic** %3, align 8
  %91 = call i32 @e100_write_flush(%struct.nic* %90)
  %92 = load %struct.nic*, %struct.nic** %3, align 8
  %93 = getelementptr inbounds %struct.nic, %struct.nic* %92, i32 0, i32 4
  %94 = call i32 @spin_unlock_irq(i32* %93)
  %95 = load %struct.nic*, %struct.nic** %3, align 8
  %96 = call i32 @e100_update_stats(%struct.nic* %95)
  %97 = load %struct.nic*, %struct.nic** %3, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @e100_adjust_adaptive_ifs(%struct.nic* %97, i64 %98, i64 %100)
  %102 = load %struct.nic*, %struct.nic** %3, align 8
  %103 = getelementptr inbounds %struct.nic, %struct.nic* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @mac_82557_D100_C, align 8
  %106 = icmp sle i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %69
  %108 = load %struct.nic*, %struct.nic** %3, align 8
  %109 = getelementptr inbounds %struct.nic, %struct.nic* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @e100_set_multicast_list(i32 %110)
  br label %112

112:                                              ; preds = %107, %69
  %113 = load %struct.nic*, %struct.nic** %3, align 8
  %114 = getelementptr inbounds %struct.nic, %struct.nic* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ich, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %112
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* @SPEED_10, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DUPLEX_HALF, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i32, i32* @ich_10h_workaround, align 4
  %130 = load %struct.nic*, %struct.nic** %3, align 8
  %131 = getelementptr inbounds %struct.nic, %struct.nic* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %141

134:                                              ; preds = %123, %119, %112
  %135 = load i32, i32* @ich_10h_workaround, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.nic*, %struct.nic** %3, align 8
  %138 = getelementptr inbounds %struct.nic, %struct.nic* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %134, %128
  %142 = load %struct.nic*, %struct.nic** %3, align 8
  %143 = getelementptr inbounds %struct.nic, %struct.nic* %142, i32 0, i32 2
  %144 = load i64, i64* @jiffies, align 8
  %145 = load i64, i64* @E100_WATCHDOG_PERIOD, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @round_jiffies(i64 %146)
  %148 = call i32 @mod_timer(i32* %143, i32 %147)
  ret void
}

declare dso_local %struct.nic* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i64 @mii_link_ok(i32*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @mii_check_link(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @e100_write_flush(%struct.nic*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @e100_update_stats(%struct.nic*) #1

declare dso_local i32 @e100_adjust_adaptive_ifs(%struct.nic*, i64, i64) #1

declare dso_local i32 @e100_set_multicast_list(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
