; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ethtool.c_sja1105_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@sja1105_port_stats = common dso_local global i32 0, align 4
@ETH_SS_STATS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SJA1105PR_DEVICE_ID = common dso_local global i64 0, align 8
@SJA1105QS_DEVICE_ID = common dso_local global i64 0, align 8
@sja1105pqrs_extra_port_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_get_sset_count(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sja1105_private*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @sja1105_port_stats, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  store %struct.sja1105_private* %14, %struct.sja1105_private** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ETH_SS_STATS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %23 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SJA1105PR_DEVICE_ID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.sja1105_private*, %struct.sja1105_private** %9, align 8
  %31 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SJA1105QS_DEVICE_ID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29, %21
  %38 = load i32, i32* @sja1105pqrs_extra_port_stats, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
