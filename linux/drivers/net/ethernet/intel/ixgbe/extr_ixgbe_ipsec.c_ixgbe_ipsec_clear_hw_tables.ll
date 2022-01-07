; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_clear_hw_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_clear_hw_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_IPSRXIDX = common dso_local global i32 0, align 4
@IXGBE_IPSTXIDX = common dso_local global i32 0, align 4
@IXGBE_IPSEC_MAX_RX_IP_COUNT = common dso_local global i64 0, align 8
@IXGBE_IPSEC_MAX_SA_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_ipsec_clear_hw_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ipsec_clear_hw_tables(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 0
  store %struct.ixgbe_hw* %7, %struct.ixgbe_hw** %3, align 8
  %8 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = load i32, i32* @IXGBE_IPSRXIDX, align 4
  %11 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %9, i32 %10, i32 0)
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = load i32, i32* @IXGBE_IPSTXIDX, align 4
  %14 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %12, i32 %13, i32 0)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @IXGBE_IPSEC_MAX_RX_IP_COUNT, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %23 = call i32 @ixgbe_ipsec_set_tx_sa(%struct.ixgbe_hw* %20, i64 %21, i32* %22, i32 0)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %27 = call i32 @ixgbe_ipsec_set_rx_sa(%struct.ixgbe_hw* %24, i64 %25, i32 0, i32* %26, i32 0, i32 0, i32 0)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %31 = call i32 @ixgbe_ipsec_set_rx_ip(%struct.ixgbe_hw* %28, i64 %29, i32* %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %15

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @IXGBE_IPSEC_MAX_SA_COUNT, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %44 = call i32 @ixgbe_ipsec_set_tx_sa(%struct.ixgbe_hw* %41, i64 %42, i32* %43, i32 0)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %48 = call i32 @ixgbe_ipsec_set_rx_sa(%struct.ixgbe_hw* %45, i64 %46, i32 0, i32* %47, i32 0, i32 0, i32 0)
  br label %49

49:                                               ; preds = %40
  %50 = load i64, i64* %5, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %36

52:                                               ; preds = %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #2

declare dso_local i32 @ixgbe_ipsec_set_tx_sa(%struct.ixgbe_hw*, i64, i32*, i32) #2

declare dso_local i32 @ixgbe_ipsec_set_rx_sa(%struct.ixgbe_hw*, i64, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @ixgbe_ipsec_set_rx_ip(%struct.ixgbe_hw*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
