; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.h_ena_com_write_sq_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.h_ena_com_write_sq_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"write submission queue doorbell for queue: %d tail: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"reset available entries in tx burst for queue %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*)* @ena_com_write_sq_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_write_sq_doorbell(%struct.ena_com_io_sq* %0) #0 {
  %2 = alloca %struct.ena_com_io_sq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %2, align 8
  %5 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %2, align 8
  %6 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %2, align 8
  %10 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %2, align 8
  %13 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %2, align 8
  %19 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @writel(i32 %17, i32 %20)
  %22 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %2, align 8
  %23 = call i64 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %2, align 8
  %27 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %2, align 8
  %33 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %1
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
