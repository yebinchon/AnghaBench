; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_session_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }
%struct.venus_hfi_device = type { i32 }
%struct.hfi_session_set_property_pkt = type { i32 }

@IFACEQ_VAR_LARGE_PKT_SIZE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*, i32, i8*)* @venus_session_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_session_set_property(%struct.venus_inst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.venus_hfi_device*, align 8
  %9 = alloca %struct.hfi_session_set_property_pkt*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.venus_hfi_device* @to_hfi_priv(i32 %16)
  store %struct.venus_hfi_device* %17, %struct.venus_hfi_device** %8, align 8
  %18 = load i32, i32* @IFACEQ_VAR_LARGE_PKT_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = bitcast i32* %21 to %struct.hfi_session_set_property_pkt*
  store %struct.hfi_session_set_property_pkt* %22, %struct.hfi_session_set_property_pkt** %9, align 8
  %23 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %9, align 8
  %24 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @pkt_session_set_property(%struct.hfi_session_set_property_pkt* %23, %struct.venus_inst* %24, i32 %25, i8* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %42

38:                                               ; preds = %33
  %39 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %8, align 8
  %40 = load %struct.hfi_session_set_property_pkt*, %struct.hfi_session_set_property_pkt** %9, align 8
  %41 = call i32 @venus_iface_cmdq_write(%struct.venus_hfi_device* %39, %struct.hfi_session_set_property_pkt* %40)
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %42

42:                                               ; preds = %38, %36, %32
  %43 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %43)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pkt_session_set_property(%struct.hfi_session_set_property_pkt*, %struct.venus_inst*, i32, i8*) #1

declare dso_local i32 @venus_iface_cmdq_write(%struct.venus_hfi_device*, %struct.hfi_session_set_property_pkt*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
