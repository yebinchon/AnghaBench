; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_rsp_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_rsp_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.wcn36xx_hal_msg_header = type { i32 }
%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wcn36xx_hal_ind_msg = type { i32, i32, i32 }

@WCN36XX_DBG_SMD_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SMD <<< \00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Run out of memory while handling SMD_EVENT (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WCN36XX_DBG_HAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"indication arrived\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"SMD_EVENT (%d) not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_rsp_process(%struct.rpmsg_device* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpmsg_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wcn36xx_hal_msg_header*, align 8
  %13 = alloca %struct.ieee80211_hw*, align 8
  %14 = alloca %struct.wcn36xx*, align 8
  %15 = alloca %struct.wcn36xx_hal_ind_msg*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.wcn36xx_hal_msg_header*
  store %struct.wcn36xx_hal_msg_header* %17, %struct.wcn36xx_hal_msg_header** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %19, %struct.ieee80211_hw** %13, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %13, align 8
  %21 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %20, i32 0, i32 0
  %22 = load %struct.wcn36xx*, %struct.wcn36xx** %21, align 8
  store %struct.wcn36xx* %22, %struct.wcn36xx** %14, align 8
  %23 = load i32, i32* @WCN36XX_DBG_SMD_DUMP, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @wcn36xx_dbg_dump(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load %struct.wcn36xx_hal_msg_header*, %struct.wcn36xx_hal_msg_header** %12, align 8
  %28 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_msg_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %88 [
    i32 136, label %30
    i32 165, label %30
    i32 166, label %30
    i32 170, label %30
    i32 133, label %30
    i32 159, label %30
    i32 162, label %30
    i32 151, label %30
    i32 134, label %30
    i32 156, label %30
    i32 152, label %30
    i32 158, label %30
    i32 164, label %30
    i32 141, label %30
    i32 139, label %30
    i32 129, label %30
    i32 140, label %30
    i32 137, label %30
    i32 143, label %30
    i32 144, label %30
    i32 155, label %30
    i32 138, label %30
    i32 154, label %30
    i32 149, label %30
    i32 157, label %30
    i32 171, label %30
    i32 172, label %30
    i32 160, label %30
    i32 131, label %30
    i32 130, label %30
    i32 150, label %30
    i32 128, label %30
    i32 168, label %30
    i32 145, label %30
    i32 153, label %30
    i32 173, label %30
    i32 135, label %30
    i32 132, label %30
    i32 167, label %43
    i32 169, label %43
    i32 161, label %43
    i32 147, label %43
    i32 148, label %43
    i32 163, label %43
    i32 146, label %43
    i32 142, label %43
  ]

30:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %31 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %32 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @memcpy(i32 %33, i8* %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %39 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 5
  %42 = call i32 @complete(i32* %41)
  br label %93

43:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 12, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.wcn36xx_hal_ind_msg* @kmalloc(i32 %47, i32 %48)
  store %struct.wcn36xx_hal_ind_msg* %49, %struct.wcn36xx_hal_ind_msg** %15, align 8
  %50 = load %struct.wcn36xx_hal_ind_msg*, %struct.wcn36xx_hal_ind_msg** %15, align 8
  %51 = icmp ne %struct.wcn36xx_hal_ind_msg* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load %struct.wcn36xx_hal_msg_header*, %struct.wcn36xx_hal_msg_header** %12, align 8
  %54 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_msg_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %94

59:                                               ; preds = %43
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.wcn36xx_hal_ind_msg*, %struct.wcn36xx_hal_ind_msg** %15, align 8
  %62 = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, %struct.wcn36xx_hal_ind_msg* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.wcn36xx_hal_ind_msg*, %struct.wcn36xx_hal_ind_msg** %15, align 8
  %64 = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, %struct.wcn36xx_hal_ind_msg* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memcpy(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %70 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %69, i32 0, i32 1
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.wcn36xx_hal_ind_msg*, %struct.wcn36xx_hal_ind_msg** %15, align 8
  %73 = getelementptr inbounds %struct.wcn36xx_hal_ind_msg, %struct.wcn36xx_hal_ind_msg* %72, i32 0, i32 1
  %74 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %75 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %74, i32 0, i32 4
  %76 = call i32 @list_add_tail(i32* %73, i32* %75)
  %77 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %78 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %81 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %80, i32 0, i32 2
  %82 = call i32 @queue_work(i32 %79, i32* %81)
  %83 = load %struct.wcn36xx*, %struct.wcn36xx** %14, align 8
  %84 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %83, i32 0, i32 1
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* @WCN36XX_DBG_HAL, align 4
  %87 = call i32 @wcn36xx_dbg(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %93

88:                                               ; preds = %5
  %89 = load %struct.wcn36xx_hal_msg_header*, %struct.wcn36xx_hal_msg_header** %12, align 8
  %90 = getelementptr inbounds %struct.wcn36xx_hal_msg_header, %struct.wcn36xx_hal_msg_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %88, %59, %30
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %52
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @wcn36xx_dbg_dump(i32, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local %struct.wcn36xx_hal_ind_msg* @kmalloc(i32, i32) #1

declare dso_local i32 @wcn36xx_err(i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wcn36xx_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
