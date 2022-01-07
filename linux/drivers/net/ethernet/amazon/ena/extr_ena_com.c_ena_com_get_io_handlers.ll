; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_io_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_get_io_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_io_cq*, %struct.ena_com_io_sq* }
%struct.ena_com_io_cq = type { i32 }
%struct.ena_com_io_sq = type { i32 }

@ENA_TOTAL_NUM_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Invalid queue number %d but the max is %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_get_io_handlers(%struct.ena_com_dev* %0, i64 %1, %struct.ena_com_io_sq** %2, %struct.ena_com_io_cq** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_com_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ena_com_io_sq**, align 8
  %9 = alloca %struct.ena_com_io_cq**, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.ena_com_io_sq** %2, %struct.ena_com_io_sq*** %8, align 8
  store %struct.ena_com_io_cq** %3, %struct.ena_com_io_cq*** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %32

19:                                               ; preds = %4
  %20 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %21 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %20, i32 0, i32 1
  %22 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %22, i64 %23
  %25 = load %struct.ena_com_io_sq**, %struct.ena_com_io_sq*** %8, align 8
  store %struct.ena_com_io_sq* %24, %struct.ena_com_io_sq** %25, align 8
  %26 = load %struct.ena_com_dev*, %struct.ena_com_dev** %6, align 8
  %27 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %26, i32 0, i32 0
  %28 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %28, i64 %29
  %31 = load %struct.ena_com_io_cq**, %struct.ena_com_io_cq*** %9, align 8
  store %struct.ena_com_io_cq* %30, %struct.ena_com_io_cq** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %19, %13
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @pr_err(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
