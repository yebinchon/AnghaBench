; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_set_htc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_set_htc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@hi_mbox_io_block_sz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"bmi_write_memory for IO block size failed\0A\00", align 1
@ATH6KL_DBG_TRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"block size set: %d (target addr:0x%X)\0A\00", align 1
@hi_mbox_isr_yield_limit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"bmi_write_memory for yield limit failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32, i64)* @ath6kl_set_htc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_htc_params(%struct.ath6kl* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %10 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %23 = load i32, i32* @hi_mbox_io_block_sz, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %51

30:                                               ; preds = %21
  %31 = load i32, i32* @ATH6KL_DBG_TRC, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %34 = load i32, i32* @hi_mbox_io_block_sz, align 4
  %35 = call i32 @HI_ITEM(i32 %34)
  %36 = call i32 @ath6kl_get_hi_item_addr(%struct.ath6kl* %33, i32 %35)
  %37 = call i32 @ath6kl_dbg(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %42 = load i32, i32* @hi_mbox_isr_yield_limit, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ath6kl_bmi_write_hi32(%struct.ath6kl* %41, i32 %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @ath6kl_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %51

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %47, %28
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @ath6kl_bmi_write_hi32(%struct.ath6kl*, i32, i32) #1

declare dso_local i32 @ath6kl_err(i8*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ath6kl_get_hi_item_addr(%struct.ath6kl*, i32) #1

declare dso_local i32 @HI_ITEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
