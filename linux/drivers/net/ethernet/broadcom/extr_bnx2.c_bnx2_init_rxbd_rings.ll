; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_rxbd_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_rxbd_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2_rx_bd = type { i32, i32, i32, i32 }

@BNX2_MAX_RX_DESC_CNT = common dso_local global i32 0, align 4
@RX_BD_FLAGS_START = common dso_local global i32 0, align 4
@RX_BD_FLAGS_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2_rx_bd**, i64*, i32, i32)* @bnx2_init_rxbd_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_init_rxbd_rings(%struct.bnx2_rx_bd** %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2_rx_bd**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2_rx_bd*, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2_rx_bd** %0, %struct.bnx2_rx_bd*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %68, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  %17 = load %struct.bnx2_rx_bd**, %struct.bnx2_rx_bd*** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %17, i64 %19
  %21 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %20, align 8
  %22 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %21, i64 0
  store %struct.bnx2_rx_bd* %22, %struct.bnx2_rx_bd** %10, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %36, %16
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @BNX2_MAX_RX_DESC_CNT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %10, align 8
  %30 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @RX_BD_FLAGS_START, align 4
  %32 = load i32, i32* @RX_BD_FLAGS_END, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %10, align 8
  %35 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %10, align 8
  %40 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %39, i32 1
  store %struct.bnx2_rx_bd* %40, %struct.bnx2_rx_bd** %10, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i64*, i64** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = ashr i32 %56, 32
  %58 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %10, align 8
  %59 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i64*, i64** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %10, align 8
  %67 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %12

71:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
