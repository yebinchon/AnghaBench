; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_refill_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_refill_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32, i32, i32, i32, %struct.enetc_rx_swbd*, %struct.TYPE_4__ }
%struct.enetc_rx_swbd = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%union.enetc_rx_bd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_bdr*, i32)* @enetc_refill_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_refill_rx_ring(%struct.enetc_bdr* %0, i32 %1) #0 {
  %3 = alloca %struct.enetc_bdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.enetc_rx_swbd*, align 8
  %6 = alloca %union.enetc_rx_bd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %10 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %13 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %12, i32 0, i32 4
  %14 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %14, i64 %16
  store %struct.enetc_rx_swbd* %17, %struct.enetc_rx_swbd** %5, align 8
  %18 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %18, i32 %19)
  store %union.enetc_rx_bd* %20, %union.enetc_rx_bd** %6, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %86, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %21
  %26 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %5, align 8
  %27 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %36 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %5, align 8
  %37 = call i32 @enetc_new_page(%struct.enetc_bdr* %35, %struct.enetc_rx_swbd* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %45 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %89

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %25
  %51 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %5, align 8
  %52 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %5, align 8
  %55 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = call i32 @cpu_to_le64(i64 %57)
  %59 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %6, align 8
  %60 = bitcast %union.enetc_rx_bd* %59 to %struct.TYPE_5__*
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %6, align 8
  %63 = bitcast %union.enetc_rx_bd* %62 to %struct.TYPE_6__*
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %5, align 8
  %66 = getelementptr inbounds %struct.enetc_rx_swbd, %struct.enetc_rx_swbd* %65, i32 1
  store %struct.enetc_rx_swbd* %66, %struct.enetc_rx_swbd** %5, align 8
  %67 = load %union.enetc_rx_bd*, %union.enetc_rx_bd** %6, align 8
  %68 = getelementptr inbounds %union.enetc_rx_bd, %union.enetc_rx_bd* %67, i32 1
  store %union.enetc_rx_bd* %68, %union.enetc_rx_bd** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %73 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  %80 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %81 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %80, i32 0, i32 4
  %82 = load %struct.enetc_rx_swbd*, %struct.enetc_rx_swbd** %81, align 8
  store %struct.enetc_rx_swbd* %82, %struct.enetc_rx_swbd** %5, align 8
  %83 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %84 = call %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %83, i32 0)
  store %union.enetc_rx_bd* %84, %union.enetc_rx_bd** %6, align 8
  br label %85

85:                                               ; preds = %79, %50
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %21

89:                                               ; preds = %43, %21
  %90 = load i32, i32* %8, align 4
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %96 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %99 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %101 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @enetc_wr_reg(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %93, %89
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local %union.enetc_rx_bd* @ENETC_RXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @enetc_new_page(%struct.enetc_bdr*, %struct.enetc_rx_swbd*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @enetc_wr_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
