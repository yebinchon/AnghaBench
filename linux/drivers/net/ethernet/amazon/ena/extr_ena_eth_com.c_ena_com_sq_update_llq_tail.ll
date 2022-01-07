; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_sq_update_llq_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_sq_update_llq_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i32, %struct.ena_com_llq_pkt_ctrl, i32, %struct.ena_com_llq_info }
%struct.ena_com_llq_pkt_ctrl = type { i32, i64, i32 }
%struct.ena_com_llq_info = type { i32, i64 }

@ENA_ADMIN_SINGLE_DESC_PER_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*)* @ena_com_sq_update_llq_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_sq_update_llq_tail(%struct.ena_com_io_sq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_io_sq*, align 8
  %4 = alloca %struct.ena_com_llq_pkt_ctrl*, align 8
  %5 = alloca %struct.ena_com_llq_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %3, align 8
  %7 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %7, i32 0, i32 1
  store %struct.ena_com_llq_pkt_ctrl* %8, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %9 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %10 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %9, i32 0, i32 3
  store %struct.ena_com_llq_info* %10, %struct.ena_com_llq_info** %5, align 8
  %11 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %12 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %1
  %16 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %17 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ena_com_write_bounce_buffer_to_dev(%struct.ena_com_io_sq* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %65

26:                                               ; preds = %15
  %27 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %28 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %27, i32 0, i32 2
  %29 = call i32 @ena_com_get_next_bounce_buffer(i32* %28)
  %30 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %33 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %5, align 8
  %37 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memset(i32 %35, i32 0, i32 %38)
  %40 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %5, align 8
  %43 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ENA_ADMIN_SINGLE_DESC_PER_ENTRY, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %26
  %51 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %52 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %63

53:                                               ; preds = %26
  %54 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %5, align 8
  %55 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %58 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %56, %59
  %61 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %62 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %53, %50
  br label %64

64:                                               ; preds = %63, %1
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ena_com_write_bounce_buffer_to_dev(%struct.ena_com_io_sq*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_get_next_bounce_buffer(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
