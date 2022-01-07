; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_write_bounce_buffer_to_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_write_bounce_buffer_to_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.ena_com_llq_info }
%struct.TYPE_2__ = type { i64 }
%struct.ena_com_llq_info = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Error: trying to send more packets than tx burst allows\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"decreasing entries_in_tx_burst_left of queue %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*, i32*)* @ena_com_write_bounce_buffer_to_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_write_bounce_buffer_to_dev(%struct.ena_com_io_sq* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_io_sq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ena_com_llq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %10 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %9, i32 0, i32 6
  store %struct.ena_com_llq_info* %10, %struct.ena_com_llq_info** %6, align 8
  %11 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %12 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %15 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %21 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %25 = call i64 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %2
  %28 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %29 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %89

40:                                               ; preds = %27
  %41 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %42 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %46 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %49 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %40, %2
  %53 = call i32 (...) @wmb()
  %54 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %55 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %6, align 8
  %63 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %64, 8
  %66 = call i32 @__iowrite64_copy(i64 %60, i32* %61, i32 %65)
  %67 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %68 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %72 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %75 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %73, %77
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %52
  %84 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %4, align 8
  %85 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = xor i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %83, %52
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %36
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @is_llq_max_tx_burst_exists(%struct.ena_com_io_sq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @__iowrite64_copy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
