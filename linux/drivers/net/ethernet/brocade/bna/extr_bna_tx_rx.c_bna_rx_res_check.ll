; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_res_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_res_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx_mod = type { i64, i64, i32 }
%struct.bna_rx_config = type { i64, i64 }

@BNA_RXP_SINGLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bna_rx_mod*, %struct.bna_rx_config*)* @bna_rx_res_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bna_rx_res_check(%struct.bna_rx_mod* %0, %struct.bna_rx_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bna_rx_mod*, align 8
  %5 = alloca %struct.bna_rx_config*, align 8
  store %struct.bna_rx_mod* %0, %struct.bna_rx_mod** %4, align 8
  store %struct.bna_rx_config* %1, %struct.bna_rx_config** %5, align 8
  %6 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %7 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %12 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %17 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10, %2
  store i32 0, i32* %3, align 4
  br label %67

21:                                               ; preds = %15
  %22 = load %struct.bna_rx_config*, %struct.bna_rx_config** %5, align 8
  %23 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %29 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.bna_rx_config*, %struct.bna_rx_config** %5, align 8
  %32 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %27
  %36 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %37 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load %struct.bna_rx_config*, %struct.bna_rx_config** %5, align 8
  %41 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35, %27
  store i32 0, i32* %3, align 4
  br label %67

45:                                               ; preds = %35
  br label %66

46:                                               ; preds = %21
  %47 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %48 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.bna_rx_config*, %struct.bna_rx_config** %5, align 8
  %51 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %46
  %55 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %4, align 8
  %56 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load %struct.bna_rx_config*, %struct.bna_rx_config** %5, align 8
  %60 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = mul nsw i64 2, %61
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54, %46
  store i32 0, i32* %3, align 4
  br label %67

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %45
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %44, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
