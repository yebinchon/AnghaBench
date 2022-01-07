; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_fetch_fw_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_fetch_fw_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.ath10k = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"boot fw request '%s': %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.firmware* (%struct.ath10k*, i8*, i8*)* @ath10k_fetch_fw_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.firmware* @ath10k_fetch_fw_file(%struct.ath10k* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca %struct.firmware*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.firmware* @ERR_PTR(i32 %15)
  store %struct.firmware* %16, %struct.firmware** %4, align 8
  br label %43

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @snprintf(i8* %22, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %27 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @firmware_request_nowarn(%struct.firmware** %9, i8* %26, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %32 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ath10k_dbg(%struct.ath10k* %31, i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.firmware* @ERR_PTR(i32 %39)
  store %struct.firmware* %40, %struct.firmware** %4, align 8
  br label %43

41:                                               ; preds = %21
  %42 = load %struct.firmware*, %struct.firmware** %9, align 8
  store %struct.firmware* %42, %struct.firmware** %4, align 8
  br label %43

43:                                               ; preds = %41, %38, %13
  %44 = load %struct.firmware*, %struct.firmware** %4, align 8
  ret %struct.firmware* %44
}

declare dso_local %struct.firmware* @ERR_PTR(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @firmware_request_nowarn(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
