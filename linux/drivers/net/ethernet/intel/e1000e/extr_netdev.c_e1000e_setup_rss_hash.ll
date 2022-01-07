; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_setup_rss_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_setup_rss_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@RXCSUM = common dso_local global i32 0, align 4
@E1000_RXCSUM_PCSD = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@E1000_MRQC_RSS_FIELD_IPV6_TCP_EX = common dso_local global i32 0, align 4
@MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000e_setup_rss_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_setup_rss_hash(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  store %struct.e1000_hw* %9, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %11 = call i32 @netdev_rss_key_fill(i32* %10, i32 40)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 10
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @RSSRK(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ew32(i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %12

26:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %34, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @RETA(i32 %31)
  %33 = call i32 @ew32(i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %27

37:                                               ; preds = %27
  %38 = load i32, i32* @RXCSUM, align 4
  %39 = call i32 @er32(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @E1000_RXCSUM_PCSD, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @RXCSUM, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ew32(i32 %43, i32 %44)
  %46 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4, align 4
  %47 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_TCP, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @E1000_MRQC_RSS_FIELD_IPV6_TCP_EX, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @MRQC, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ew32(i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @netdev_rss_key_fill(i32*, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @RSSRK(i32) #1

declare dso_local i32 @RETA(i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
