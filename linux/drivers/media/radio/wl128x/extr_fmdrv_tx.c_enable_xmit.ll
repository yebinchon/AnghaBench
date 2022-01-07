; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_enable_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_tx.c_enable_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32, i32, %struct.fmtx_data }
%struct.fmtx_data = type { i8* }

@FM_POW_ENB_EVENT = common dso_local global i8* null, align 8
@INT_MASK_SET = common dso_local global i32 0, align 4
@REG_WR = common dso_local global i32 0, align 4
@POWER_ENB_SET = common dso_local global i32 0, align 4
@FM_DRV_TX_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Timeout(%d sec),didn't get tune ended interrupt\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@FM_CORE_TX_XMITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*, i8*)* @enable_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_xmit(%struct.fmdev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fmtx_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %11 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %10, i32 0, i32 2
  store %struct.fmtx_data* %11, %struct.fmtx_data** %6, align 8
  %12 = load i8*, i8** @FM_POW_ENB_EVENT, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %14 = load i32, i32* @INT_MASK_SET, align 4
  %15 = load i32, i32* @REG_WR, align 4
  %16 = call i32 @fmc_send_cmd(%struct.fmdev* %13, i32 %14, i32 %15, i8** %8, i32 8, i32* null, i32* null)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %8, align 8
  %23 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %24 = load i32, i32* @POWER_ENB_SET, align 4
  %25 = load i32, i32* @REG_WR, align 4
  %26 = call i32 @fmc_send_cmd(%struct.fmdev* %23, i32 %24, i32 %25, i8** %8, i32 8, i32* null, i32* null)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %21
  %32 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %33 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %32, i32 0, i32 1
  %34 = call i32 @init_completion(i32* %33)
  %35 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %36 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %35, i32 0, i32 1
  %37 = load i32, i32* @FM_DRV_TX_TIMEOUT, align 4
  %38 = call i64 @wait_for_completion_timeout(i32* %36, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @FM_DRV_TX_TIMEOUT, align 4
  %43 = call i32 @jiffies_to_msecs(i32 %42)
  %44 = sdiv i32 %43, 1000
  %45 = call i32 @fmerr(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %56

48:                                               ; preds = %31
  %49 = load i32, i32* @FM_CORE_TX_XMITING, align 4
  %50 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %51 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.fmtx_data*, %struct.fmtx_data** %6, align 8
  %55 = getelementptr inbounds %struct.fmtx_data, %struct.fmtx_data* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %41, %29, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i8**, i32, i32*, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @fmerr(i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
