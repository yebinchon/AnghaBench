; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_pending_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_pending_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@ATH10K_DBG_SDIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"sdio pending mailbox msg lookahead 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sdio host_int_status 0x%x\0A\00", align 1
@MBOX_HOST_INT_STATUS_CPU_MASK = common dso_local global i32 0, align 4
@MBOX_HOST_INT_STATUS_ERROR_MASK = common dso_local global i32 0, align 4
@MBOX_HOST_INT_STATUS_COUNTER_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"sdio pending irqs done %d status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32*)* @ath10k_sdio_mbox_proc_pending_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_proc_pending_irqs(%struct.ath10k* %0, i32* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call i32 @ath10k_sdio_mbox_read_int_status(%struct.ath10k* %8, i32* %5, i64* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 1, i32* %21, align 4
  br label %76

22:                                               ; preds = %17, %14
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %26, i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ath10k_sdio_mbox_rxmsg_pending_handler(%struct.ath10k* %31, i64 %32, i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %76

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @MBOX_HOST_INT_STATUS_CPU_MASK, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @FIELD_GET(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = call i32 @ath10k_sdio_mbox_proc_cpu_intr(%struct.ath10k* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %76

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %39
  %56 = load i32, i32* @MBOX_HOST_INT_STATUS_ERROR_MASK, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @FIELD_GET(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = call i32 @ath10k_sdio_mbox_proc_err_intr(%struct.ath10k* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %76

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* @MBOX_HOST_INT_STATUS_COUNTER_MASK, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @FIELD_GET(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = call i32 @ath10k_sdio_mbox_proc_counter_intr(%struct.ath10k* %73)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %67
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %65, %53, %37, %20, %12
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load i32, i32* @ATH10K_DBG_SDIO, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (%struct.ath10k*, i32, i8*, i32, ...) @ath10k_dbg(%struct.ath10k* %77, i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @ath10k_sdio_mbox_read_int_status(%struct.ath10k*, i32*, i64*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, ...) #1

declare dso_local i32 @ath10k_sdio_mbox_rxmsg_pending_handler(%struct.ath10k*, i64, i32*) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i32 @ath10k_sdio_mbox_proc_cpu_intr(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_mbox_proc_err_intr(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_mbox_proc_counter_intr(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
