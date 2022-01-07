; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_hwtstamp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_hwtstamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@SJA1105_HWTS_RX_EN = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_PTP_V2_L2_EVENT = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.ifreq*)* @sja1105_hwtstamp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_hwtstamp_get(%struct.dsa_switch* %0, i32 %1, %struct.ifreq* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca %struct.sja1105_private*, align 8
  %8 = alloca %struct.hwtstamp_config, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ifreq* %2, %struct.ifreq** %6, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.sja1105_private*, %struct.sja1105_private** %10, align 8
  store %struct.sja1105_private* %11, %struct.sja1105_private** %7, align 8
  %12 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %14 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %24 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %27 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @SJA1105_HWTS_RX_EN, align 4
  %30 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  %31 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %29, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @HWTSTAMP_FILTER_PTP_V2_L2_EVENT, align 4
  %37 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %40 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @copy_to_user(i32 %44, %struct.hwtstamp_config* %8, i32 16)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i32 [ %49, %47 ], [ 0, %50 ]
  ret i32 %52
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
