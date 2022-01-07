; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_alloc_mem_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_alloc_mem_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.qede_fastpath* }
%struct.qede_fastpath = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Failed to allocate memory for fastpath - rss id = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*)* @qede_alloc_mem_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_alloc_mem_load(%struct.qede_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_fastpath*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %10 = call i32 @QEDE_QUEUE_CNT(%struct.qede_dev* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %7
  %13 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %14 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %13, i32 0, i32 0
  %15 = load %struct.qede_fastpath*, %struct.qede_fastpath** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %15, i64 %17
  store %struct.qede_fastpath* %18, %struct.qede_fastpath** %6, align 8
  %19 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %20 = load %struct.qede_fastpath*, %struct.qede_fastpath** %6, align 8
  %21 = call i32 @qede_alloc_mem_fp(%struct.qede_dev* %19, %struct.qede_fastpath* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %12
  %25 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @DP_ERR(%struct.qede_dev* %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %29 = call i32 @qede_free_mem_load(%struct.qede_dev* %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %7

35:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @QEDE_QUEUE_CNT(%struct.qede_dev*) #1

declare dso_local i32 @qede_alloc_mem_fp(%struct.qede_dev*, %struct.qede_fastpath*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, i32) #1

declare dso_local i32 @qede_free_mem_load(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
