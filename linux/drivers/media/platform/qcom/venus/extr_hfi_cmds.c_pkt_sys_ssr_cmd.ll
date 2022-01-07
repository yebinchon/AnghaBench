; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_ssr_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_ssr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_sys_test_ssr_pkt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SYS_TEST_SSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_sys_ssr_cmd(%struct.hfi_sys_test_ssr_pkt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi_sys_test_ssr_pkt*, align 8
  %5 = alloca i32, align 4
  store %struct.hfi_sys_test_ssr_pkt* %0, %struct.hfi_sys_test_ssr_pkt** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 128, label %7
    i32 129, label %7
    i32 130, label %7
  ]

7:                                                ; preds = %2, %2, %2
  br label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %7
  %12 = load %struct.hfi_sys_test_ssr_pkt*, %struct.hfi_sys_test_ssr_pkt** %4, align 8
  %13 = getelementptr inbounds %struct.hfi_sys_test_ssr_pkt, %struct.hfi_sys_test_ssr_pkt* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 12, i32* %14, align 4
  %15 = load i32, i32* @HFI_CMD_SYS_TEST_SSR, align 4
  %16 = load %struct.hfi_sys_test_ssr_pkt*, %struct.hfi_sys_test_ssr_pkt** %4, align 8
  %17 = getelementptr inbounds %struct.hfi_sys_test_ssr_pkt, %struct.hfi_sys_test_ssr_pkt* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hfi_sys_test_ssr_pkt*, %struct.hfi_sys_test_ssr_pkt** %4, align 8
  %21 = getelementptr inbounds %struct.hfi_sys_test_ssr_pkt, %struct.hfi_sys_test_ssr_pkt* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
