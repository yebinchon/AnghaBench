; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_max_allowed_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_max_allowed_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i32, i32, i32 }
%struct.rs_tx_column = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_lq_sta*, %struct.rs_tx_column*)* @rs_get_max_allowed_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_get_max_allowed_rate(%struct.iwl_lq_sta* %0, %struct.rs_tx_column* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_lq_sta*, align 8
  %5 = alloca %struct.rs_tx_column*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %4, align 8
  store %struct.rs_tx_column* %1, %struct.rs_tx_column** %5, align 8
  %6 = load %struct.rs_tx_column*, %struct.rs_tx_column** %5, align 8
  %7 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 130, label %9
    i32 128, label %13
    i32 129, label %17
  ]

9:                                                ; preds = %2
  %10 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %11 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %19 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = call i32 @WARN_ON_ONCE(i32 1)
  br label %23

23:                                               ; preds = %21
  %24 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %4, align 8
  %25 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %17, %13, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
