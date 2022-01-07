; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_sfr_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_sfr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.hfi_sfr* }
%struct.hfi_sfr = type { i8*, i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"SFR message from FW: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_hfi_device*)* @venus_sfr_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venus_sfr_print(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca %struct.venus_hfi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hfi_sfr*, align 8
  %5 = alloca i8*, align 8
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %2, align 8
  %6 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %7 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %12 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.hfi_sfr*, %struct.hfi_sfr** %13, align 8
  store %struct.hfi_sfr* %14, %struct.hfi_sfr** %4, align 8
  %15 = load %struct.hfi_sfr*, %struct.hfi_sfr** %4, align 8
  %16 = icmp ne %struct.hfi_sfr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.hfi_sfr*, %struct.hfi_sfr** %4, align 8
  %20 = getelementptr inbounds %struct.hfi_sfr, %struct.hfi_sfr* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.hfi_sfr*, %struct.hfi_sfr** %4, align 8
  %23 = getelementptr inbounds %struct.hfi_sfr, %struct.hfi_sfr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @memchr(i8* %21, i8 signext 0, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load %struct.hfi_sfr*, %struct.hfi_sfr** %4, align 8
  %30 = getelementptr inbounds %struct.hfi_sfr, %struct.hfi_sfr* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.hfi_sfr*, %struct.hfi_sfr** %4, align 8
  %33 = getelementptr inbounds %struct.hfi_sfr, %struct.hfi_sfr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %28, %18
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load %struct.hfi_sfr*, %struct.hfi_sfr** %4, align 8
  %41 = getelementptr inbounds %struct.hfi_sfr, %struct.hfi_sfr* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @dev_err_ratelimited(%struct.device* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %38, %17
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @dev_err_ratelimited(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
