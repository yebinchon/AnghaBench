; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { i32, %struct.lan743x_ptp }
%struct.lan743x_ptp = type { i32 }

@INT_EN_CLR = common dso_local global i32 0, align 4
@INT_BIT_1588_ = common dso_local global i32 0, align 4
@PTP_INT_STS = common dso_local global i32 0, align 4
@PTP_INT_EN_SET = common dso_local global i32 0, align 4
@PTP_INT_BIT_TX_TS_ = common dso_local global i32 0, align 4
@PTP_INT_BIT_TX_SWTS_ERR_ = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PTP TX Software Timestamp Error\0A\00", align 1
@PTP_INT_BIT_TIMER_B_ = common dso_local global i32 0, align 4
@PTP_INT_BIT_TIMER_A_ = common dso_local global i32 0, align 4
@INT_EN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lan743x_ptp_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca %struct.lan743x_ptp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.lan743x_adapter*
  store %struct.lan743x_adapter* %8, %struct.lan743x_adapter** %3, align 8
  store %struct.lan743x_ptp* null, %struct.lan743x_ptp** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %9, i32 0, i32 1
  store %struct.lan743x_ptp* %10, %struct.lan743x_ptp** %4, align 8
  %11 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %12 = load i32, i32* @INT_EN_CLR, align 4
  %13 = load i32, i32* @INT_BIT_1588_, align 4
  %14 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %11, i32 %12, i32 %13)
  %15 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %16 = load i32, i32* @PTP_INT_STS, align 4
  %17 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %19 = load i32, i32* @PTP_INT_EN_SET, align 4
  %20 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PTP_INT_BIT_TX_TS_, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.lan743x_ptp*, %struct.lan743x_ptp** %4, align 8
  %29 = getelementptr inbounds %struct.lan743x_ptp, %struct.lan743x_ptp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ptp_schedule_worker(i32 %30, i32 0)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PTP_INT_BIT_TX_SWTS_ERR_, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %39 = load i32, i32* @drv, align 4
  %40 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_err(%struct.lan743x_adapter* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %45 = load i32, i32* @PTP_INT_STS, align 4
  %46 = load i32, i32* @PTP_INT_BIT_TX_SWTS_ERR_, align 4
  %47 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %37, %32
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @PTP_INT_BIT_TIMER_B_, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %55 = load i32, i32* @PTP_INT_STS, align 4
  %56 = load i32, i32* @PTP_INT_BIT_TIMER_B_, align 4
  %57 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @PTP_INT_BIT_TIMER_A_, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %65 = load i32, i32* @PTP_INT_STS, align 4
  %66 = load i32, i32* @PTP_INT_BIT_TIMER_A_, align 4
  %67 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %73 = load i32, i32* @INT_EN_SET, align 4
  %74 = load i32, i32* @INT_BIT_1588_, align 4
  %75 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @ptp_schedule_worker(i32, i32) #1

declare dso_local i32 @netif_err(%struct.lan743x_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
