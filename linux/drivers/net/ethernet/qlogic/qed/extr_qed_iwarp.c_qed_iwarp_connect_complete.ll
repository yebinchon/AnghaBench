; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_connect_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_connect_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.qed_iwarp_ep = type { i64, i32* }

@TCP_CONNECT_PASSIVE = common dso_local global i64 0, align 8
@RDMA_RETURN_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i64)* @qed_iwarp_connect_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_connect_complete(%struct.qed_hwfn* %0, %struct.qed_iwarp_ep* %1, i64 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_iwarp_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_iwarp_ep* %1, %struct.qed_iwarp_ep** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %15 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_CONNECT_PASSIVE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %22 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn* %20, i32* %23, i64 %24)
  %26 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %27 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @RDMA_RETURN_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %33 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %34 = call i32 @qed_iwarp_mpa_received(%struct.qed_hwfn* %32, %struct.qed_iwarp_ep* %33)
  br label %40

35:                                               ; preds = %19
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %37 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @qed_iwarp_tcp_connect_unsuccessful(%struct.qed_hwfn* %36, %struct.qed_iwarp_ep* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %31
  br label %55

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @RDMA_RETURN_OK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %48 = call i32 @qed_iwarp_mpa_offload(%struct.qed_hwfn* %46, %struct.qed_iwarp_ep* %47)
  br label %54

49:                                               ; preds = %41
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %51 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @qed_iwarp_tcp_connect_unsuccessful(%struct.qed_hwfn* %50, %struct.qed_iwarp_ep* %51, i64 %52)
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %40
  ret void
}

declare dso_local i32 @qed_iwarp_ll2_post_rx(%struct.qed_hwfn*, i32*, i64) #1

declare dso_local i32 @qed_iwarp_mpa_received(%struct.qed_hwfn*, %struct.qed_iwarp_ep*) #1

declare dso_local i32 @qed_iwarp_tcp_connect_unsuccessful(%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i64) #1

declare dso_local i32 @qed_iwarp_mpa_offload(%struct.qed_hwfn*, %struct.qed_iwarp_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
