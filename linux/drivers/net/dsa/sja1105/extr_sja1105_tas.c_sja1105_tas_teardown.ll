; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_tas_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_tas_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tc_taprio_qopt_offload** }
%struct.tc_taprio_qopt_offload = type { i32 }

@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sja1105_tas_teardown(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca %struct.tc_taprio_qopt_offload*, align 8
  %5 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.sja1105_private*, %struct.sja1105_private** %7, align 8
  store %struct.sja1105_private* %8, %struct.sja1105_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %15 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.tc_taprio_qopt_offload**, %struct.tc_taprio_qopt_offload*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %17, i64 %19
  %21 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %20, align 8
  store %struct.tc_taprio_qopt_offload* %21, %struct.tc_taprio_qopt_offload** %4, align 8
  %22 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %4, align 8
  %23 = icmp ne %struct.tc_taprio_qopt_offload* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %28

25:                                               ; preds = %13
  %26 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %4, align 8
  %27 = call i32 @taprio_offload_free(%struct.tc_taprio_qopt_offload* %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %9

31:                                               ; preds = %9
  ret void
}

declare dso_local i32 @taprio_offload_free(%struct.tc_taprio_qopt_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
