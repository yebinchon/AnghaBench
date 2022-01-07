; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_long_term_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_long_term_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibmvnic_long_term_buff = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Reset failed, attempting to free and reallocate buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_long_term_buff*)* @reset_long_term_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_long_term_buff(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_long_term_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.ibmvnic_long_term_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %4, align 8
  store %struct.ibmvnic_long_term_buff* %1, %struct.ibmvnic_long_term_buff** %5, align 8
  %7 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %8 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(i32 %9, i32 0, i32 %12)
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 2
  %16 = call i32 @init_completion(i32* %15)
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %18 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @send_request_map(%struct.ibmvnic_adapter* %17, i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 2
  %35 = call i32 @wait_for_completion(i32* %34)
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %32
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %47 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %48 = call i32 @free_long_term_buff(%struct.ibmvnic_adapter* %46, %struct.ibmvnic_long_term_buff* %47)
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %50 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %51 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %5, align 8
  %52 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @alloc_long_term_buff(%struct.ibmvnic_adapter* %49, %struct.ibmvnic_long_term_buff* %50, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %40, %30
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @send_request_map(%struct.ibmvnic_adapter*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @free_long_term_buff(%struct.ibmvnic_adapter*, %struct.ibmvnic_long_term_buff*) #1

declare dso_local i32 @alloc_long_term_buff(%struct.ibmvnic_adapter*, %struct.ibmvnic_long_term_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
