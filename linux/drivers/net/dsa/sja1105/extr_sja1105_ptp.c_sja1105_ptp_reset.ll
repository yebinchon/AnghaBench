; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { i32, i32, i32, %struct.TYPE_2__*, %struct.dsa_switch* }
%struct.TYPE_2__ = type { i32 (%struct.sja1105_private*, %struct.sja1105_ptp_cmd*)* }
%struct.sja1105_ptp_cmd = type { i32, i32 }
%struct.dsa_switch = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Resetting PTP clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_ptp_reset(%struct.sja1105_private* %0) #0 {
  %2 = alloca %struct.sja1105_private*, align 8
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.sja1105_ptp_cmd, align 4
  %5 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %2, align 8
  %6 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %7 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %6, i32 0, i32 4
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %7, align 8
  store %struct.dsa_switch* %8, %struct.dsa_switch** %3, align 8
  %9 = bitcast %struct.sja1105_ptp_cmd* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %11 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = getelementptr inbounds %struct.sja1105_ptp_cmd, %struct.sja1105_ptp_cmd* %4, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %19 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.sja1105_private*, %struct.sja1105_ptp_cmd*)*, i32 (%struct.sja1105_private*, %struct.sja1105_ptp_cmd*)** %21, align 8
  %23 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %24 = call i32 %22(%struct.sja1105_private* %23, %struct.sja1105_ptp_cmd* %4)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %26 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %25, i32 0, i32 2
  %27 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %28 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %27, i32 0, i32 1
  %29 = call i32 (...) @ktime_get_real()
  %30 = call i32 @ktime_to_ns(i32 %29)
  %31 = call i32 @timecounter_init(i32* %26, i32* %28, i32 %30)
  %32 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %33 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @dev_dbg(i32, i8*) #2

declare dso_local i32 @timecounter_init(i32*, i32*, i32) #2

declare dso_local i32 @ktime_to_ns(i32) #2

declare dso_local i32 @ktime_get_real(...) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
