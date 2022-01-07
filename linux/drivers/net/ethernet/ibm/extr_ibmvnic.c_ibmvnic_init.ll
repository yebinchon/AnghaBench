; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Initialization sequence timed out\0A\00", align 1
@VNIC_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Initialization of sub crqs failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to initialize sub crq irqs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @ibmvnic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_init(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %7 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = call i64 @msecs_to_jiffies(i32 30000)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %17 = call i32 @ibmvnic_send_crq_init(%struct.ibmvnic_adapter* %16)
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 3
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @wait_for_completion_timeout(i32* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %71

26:                                               ; preds = %1
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %33 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %32)
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %71

37:                                               ; preds = %26
  %38 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @VNIC_OPEN, align 4
  %44 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  store i32 -1, i32* %2, align 4
  br label %71

48:                                               ; preds = %37
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %50 = call i32 @init_sub_crqs(%struct.ibmvnic_adapter* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %57 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %71

59:                                               ; preds = %48
  %60 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %61 = call i32 @init_sub_crq_irqs(%struct.ibmvnic_adapter* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %68 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %53, %42, %31, %23
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ibmvnic_send_crq_init(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @release_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @init_sub_crqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @init_sub_crq_irqs(%struct.ibmvnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
