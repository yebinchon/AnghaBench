; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i32, i32 }

@MSGDMA_CSR_STAT_MASK = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4
@MSGDMA_CSR_CTL_RESET = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4
@ALTERA_TSE_SW_RESET_WATCHDOG_CNTR = common dso_local global i32 0, align 4
@MSGDMA_CSR_STAT_RESETTING = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TSE Rx mSGDMA resetting bit never cleared!\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"TSE Tx mSGDMA resetting bit never cleared!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msgdma_reset(%struct.altera_tse_private* %0) #0 {
  %2 = alloca %struct.altera_tse_private*, align 8
  %3 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %2, align 8
  %4 = load i32, i32* @MSGDMA_CSR_STAT_MASK, align 4
  %5 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %6 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @status, align 4
  %9 = call i32 @msgdma_csroffs(i32 %8)
  %10 = call i32 @csrwr32(i32 %4, i32 %7, i32 %9)
  %11 = load i32, i32* @MSGDMA_CSR_CTL_RESET, align 4
  %12 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %13 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @control, align 4
  %16 = call i32 @msgdma_csroffs(i32 %15)
  %17 = call i32 @csrwr32(i32 %11, i32 %14, i32 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @ALTERA_TSE_SW_RESET_WATCHDOG_CNTR, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %25 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @status, align 4
  %28 = call i32 @msgdma_csroffs(i32 %27)
  %29 = load i32, i32* @MSGDMA_CSR_STAT_RESETTING, align 4
  %30 = call i64 @tse_bit_is_clear(i32 %26, i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %35

33:                                               ; preds = %23
  %34 = call i32 @udelay(i32 1)
  br label %18

35:                                               ; preds = %32, %18
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @ALTERA_TSE_SW_RESET_WATCHDOG_CNTR, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %41 = load i32, i32* @drv, align 4
  %42 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %43 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netif_warn(%struct.altera_tse_private* %40, i32 %41, i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %39, %35
  %47 = load i32, i32* @MSGDMA_CSR_STAT_MASK, align 4
  %48 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %49 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @status, align 4
  %52 = call i32 @msgdma_csroffs(i32 %51)
  %53 = call i32 @csrwr32(i32 %47, i32 %50, i32 %52)
  %54 = load i32, i32* @MSGDMA_CSR_STAT_MASK, align 4
  %55 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %56 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @status, align 4
  %59 = call i32 @msgdma_csroffs(i32 %58)
  %60 = call i32 @csrwr32(i32 %54, i32 %57, i32 %59)
  %61 = load i32, i32* @MSGDMA_CSR_CTL_RESET, align 4
  %62 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %63 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @control, align 4
  %66 = call i32 @msgdma_csroffs(i32 %65)
  %67 = call i32 @csrwr32(i32 %61, i32 %64, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %83, %46
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* @ALTERA_TSE_SW_RESET_WATCHDOG_CNTR, align 4
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %75 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @status, align 4
  %78 = call i32 @msgdma_csroffs(i32 %77)
  %79 = load i32, i32* @MSGDMA_CSR_STAT_RESETTING, align 4
  %80 = call i64 @tse_bit_is_clear(i32 %76, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %85

83:                                               ; preds = %73
  %84 = call i32 @udelay(i32 1)
  br label %68

85:                                               ; preds = %82, %68
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @ALTERA_TSE_SW_RESET_WATCHDOG_CNTR, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %91 = load i32, i32* @drv, align 4
  %92 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %93 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @netif_warn(%struct.altera_tse_private* %90, i32 %91, i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %89, %85
  %97 = load i32, i32* @MSGDMA_CSR_STAT_MASK, align 4
  %98 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %99 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @status, align 4
  %102 = call i32 @msgdma_csroffs(i32 %101)
  %103 = call i32 @csrwr32(i32 %97, i32 %100, i32 %102)
  ret void
}

declare dso_local i32 @csrwr32(i32, i32, i32) #1

declare dso_local i32 @msgdma_csroffs(i32) #1

declare dso_local i64 @tse_bit_is_clear(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netif_warn(%struct.altera_tse_private*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
