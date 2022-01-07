; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64 }
%struct.sk_buff = type { i32 }

@e1000_82543 = common dso_local global i64 0, align 8
@E1000_RXD_STAT_IXSM = common dso_local global i32 0, align 4
@E1000_RXD_ERR_TCPE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_TCPCS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, i32, i32, %struct.sk_buff*)* @e1000_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_rx_checksum(%struct.e1000_adapter* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 2
  store %struct.e1000_hw* %13, %struct.e1000_hw** %9, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 24
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %17)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_82543, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %67

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @E1000_RXD_STAT_IXSM, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %67

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @E1000_RXD_ERR_TCPE, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %67

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @E1000_RXD_STAT_TCPCS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %67

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @E1000_RXD_STAT_TCPCS, align 4
  %55 = and i32 %53, %54
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %62, %51, %41, %34, %27
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
