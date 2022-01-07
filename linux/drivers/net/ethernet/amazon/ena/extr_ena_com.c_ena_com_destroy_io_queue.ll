; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_destroy_io_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_destroy_io_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_io_cq*, %struct.ena_com_io_sq* }
%struct.ena_com_io_cq = type { i32 }
%struct.ena_com_io_sq = type { i32 }

@ENA_TOTAL_NUM_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Qid (%d) is bigger than max num of queues (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_destroy_io_queue(%struct.ena_com_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca %struct.ena_com_io_cq*, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12)
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %15, i32 0, i32 1
  %17 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %17, i64 %18
  store %struct.ena_com_io_sq* %19, %struct.ena_com_io_sq** %5, align 8
  %20 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %21 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %20, i32 0, i32 0
  %22 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %22, i64 %23
  store %struct.ena_com_io_cq* %24, %struct.ena_com_io_cq** %6, align 8
  %25 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %26 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %27 = call i32 @ena_com_destroy_io_sq(%struct.ena_com_dev* %25, %struct.ena_com_io_sq* %26)
  %28 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %29 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %30 = call i32 @ena_com_destroy_io_cq(%struct.ena_com_dev* %28, %struct.ena_com_io_cq* %29)
  %31 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %33 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %34 = call i32 @ena_com_io_queue_free(%struct.ena_com_dev* %31, %struct.ena_com_io_sq* %32, %struct.ena_com_io_cq* %33)
  br label %35

35:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @ena_com_destroy_io_sq(%struct.ena_com_dev*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_destroy_io_cq(%struct.ena_com_dev*, %struct.ena_com_io_cq*) #1

declare dso_local i32 @ena_com_io_queue_free(%struct.ena_com_dev*, %struct.ena_com_io_sq*, %struct.ena_com_io_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
