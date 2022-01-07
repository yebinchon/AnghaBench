; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_count_rx_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_count_rx_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.ef4_farch_filter_state* }
%struct.ef4_farch_filter_state = type { %struct.ef4_farch_filter_table* }
%struct.ef4_farch_filter_table = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EF4_FARCH_FILTER_TABLE_RX_IP = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TABLE_RX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ef4_farch_filter_count_rx_used(%struct.ef4_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_farch_filter_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ef4_farch_filter_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 1
  %12 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %11, align 8
  store %struct.ef4_farch_filter_state* %12, %struct.ef4_farch_filter_state** %5, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %14 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load i32, i32* @EF4_FARCH_FILTER_TABLE_RX_IP, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %60, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @EF4_FARCH_FILTER_TABLE_RX_DEF, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  %22 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %5, align 8
  %23 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %22, i32 0, i32 0
  %24 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %24, i64 %26
  store %struct.ef4_farch_filter_table* %27, %struct.ef4_farch_filter_table** %7, align 8
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %56, %21
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %7, align 8
  %31 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %7, align 8
  %37 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @test_bit(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %7, align 8
  %43 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %52, %41, %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %28

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %17

63:                                               ; preds = %17
  %64 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %65 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  %67 = load i64, i64* %9, align 8
  ret i64 %67
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
