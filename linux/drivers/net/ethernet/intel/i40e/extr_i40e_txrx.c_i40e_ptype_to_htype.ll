; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_ptype_to_htype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_ptype_to_htype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_rx_ptype_decoded = type { i64, i64, i32 }

@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@I40E_RX_PTYPE_OUTER_IP = common dso_local global i64 0, align 8
@I40E_RX_PTYPE_PAYLOAD_LAYER_PAY4 = common dso_local global i64 0, align 8
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@I40E_RX_PTYPE_PAYLOAD_LAYER_PAY3 = common dso_local global i64 0, align 8
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i40e_ptype_to_htype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_ptype_to_htype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_rx_ptype_decoded, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  call void @decode_rx_desc_ptype(%struct.i40e_rx_ptype_decoded* sret %4, i32 %5)
  %6 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @I40E_RX_PTYPE_OUTER_IP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I40E_RX_PTYPE_PAYLOAD_LAYER_PAY4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  store i32 %22, i32* %2, align 4
  br label %37

23:                                               ; preds = %16, %11
  %24 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @I40E_RX_PTYPE_OUTER_IP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.i40e_rx_ptype_decoded, %struct.i40e_rx_ptype_decoded* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @I40E_RX_PTYPE_PAYLOAD_LAYER_PAY3, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %28, %23
  %36 = load i32, i32* @PKT_HASH_TYPE_L2, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %21, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local void @decode_rx_desc_ptype(%struct.i40e_rx_ptype_decoded* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
