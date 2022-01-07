; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_set_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_set_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_sys_set_resource_pkt = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hfi_resource_ocmem = type { i32, i32 }

@HFI_CMD_SYS_SET_RESOURCE = common dso_local global i32 0, align 4
@HFI_RESOURCE_OCMEM = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_sys_set_resource(%struct.hfi_sys_set_resource_pkt* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi_sys_set_resource_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hfi_resource_ocmem*, align 8
  store %struct.hfi_sys_set_resource_pkt* %0, %struct.hfi_sys_set_resource_pkt** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %7, align 8
  %14 = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, %struct.hfi_sys_set_resource_pkt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 32, i32* %15, align 8
  %16 = load i32, i32* @HFI_CMD_SYS_SET_RESOURCE, align 4
  %17 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %7, align 8
  %18 = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, %struct.hfi_sys_set_resource_pkt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @hash32_ptr(i8* %20)
  %22 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %7, align 8
  %23 = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, %struct.hfi_sys_set_resource_pkt* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %48 [
    i32 129, label %25
    i32 128, label %25
    i32 130, label %47
  ]

25:                                               ; preds = %5, %5
  %26 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %7, align 8
  %27 = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, %struct.hfi_sys_set_resource_pkt* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = bitcast i32* %29 to %struct.hfi_resource_ocmem*
  store %struct.hfi_resource_ocmem* %30, %struct.hfi_resource_ocmem** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.hfi_resource_ocmem*, %struct.hfi_resource_ocmem** %12, align 8
  %33 = getelementptr inbounds %struct.hfi_resource_ocmem, %struct.hfi_resource_ocmem* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.hfi_resource_ocmem*, %struct.hfi_resource_ocmem** %12, align 8
  %36 = getelementptr inbounds %struct.hfi_resource_ocmem, %struct.hfi_resource_ocmem* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @HFI_RESOURCE_OCMEM, align 4
  %38 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %7, align 8
  %39 = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, %struct.hfi_sys_set_resource_pkt* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hfi_sys_set_resource_pkt*, %struct.hfi_sys_set_resource_pkt** %7, align 8
  %41 = getelementptr inbounds %struct.hfi_sys_set_resource_pkt, %struct.hfi_sys_set_resource_pkt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 8
  br label %51

47:                                               ; preds = %5
  br label %48

48:                                               ; preds = %5, %47
  %49 = load i32, i32* @ENOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @hash32_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
