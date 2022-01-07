; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_tp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_tp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tp_params = type { i32 }

@A_TP_RESET = common dso_local global i32 0, align 4
@F_FLSTINITENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"TP initialization timed out\0A\00", align 1
@F_TPRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.tp_params*)* @tp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tp_init(%struct.adapter* %0, %struct.tp_params* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.tp_params*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.tp_params* %1, %struct.tp_params** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %8 = call i32 @tp_config(%struct.adapter* %6, %struct.tp_params* %7)
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = call i32 @t3_set_vlan_accel(%struct.adapter* %9, i32 3, i32 0)
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = call i64 @is_offload(%struct.adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = call i32 @tp_set_timers(%struct.adapter* %15, i32 %21)
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = load i32, i32* @A_TP_RESET, align 4
  %25 = load i32, i32* @F_FLSTINITENABLE, align 4
  %26 = call i32 @t3_write_reg(%struct.adapter* %23, i32 %24, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = load i32, i32* @A_TP_RESET, align 4
  %29 = load i32, i32* @F_FLSTINITENABLE, align 4
  %30 = call i32 @t3_wait_op_done(%struct.adapter* %27, i32 %28, i32 %29, i32 0, i32 1000, i32 5)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = call i32 @CH_ERR(%struct.adapter* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %14
  br label %37

37:                                               ; preds = %36, %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load i32, i32* @A_TP_RESET, align 4
  %43 = load i32, i32* @F_TPRESET, align 4
  %44 = call i32 @t3_write_reg(%struct.adapter* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @tp_config(%struct.adapter*, %struct.tp_params*) #1

declare dso_local i32 @t3_set_vlan_accel(%struct.adapter*, i32, i32) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i32 @tp_set_timers(%struct.adapter*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
