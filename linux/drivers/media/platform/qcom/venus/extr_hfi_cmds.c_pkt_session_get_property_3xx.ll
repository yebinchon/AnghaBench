; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_get_property_3xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_get_property_3xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_get_property_pkt = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_GET_PROPERTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi_session_get_property_pkt*, i8*, i32)* @pkt_session_get_property_3xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_session_get_property_3xx(%struct.hfi_session_get_property_pkt* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_session_get_property_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi_session_get_property_pkt* %0, %struct.hfi_session_get_property_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.hfi_session_get_property_pkt*, %struct.hfi_session_get_property_pkt** %5, align 8
  %10 = icmp ne %struct.hfi_session_get_property_pkt* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %11
  %18 = load %struct.hfi_session_get_property_pkt*, %struct.hfi_session_get_property_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.hfi_session_get_property_pkt, %struct.hfi_session_get_property_pkt* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 32, i32* %21, align 4
  %22 = load i32, i32* @HFI_CMD_SESSION_GET_PROPERTY, align 4
  %23 = load %struct.hfi_session_get_property_pkt*, %struct.hfi_session_get_property_pkt** %5, align 8
  %24 = getelementptr inbounds %struct.hfi_session_get_property_pkt, %struct.hfi_session_get_property_pkt* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @hash32_ptr(i8* %27)
  %29 = load %struct.hfi_session_get_property_pkt*, %struct.hfi_session_get_property_pkt** %5, align 8
  %30 = getelementptr inbounds %struct.hfi_session_get_property_pkt, %struct.hfi_session_get_property_pkt* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.hfi_session_get_property_pkt*, %struct.hfi_session_get_property_pkt** %5, align 8
  %33 = getelementptr inbounds %struct.hfi_session_get_property_pkt, %struct.hfi_session_get_property_pkt* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %40 [
    i32 128, label %35
  ]

35:                                               ; preds = %17
  %36 = load %struct.hfi_session_get_property_pkt*, %struct.hfi_session_get_property_pkt** %5, align 8
  %37 = getelementptr inbounds %struct.hfi_session_get_property_pkt, %struct.hfi_session_get_property_pkt* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 128, i32* %39, align 4
  br label %45

40:                                               ; preds = %17
  %41 = load %struct.hfi_session_get_property_pkt*, %struct.hfi_session_get_property_pkt** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pkt_session_get_property_1x(%struct.hfi_session_get_property_pkt* %41, i8* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @hash32_ptr(i8*) #1

declare dso_local i32 @pkt_session_get_property_1x(%struct.hfi_session_get_property_pkt*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
