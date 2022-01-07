; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_set_property_pkt = type { i32 }

@hfi_ver = common dso_local global i64 0, align 8
@HFI_VERSION_1XX = common dso_local global i64 0, align 8
@HFI_VERSION_3XX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_session_set_property(%struct.hfi_session_set_property_pkt* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi_session_set_property_pkt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.hfi_session_set_property_pkt* %0, %struct.hfi_session_set_property_pkt** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load i64, i64* @hfi_ver, align 8
  %11 = load i64, i64* @HFI_VERSION_1XX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @pkt_session_set_property_1x(%struct.hfi_session_set_property_pkt* %14, i8* %15, i32 %16, i8* %17)
  store i32 %18, i32* %5, align 4
  br label %35

19:                                               ; preds = %4
  %20 = load i64, i64* @hfi_ver, align 8
  %21 = load i64, i64* @HFI_VERSION_3XX, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @pkt_session_set_property_3xx(%struct.hfi_session_set_property_pkt* %24, i8* %25, i32 %26, i8* %27)
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @pkt_session_set_property_4xx(%struct.hfi_session_set_property_pkt* %30, i8* %31, i32 %32, i8* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %23, %13
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @pkt_session_set_property_1x(%struct.hfi_session_set_property_pkt*, i8*, i32, i8*) #1

declare dso_local i32 @pkt_session_set_property_3xx(%struct.hfi_session_set_property_pkt*, i8*, i32, i8*) #1

declare dso_local i32 @pkt_session_set_property_4xx(%struct.hfi_session_set_property_pkt*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
