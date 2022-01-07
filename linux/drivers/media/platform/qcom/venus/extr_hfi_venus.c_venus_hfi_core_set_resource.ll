; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_hfi_core_set_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_hfi_core_set_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_hfi_device = type { i32 }
%struct.hfi_sys_set_resource_pkt = type { i32 }

@IFACEQ_VAR_SMALL_PKT_SIZE = common dso_local global i32 0, align 4
@VIDC_RESOURCE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*, i32, i32, i32, i8*)* @venus_hfi_core_set_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_hfi_core_set_resource(%struct.venus_core* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.venus_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.venus_hfi_device*, align 8
  %13 = alloca %struct.hfi_sys_set_resource_pkt*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load %struct.venus_core*, %struct.venus_core** %7, align 8
  %19 = call %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core* %18)
  store %struct.venus_hfi_device* %19, %struct.venus_hfi_device** %12, align 8
  %20 = load i32, i32* @IFACEQ_VAR_SMALL_PKT_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VIDC_RESOURCE_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %49

28:                                               ; preds = %5
  %29 = bitcast i32* %23 to %struct.hfi_sys_set_resource_pkt*
  store %struct.hfi_sys_set_resource_pkt* %29, %struct.hfi_sys_set_resource_pkt** %13, align 8
  %30 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %13, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @pkt_sys_set_resource(%struct.hfi_sys_set_resource_pkt* %30, i32 %31, i32 %32, i32 %33, i8* %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %12, align 8
  %42 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %13, align 8
  %43 = call i32 @venus_iface_cmdq_write(%struct.venus_hfi_device* %41, %struct.hfi_sys_set_resource_pkt* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %49

49:                                               ; preds = %48, %46, %38, %27
  %50 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pkt_sys_set_resource(%struct.hfi_sys_set_resource_pkt*, i32, i32, i32, i8*) #1

declare dso_local i32 @venus_iface_cmdq_write(%struct.venus_hfi_device*, %struct.hfi_sys_set_resource_pkt*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
