; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_err_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_err_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.ath10k_sdio_irq_data }
%struct.ath10k_sdio_irq_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATH10K_DBG_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sdio error interrupt\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid error interrupt status: 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"sdio error_int_status 0x%x\0A\00", align 1
@MBOX_ERROR_INT_STATUS_WAKEUP_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"sdio interrupt error wakeup\0A\00", align 1
@MBOX_ERROR_INT_STATUS_RX_UNDERFLOW_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"rx underflow interrupt error\0A\00", align 1
@MBOX_ERROR_INT_STATUS_TX_OVERFLOW_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"tx overflow interrupt error\0A\00", align 1
@MBOX_ERROR_INT_STATUS_ADDRESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"unable to write to error int status address: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_mbox_proc_err_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_proc_err_intr(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_sdio*, align 8
  %5 = alloca %struct.ath10k_sdio_irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %8)
  store %struct.ath10k_sdio* %9, %struct.ath10k_sdio** %4, align 8
  %10 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %11 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %10, i32 0, i32 0
  store %struct.ath10k_sdio_irq_data* %11, %struct.ath10k_sdio_irq_data** %5, align 8
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %14 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %12, i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %5, align 8
  %16 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %1
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %30, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @MBOX_ERROR_INT_STATUS_WAKEUP_MASK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @FIELD_GET(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %40 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %41 = call i32 (%struct.ath10k*, i32, i8*, ...) @ath10k_dbg(%struct.ath10k* %39, i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %29
  %43 = load i32, i32* @MBOX_ERROR_INT_STATUS_RX_UNDERFLOW_MASK, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @FIELD_GET(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %49 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i32, i32* @MBOX_ERROR_INT_STATUS_TX_OVERFLOW_MASK, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @FIELD_GET(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %6, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %5, align 8
  %62 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %68 = load i32, i32* @MBOX_ERROR_INT_STATUS_ADDRESS, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ath10k_sdio_writesb32(%struct.ath10k* %67, i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %73, %23
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, ...) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @ath10k_sdio_writesb32(%struct.ath10k*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
