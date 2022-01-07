; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_init_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_init_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unable to setup interrupt capabilities\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for queue vectors\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Multiqueue %s: Rx Queue count = %u, Tx Queue count = %u XDP Queue count %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*)* @ixgbevf_init_interrupt_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_init_interrupt_scheme(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  %5 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %6 = call i32 @ixgbevf_set_num_queues(%struct.ixgbevf_adapter* %5)
  %7 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %8 = call i32 @ixgbevf_set_interrupt_capability(%struct.ixgbevf_adapter* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 4
  %14 = call i32 (i32*, i8*, ...) @hw_dbg(i32* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %17 = call i32 @ixgbevf_alloc_q_vectors(%struct.ixgbevf_adapter* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %21, i32 0, i32 4
  %23 = call i32 (i32*, i8*, ...) @hw_dbg(i32* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %47

24:                                               ; preds = %15
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 4
  %27 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 1
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)
  %33 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @hw_dbg(i32* %26, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %44 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %44, i32 0, i32 1
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  store i32 0, i32* %2, align 4
  br label %52

47:                                               ; preds = %20
  %48 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %49 = call i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter* %48)
  br label %50

50:                                               ; preds = %47, %11
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %24
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ixgbevf_set_num_queues(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_set_interrupt_capability(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @hw_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ixgbevf_alloc_q_vectors(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_reset_interrupt_capability(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
