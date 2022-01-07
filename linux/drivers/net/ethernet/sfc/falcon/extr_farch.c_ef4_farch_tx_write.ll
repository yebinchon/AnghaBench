; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_tx_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_tx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, i32, i32, i32, i32, %struct.ef4_tx_buffer* }
%struct.ef4_tx_buffer = type { i32, i32, i32 }

@EF4_TX_BUF_OPTION = common dso_local global i32 0, align 4
@EF4_TX_BUF_CONT = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_CONT = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_BYTE_COUNT = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_BUF_REGION = common dso_local global i32 0, align 4
@FSF_AZ_TX_KER_BUF_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_farch_tx_write(%struct.ef4_tx_queue* %0) #0 {
  %2 = alloca %struct.ef4_tx_queue*, align 8
  %3 = alloca %struct.ef4_tx_buffer*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %2, align 8
  %7 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %16 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %105

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %73, %23
  %25 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %26 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %29 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %33 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %32, i32 0, i32 5
  %34 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %34, i64 %36
  store %struct.ef4_tx_buffer* %37, %struct.ef4_tx_buffer** %3, align 8
  %38 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32* @ef4_tx_desc(%struct.ef4_tx_queue* %38, i32 %39)
  store i32* %40, i32** %4, align 8
  %41 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %42 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %46 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EF4_TX_BUF_OPTION, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @EF4_BUG_ON_PARANOID(i32 %49)
  %51 = load i32, i32* @EF4_TX_BUF_CONT, align 4
  %52 = icmp ne i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUILD_BUG_ON(i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @FSF_AZ_TX_KER_CONT, align 4
  %58 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %59 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @EF4_TX_BUF_CONT, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @FSF_AZ_TX_KER_BYTE_COUNT, align 4
  %64 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %65 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FSF_AZ_TX_KER_BUF_REGION, align 4
  %68 = load i32, i32* @FSF_AZ_TX_KER_BUF_ADDR, align 4
  %69 = load %struct.ef4_tx_buffer*, %struct.ef4_tx_buffer** %3, align 8
  %70 = getelementptr inbounds %struct.ef4_tx_buffer, %struct.ef4_tx_buffer* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @EF4_POPULATE_QWORD_4(i32 %56, i32 %57, i32 %62, i32 %63, i32 %66, i32 %67, i32 0, i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %24
  %74 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %75 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %78 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %24, label %81

81:                                               ; preds = %73
  %82 = call i32 (...) @wmb()
  %83 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @ef4_nic_may_push_tx_desc(%struct.ef4_tx_queue* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %91 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %89, %92
  %94 = call i32* @ef4_tx_desc(%struct.ef4_tx_queue* %88, i32 %93)
  store i32* %94, i32** %4, align 8
  %95 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @ef4_farch_push_tx_desc(%struct.ef4_tx_queue* %95, i32* %96)
  %98 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %99 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %105

102:                                              ; preds = %81
  %103 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %104 = call i32 @ef4_farch_notify_tx_desc(%struct.ef4_tx_queue* %103)
  br label %105

105:                                              ; preds = %22, %102, %87
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @ef4_tx_desc(%struct.ef4_tx_queue*, i32) #1

declare dso_local i32 @EF4_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EF4_POPULATE_QWORD_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @ef4_nic_may_push_tx_desc(%struct.ef4_tx_queue*, i32) #1

declare dso_local i32 @ef4_farch_push_tx_desc(%struct.ef4_tx_queue*, i32*) #1

declare dso_local i32 @ef4_farch_notify_tx_desc(%struct.ef4_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
