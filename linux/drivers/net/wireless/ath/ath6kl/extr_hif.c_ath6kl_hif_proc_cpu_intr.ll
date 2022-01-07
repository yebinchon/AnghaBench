; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_cpu_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_proc_cpu_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ATH6KL_DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cpu interrupt\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"valid interrupt source(s) in CPU_INT_STATUS: 0x%x\0A\00", align 1
@CPU_INT_STATUS_ADDRESS = common dso_local global i32 0, align 4
@HIF_WR_SYNC_BYTE_FIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_device*)* @ath6kl_hif_proc_cpu_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_hif_proc_cpu_intr(%struct.ath6kl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %3, align 8
  %7 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %8 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %10 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %14 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %12, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 @WARN_ON(i32 1)
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %50

24:                                               ; preds = %1
  %25 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @ath6kl_dbg(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %35, i32* %36, align 16
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %39, align 4
  %40 = load %struct.ath6kl_device*, %struct.ath6kl_device** %3, align 8
  %41 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CPU_INT_STATUS_ADDRESS, align 4
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %45 = load i32, i32* @HIF_WR_SYNC_BYTE_FIX, align 4
  %46 = call i32 @hif_read_write_sync(i32 %42, i32 %43, i32* %44, i32 4, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %24, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hif_read_write_sync(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
