; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_close_bounce_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_close_bounce_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i64, %struct.ena_com_llq_pkt_ctrl, i32, %struct.ena_com_llq_info }
%struct.ena_com_llq_pkt_ctrl = type { i32, i64, i32 }
%struct.ena_com_llq_info = type { i32, i32 }

@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_sq*)* @ena_com_close_bounce_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_close_bounce_buffer(%struct.ena_com_io_sq* %0) #0 {
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
  %11 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %12 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

20:                                               ; preds = %1
  %21 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %20
  %26 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %27 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ena_com_write_bounce_buffer_to_dev(%struct.ena_com_io_sq* %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %25
  %37 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %38 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %37, i32 0, i32 2
  %39 = call i32 @ena_com_get_next_bounce_buffer(i32* %38)
  %40 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %3, align 8
  %43 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %5, align 8
  %47 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %45, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %36, %20
  %51 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %52 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %5, align 8
  %54 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ena_com_llq_pkt_ctrl*, %struct.ena_com_llq_pkt_ctrl** %4, align 8
  %57 = getelementptr inbounds %struct.ena_com_llq_pkt_ctrl, %struct.ena_com_llq_pkt_ctrl* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %34, %19
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_write_bounce_buffer_to_dev(%struct.ena_com_io_sq*, i32) #1

declare dso_local i32 @ena_com_get_next_bounce_buffer(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
