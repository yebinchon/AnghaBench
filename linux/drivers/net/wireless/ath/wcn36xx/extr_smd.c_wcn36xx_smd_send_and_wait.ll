; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_send_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_send_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i64, i32 }
%struct.wcn36xx_hal_msg_header = type { i32 }

@WCN36XX_DBG_SMD_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"HAL >>> \00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"HAL TX failed for req %d\0A\00", align 1
@HAL_MSG_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Timeout! No SMD response to req %d in %dms\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@WCN36XX_DBG_SMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"SMD command (req %d, rsp %d) completed in %dms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcn36xx*, i64)* @wcn36xx_smd_send_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %0, i64 %1) #0 {
  %3 = alloca %struct.wcn36xx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.wcn36xx_hal_msg_header*, align 8
  %8 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %10 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.wcn36xx_hal_msg_header*
  store %struct.wcn36xx_hal_msg_header* %12, %struct.wcn36xx_hal_msg_header** %7, align 8
  %13 = load %struct.wcn36xx_hal_msg_header*, %struct.wcn36xx_hal_msg_header** %7, align 8
  %14 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_msg_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @WCN36XX_DBG_SMD_DUMP, align 4
  %17 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %18 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @wcn36xx_dbg_dump(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20)
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %23 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %22, i32 0, i32 0
  %24 = call i32 @init_completion(i32* %23)
  %25 = load i64, i64* @jiffies, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %27 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %30 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @rpmsg_send(i32 %28, i64 %31, i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, i32, ...) @wcn36xx_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %63

39:                                               ; preds = %2
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %3, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 0
  %42 = load i32, i32* @HAL_MSG_TIMEOUT, align 4
  %43 = call i32 @msecs_to_jiffies(i32 %42)
  %44 = call i64 @wait_for_completion_timeout(i32* %41, i32 %43)
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @HAL_MSG_TIMEOUT, align 4
  %49 = call i32 (i8*, i32, ...) @wcn36xx_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @ETIME, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %63

52:                                               ; preds = %39
  %53 = load i32, i32* @WCN36XX_DBG_SMD, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.wcn36xx_hal_msg_header*, %struct.wcn36xx_hal_msg_header** %7, align 8
  %56 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_msg_header* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub i64 %58, %59
  %61 = call i32 @jiffies_to_msecs(i64 %60)
  %62 = call i32 @wcn36xx_dbg(i32 %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %52, %46, %36
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @wcn36xx_dbg_dump(i32, i8*, i64, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rpmsg_send(i32, i64, i64) #1

declare dso_local i32 @wcn36xx_err(i8*, i32, ...) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
