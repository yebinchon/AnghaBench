; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_sw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_sw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, i32 }

@MAXIMUM_ETHERNET_VLAN_SIZE = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@__E1000_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_sw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_sw_init(%struct.e1000_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_adapter*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  %4 = load i32, i32* @MAXIMUM_ETHERNET_VLAN_SIZE, align 4
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %5, i32 0, i32 4
  store i32 %4, i32* %6, align 4
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %12 = call i64 @e1000_alloc_queues(%struct.e1000_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @probe, align 4
  %16 = call i32 @e_err(i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %21 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %20)
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 3
  %24 = call i32 @spin_lock_init(i32* %23)
  %25 = load i32, i32* @__E1000_DOWN, align 4
  %26 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %26, i32 0, i32 2
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @e1000_alloc_queues(%struct.e1000_adapter*) #1

declare dso_local i32 @e_err(i32, i8*) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
