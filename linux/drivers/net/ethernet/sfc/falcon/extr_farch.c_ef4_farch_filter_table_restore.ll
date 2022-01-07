; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_table_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_table_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.ef4_farch_filter_state* }
%struct.ef4_farch_filter_state = type { %struct.ef4_farch_filter_table* }
%struct.ef4_farch_filter_table = type { i32, i32, i64, i32*, i32 }

@EF4_FARCH_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_farch_filter_table_restore(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.ef4_farch_filter_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_farch_filter_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %8 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %9 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %8, i32 0, i32 1
  %10 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %9, align 8
  store %struct.ef4_farch_filter_state* %10, %struct.ef4_farch_filter_state** %3, align 8
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %12 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %69, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EF4_FARCH_FILTER_TABLE_COUNT, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  %19 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %3, align 8
  %20 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %19, i32 0, i32 0
  %21 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %21, i64 %23
  store %struct.ef4_farch_filter_table* %24, %struct.ef4_farch_filter_table** %5, align 8
  %25 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %26 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %69

30:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %65, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %34 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %40 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %65

45:                                               ; preds = %37
  %46 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %47 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @ef4_farch_filter_build(i32* %6, i32* %51)
  %53 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %54 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %55 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %5, align 8
  %58 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %56, %62
  %64 = call i32 @ef4_writeo(%struct.ef4_nic* %53, i32* %6, i64 %63)
  br label %65

65:                                               ; preds = %45, %44
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %31

68:                                               ; preds = %31
  br label %69

69:                                               ; preds = %68, %29
  %70 = load i32, i32* %4, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %14

72:                                               ; preds = %14
  %73 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %74 = call i32 @ef4_farch_filter_push_rx_config(%struct.ef4_nic* %73)
  %75 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %76 = call i32 @ef4_farch_filter_push_tx_limits(%struct.ef4_nic* %75)
  %77 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %78 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ef4_farch_filter_build(i32*, i32*) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i64) #1

declare dso_local i32 @ef4_farch_filter_push_rx_config(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_farch_filter_push_tx_limits(%struct.ef4_nic*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
