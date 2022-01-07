; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_mcast_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_mcast_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bna_mac = type { %struct.bna_mcam_handle* }
%struct.bna_mcam_handle = type { i64, i32, i32 }

@BNA_HARD_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rxf*, %struct.bna_mac*, i32)* @bna_rxf_mcast_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rxf_mcast_del(%struct.bna_rxf* %0, %struct.bna_mac* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bna_rxf*, align 8
  %6 = alloca %struct.bna_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bna_mcam_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %5, align 8
  store %struct.bna_mac* %1, %struct.bna_mac** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.bna_mac*, %struct.bna_mac** %6, align 8
  %11 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %10, i32 0, i32 0
  %12 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %11, align 8
  store %struct.bna_mcam_handle* %12, %struct.bna_mcam_handle** %8, align 8
  %13 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %8, align 8
  %14 = icmp eq %struct.bna_mcam_handle* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %8, align 8
  %19 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %8, align 8
  %23 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BNA_HARD_CLEANUP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %32 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %8, align 8
  %33 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bna_bfi_mcast_del_req(%struct.bna_rxf* %31, i32 %34)
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %26
  %37 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %8, align 8
  %38 = getelementptr inbounds %struct.bna_mcam_handle, %struct.bna_mcam_handle* %37, i32 0, i32 1
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %41 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.bna_mcam_handle*, %struct.bna_mcam_handle** %8, align 8
  %47 = call i32 @bna_mcam_mod_handle_put(i32* %45, %struct.bna_mcam_handle* %46)
  br label %48

48:                                               ; preds = %36, %17
  %49 = load %struct.bna_mac*, %struct.bna_mac** %6, align 8
  %50 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %49, i32 0, i32 0
  store %struct.bna_mcam_handle* null, %struct.bna_mcam_handle** %50, align 8
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @bna_bfi_mcast_del_req(%struct.bna_rxf*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @bna_mcam_mod_handle_put(i32*, %struct.bna_mcam_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
