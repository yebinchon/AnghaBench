; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_create_tx_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_create_tx_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i32, i32 }
%struct.iavf_tx_context_desc = type { i32, i8*, i8*, i32 }

@IAVF_TX_DESC_DTYPE_CONTEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_ring*, i64, i32, i32)* @iavf_create_tx_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_create_tx_ctx(%struct.iavf_ring* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iavf_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iavf_tx_context_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.iavf_ring* %0, %struct.iavf_ring** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %12 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @IAVF_TX_DESC_DTYPE_CONTEXT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %57

24:                                               ; preds = %20, %17, %4
  %25 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.iavf_tx_context_desc* @IAVF_TX_CTXTDESC(%struct.iavf_ring* %25, i32 %26)
  store %struct.iavf_tx_context_desc* %27, %struct.iavf_tx_context_desc** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %32 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %10, align 4
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %41 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.iavf_tx_context_desc*, %struct.iavf_tx_context_desc** %9, align 8
  %45 = getelementptr inbounds %struct.iavf_tx_context_desc, %struct.iavf_tx_context_desc* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.iavf_tx_context_desc*, %struct.iavf_tx_context_desc** %9, align 8
  %49 = getelementptr inbounds %struct.iavf_tx_context_desc, %struct.iavf_tx_context_desc* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = call i8* @cpu_to_le16(i32 0)
  %51 = load %struct.iavf_tx_context_desc*, %struct.iavf_tx_context_desc** %9, align 8
  %52 = getelementptr inbounds %struct.iavf_tx_context_desc, %struct.iavf_tx_context_desc* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @cpu_to_le64(i64 %53)
  %55 = load %struct.iavf_tx_context_desc*, %struct.iavf_tx_context_desc** %9, align 8
  %56 = getelementptr inbounds %struct.iavf_tx_context_desc, %struct.iavf_tx_context_desc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %38, %23
  ret void
}

declare dso_local %struct.iavf_tx_context_desc* @IAVF_TX_CTXTDESC(%struct.iavf_ring*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
