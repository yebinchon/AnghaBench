; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_session_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_session_flush_pkt = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HFI_CMD_SESSION_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkt_session_flush(%struct.hfi_session_flush_pkt* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi_session_flush_pkt*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.hfi_session_flush_pkt* %0, %struct.hfi_session_flush_pkt** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %10 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %9
    i32 131, label %9
  ]

9:                                                ; preds = %3, %3, %3, %3
  br label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %31

13:                                               ; preds = %9
  %14 = load %struct.hfi_session_flush_pkt*, %struct.hfi_session_flush_pkt** %5, align 8
  %15 = getelementptr inbounds %struct.hfi_session_flush_pkt, %struct.hfi_session_flush_pkt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 16, i32* %17, align 4
  %18 = load i32, i32* @HFI_CMD_SESSION_FLUSH, align 4
  %19 = load %struct.hfi_session_flush_pkt*, %struct.hfi_session_flush_pkt** %5, align 8
  %20 = getelementptr inbounds %struct.hfi_session_flush_pkt, %struct.hfi_session_flush_pkt* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @hash32_ptr(i8* %23)
  %25 = load %struct.hfi_session_flush_pkt*, %struct.hfi_session_flush_pkt** %5, align 8
  %26 = getelementptr inbounds %struct.hfi_session_flush_pkt, %struct.hfi_session_flush_pkt* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.hfi_session_flush_pkt*, %struct.hfi_session_flush_pkt** %5, align 8
  %30 = getelementptr inbounds %struct.hfi_session_flush_pkt, %struct.hfi_session_flush_pkt* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %13, %10
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @hash32_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
