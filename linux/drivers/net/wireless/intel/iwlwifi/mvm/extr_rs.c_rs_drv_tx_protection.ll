; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_drv_tx_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_drv_tx_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_mvm_sta = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iwl_lq_cmd }
%struct.iwl_lq_cmd = type { i32 }

@LQ_FLAG_USE_RTS_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.iwl_mvm_sta*, i32)* @rs_drv_tx_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_drv_tx_protection(%struct.iwl_mvm* %0, %struct.iwl_mvm_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_lq_cmd*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_sta* %1, %struct.iwl_mvm_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.iwl_lq_cmd* %11, %struct.iwl_lq_cmd** %7, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @LQ_FLAG_USE_RTS_MSK, align 4
  %24 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32, i32* @LQ_FLAG_USE_RTS_MSK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %33
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %52 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %7, align 8
  %53 = call i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %51, %struct.iwl_lq_cmd* %52)
  ret i32 %53
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm*, %struct.iwl_lq_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
