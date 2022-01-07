; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_comp_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_comp_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_ll2_buff = type { %struct.qed_iwarp_ll2_buff* }
%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i32, i32, i32)* @qed_iwarp_ll2_comp_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_ll2_comp_tx_pkt(i8* %0, i64 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %14 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %15 = alloca %struct.qed_hwfn*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.qed_iwarp_ll2_buff*
  store %struct.qed_iwarp_ll2_buff* %17, %struct.qed_iwarp_ll2_buff** %13, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %19, %struct.qed_hwfn** %15, align 8
  %20 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %21 = icmp ne %struct.qed_iwarp_ll2_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  br label %53

23:                                               ; preds = %6
  %24 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %25 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %24, i32 0, i32 0
  %26 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %25, align 8
  store %struct.qed_iwarp_ll2_buff* %26, %struct.qed_iwarp_ll2_buff** %14, align 8
  %27 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %14, align 8
  %28 = icmp ne %struct.qed_iwarp_ll2_buff* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %31 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %30, i32 0, i32 0
  store %struct.qed_iwarp_ll2_buff* null, %struct.qed_iwarp_ll2_buff** %31, align 8
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %15, align 8
  %33 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %14, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn* %32, %struct.qed_iwarp_ll2_buff* %33, i64 %34)
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %15, align 8
  %38 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn* %37, %struct.qed_iwarp_ll2_buff* %38, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %15, align 8
  %43 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %41, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %15, align 8
  %51 = call i32 @qed_iwarp_process_pending_pkts(%struct.qed_hwfn* %50)
  br label %52

52:                                               ; preds = %49, %36
  br label %53

53:                                               ; preds = %52, %22
  ret void
}

declare dso_local i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn*, %struct.qed_iwarp_ll2_buff*, i64) #1

declare dso_local i32 @qed_iwarp_process_pending_pkts(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
