; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_req_msix_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_req_msix_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.TYPE_6__, %struct.qede_fastpath*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.qede_fastpath = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"Interrupt mismatch: %d RSS queues > %d MSI-x vectors\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qede_msix_fp_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Request fp %d irq failed\0A\00", align 1
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Requested fp irq for %s [entry %d]. Cookie is at %p\0A\00", align 1
@QEDE_FASTPATH_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*)* @qede_req_msix_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_req_msix_irqs(%struct.qede_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  %6 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %7 = call i32 @QEDE_QUEUE_CNT(%struct.qede_dev* %6)
  %8 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %9 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %7, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %15 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %16 = call i32 @QEDE_QUEUE_CNT(%struct.qede_dev* %15)
  %17 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %18 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (%struct.qede_dev*, i8*, ...) @DP_ERR(%struct.qede_dev* %14, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %89, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %28 = call i32 @QEDE_QUEUE_CNT(%struct.qede_dev* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %25
  %31 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %32 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @qede_msix_fp_int, align 4
  %41 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %42 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %41, i32 0, i32 1
  %43 = load %struct.qede_fastpath*, %struct.qede_fastpath** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %43, i64 %45
  %47 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %50 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %49, i32 0, i32 1
  %51 = load %struct.qede_fastpath*, %struct.qede_fastpath** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %51, i64 %53
  %55 = call i32 @request_irq(i32 %39, i32 %40, i32 0, i32 %48, %struct.qede_fastpath* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %30
  %59 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (%struct.qede_dev*, i8*, ...) @DP_ERR(%struct.qede_dev* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %63 = call i32 @qede_sync_free_irqs(%struct.qede_dev* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %93

65:                                               ; preds = %30
  %66 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %67 = load i32, i32* @NETIF_MSG_INTR, align 4
  %68 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %69 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %68, i32 0, i32 1
  %70 = load %struct.qede_fastpath*, %struct.qede_fastpath** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %70, i64 %72
  %74 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %78 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %77, i32 0, i32 1
  %79 = load %struct.qede_fastpath*, %struct.qede_fastpath** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.qede_fastpath, %struct.qede_fastpath* %79, i64 %81
  %83 = call i32 @DP_VERBOSE(%struct.qede_dev* %66, i32 %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76, %struct.qede_fastpath* %82)
  %84 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %85 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %25

92:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %58, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @QEDE_QUEUE_CNT(%struct.qede_dev*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.qede_fastpath*) #1

declare dso_local i32 @qede_sync_free_irqs(%struct.qede_dev*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i32, %struct.qede_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
