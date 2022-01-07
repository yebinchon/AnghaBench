; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_dump_cmd_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_dump_cmd_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32 }
%struct.wcn36xx_hal_dump_cmd_req_msg = type { %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_DUMP_COMMAND_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Sending hal_dump_cmd failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"hal_dump_cmd response failed err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_dump_cmd_req(%struct.wcn36xx* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.wcn36xx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wcn36xx_hal_dump_cmd_req_msg, align 8
  %14 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %16 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @WCN36XX_HAL_DUMP_COMMAND_REQ, align 4
  %19 = call i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_dump_cmd_req_msg* byval(%struct.wcn36xx_hal_dump_cmd_req_msg) align 8 %13, i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_hal_dump_cmd_req_msg, %struct.wcn36xx_hal_dump_cmd_req_msg* %13, i32 0, i32 5
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.wcn36xx_hal_dump_cmd_req_msg, %struct.wcn36xx_hal_dump_cmd_req_msg* %13, i32 0, i32 4
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.wcn36xx_hal_dump_cmd_req_msg, %struct.wcn36xx_hal_dump_cmd_req_msg* %13, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_hal_dump_cmd_req_msg, %struct.wcn36xx_hal_dump_cmd_req_msg* %13, i32 0, i32 2
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds %struct.wcn36xx_hal_dump_cmd_req_msg, %struct.wcn36xx_hal_dump_cmd_req_msg* %13, i32 0, i32 1
  store i8* %28, i8** %29, align 8
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %31 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PREPARE_HAL_BUF(i32 %32, %struct.wcn36xx_hal_dump_cmd_req_msg* byval(%struct.wcn36xx_hal_dump_cmd_req_msg) align 8 %13)
  %34 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_hal_dump_cmd_req_msg, %struct.wcn36xx_hal_dump_cmd_req_msg* %13, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %34, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %57

43:                                               ; preds = %6
  %44 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %45 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %48 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wcn36xx_smd_rsp_status_check(i32 %46, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i8*, ...) @wcn36xx_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %57

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %53, %41
  %58 = load %struct.wcn36xx*, %struct.wcn36xx** %7, align 8
  %59 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %14, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(%struct.wcn36xx_hal_dump_cmd_req_msg* byval(%struct.wcn36xx_hal_dump_cmd_req_msg) align 8, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i32, %struct.wcn36xx_hal_dump_cmd_req_msg* byval(%struct.wcn36xx_hal_dump_cmd_req_msg) align 8) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, ...) #1

declare dso_local i32 @wcn36xx_smd_rsp_status_check(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
