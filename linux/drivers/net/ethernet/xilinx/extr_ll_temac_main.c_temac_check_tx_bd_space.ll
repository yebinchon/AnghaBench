; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_check_tx_bd_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_check_tx_bd_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_local = type { i32, %struct.cdmac_bd* }
%struct.cdmac_bd = type { i64 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.temac_local*, i32)* @temac_check_tx_bd_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_check_tx_bd_space(%struct.temac_local* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdmac_bd*, align 8
  %7 = alloca i32, align 4
  store %struct.temac_local* %0, %struct.temac_local** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %9 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %12 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %11, i32 0, i32 1
  %13 = load %struct.cdmac_bd*, %struct.cdmac_bd** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %13, i64 %15
  store %struct.cdmac_bd* %16, %struct.cdmac_bd** %6, align 8
  br label %17

17:                                               ; preds = %40, %2
  %18 = load %struct.cdmac_bd*, %struct.cdmac_bd** %6, align 8
  %19 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TX_BD_NUM, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %33 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %32, i32 0, i32 1
  %34 = load %struct.cdmac_bd*, %struct.cdmac_bd** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %34, i64 %36
  store %struct.cdmac_bd* %37, %struct.cdmac_bd** %6, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %17, label %43

43:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
