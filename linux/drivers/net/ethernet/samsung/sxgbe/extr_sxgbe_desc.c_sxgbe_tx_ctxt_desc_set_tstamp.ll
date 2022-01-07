; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_desc.c_sxgbe_tx_ctxt_desc_set_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/samsung/sxgbe/extr_sxgbe_desc.c_sxgbe_tx_ctxt_desc_set_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sxgbe_tx_ctxt_desc = type { i8*, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sxgbe_tx_ctxt_desc*, i64, i32)* @sxgbe_tx_ctxt_desc_set_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sxgbe_tx_ctxt_desc_set_tstamp(%struct.sxgbe_tx_ctxt_desc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sxgbe_tx_ctxt_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sxgbe_tx_ctxt_desc* %0, %struct.sxgbe_tx_ctxt_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.sxgbe_tx_ctxt_desc*, %struct.sxgbe_tx_ctxt_desc** %4, align 8
  %12 = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, %struct.sxgbe_tx_ctxt_desc* %11, i32 0, i32 2
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.sxgbe_tx_ctxt_desc*, %struct.sxgbe_tx_ctxt_desc** %4, align 8
  %17 = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, %struct.sxgbe_tx_ctxt_desc* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 32
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.sxgbe_tx_ctxt_desc*, %struct.sxgbe_tx_ctxt_desc** %4, align 8
  %23 = getelementptr inbounds %struct.sxgbe_tx_ctxt_desc, %struct.sxgbe_tx_ctxt_desc* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
