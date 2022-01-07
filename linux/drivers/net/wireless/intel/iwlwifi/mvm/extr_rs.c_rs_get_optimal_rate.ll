; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_optimal_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_optimal_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_rate = type { i32 }
%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.rs_rate }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rs_rate* (%struct.iwl_mvm*, %struct.iwl_lq_sta*)* @rs_get_optimal_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rs_rate* @rs_get_optimal_rate(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_lq_sta*, align 8
  %5 = alloca %struct.rs_rate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %4, align 8
  %8 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %9 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %8, i32 0, i32 4
  store %struct.rs_rate* %9, %struct.rs_rate** %5, align 8
  %10 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %10, i32 0, i32 0
  %12 = load i32, i32* @BITS_PER_LONG, align 4
  %13 = call i32 @find_first_bit(i32* %11, i32 %12)
  %14 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %15 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %57, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %16
  %23 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %24 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %32 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %36 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %34, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %22
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  %55 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %60

56:                                               ; preds = %44, %22
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %16

60:                                               ; preds = %52, %16
  %61 = load %struct.rs_rate*, %struct.rs_rate** %5, align 8
  ret %struct.rs_rate* %61
}

declare dso_local i32 @find_first_bit(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
