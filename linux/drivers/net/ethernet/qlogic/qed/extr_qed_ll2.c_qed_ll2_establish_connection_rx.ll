; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_establish_connection_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_establish_connection_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG = common dso_local global i32 0, align 4
@CORE_RX_ACTION_ON_ERROR_NO_BUFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_ll2_establish_connection_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_establish_connection_rx(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ll2_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %10 = call i32 @QED_LL2_RX_REGISTERED(%struct.qed_ll2_info* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %15 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DIRECT_REG_WR(i32 %17, i32 0)
  %19 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %20 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @qed_ll2_get_error_choice(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @CORE_RX_ACTION_ON_ERROR_PACKET_TOO_BIG, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @SET_FIELD(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %30 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @qed_ll2_get_error_choice(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @CORE_RX_ACTION_ON_ERROR_NO_BUFF, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @SET_FIELD(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @qed_sp_ll2_rx_queue_start(%struct.qed_hwfn* %39, %struct.qed_ll2_info* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %13, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @QED_LL2_RX_REGISTERED(%struct.qed_ll2_info*) #1

declare dso_local i32 @DIRECT_REG_WR(i32, i32) #1

declare dso_local i32 @qed_ll2_get_error_choice(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @qed_sp_ll2_rx_queue_start(%struct.qed_hwfn*, %struct.qed_ll2_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
