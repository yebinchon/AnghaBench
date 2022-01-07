; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_cmd_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_cmd_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32 }
%struct.mmc_request = type { i32, %struct.mmc_command* }
%struct.mmc_command = type { i64, i32, i64 }

@EILSEQ = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK = common dso_local global i64 0, align 8
@MMC_SEND_TUNING_BLOCK_HS200 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*)* @msdc_cmd_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_cmd_next(%struct.msdc_host* %0, %struct.mmc_request* %1, %struct.mmc_command* %2) #0 {
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  store %struct.msdc_host* %0, %struct.msdc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store %struct.mmc_command* %2, %struct.mmc_command** %6, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EILSEQ, align 8
  %16 = sub nsw i64 0, %15
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %11
  %19 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MMC_SEND_TUNING_BLOCK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MMC_SEND_TUNING_BLOCK_HS200, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24, %18, %3
  %31 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 1
  %33 = load %struct.mmc_command*, %struct.mmc_command** %32, align 8
  %34 = icmp ne %struct.mmc_command* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 1
  %38 = load %struct.mmc_command*, %struct.mmc_command** %37, align 8
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %24, %11
  %43 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %44 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %45 = call i32 @msdc_request_done(%struct.msdc_host* %43, %struct.mmc_request* %44)
  br label %78

46:                                               ; preds = %35, %30
  %47 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %48 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 1
  %50 = load %struct.mmc_command*, %struct.mmc_command** %49, align 8
  %51 = icmp eq %struct.mmc_command* %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %54 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %55 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @msdc_start_command(%struct.msdc_host* %53, %struct.mmc_request* %54, i32 %57)
  br label %77

59:                                               ; preds = %46
  %60 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %66 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %67 = call i32 @msdc_request_done(%struct.msdc_host* %65, %struct.mmc_request* %66)
  br label %76

68:                                               ; preds = %59
  %69 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %70 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %71 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %72 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %73 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @msdc_start_data(%struct.msdc_host* %69, %struct.mmc_request* %70, %struct.mmc_command* %71, i32 %74)
  br label %76

76:                                               ; preds = %68, %64
  br label %77

77:                                               ; preds = %76, %52
  br label %78

78:                                               ; preds = %77, %42
  ret void
}

declare dso_local i32 @msdc_request_done(%struct.msdc_host*, %struct.mmc_request*) #1

declare dso_local i32 @msdc_start_command(%struct.msdc_host*, %struct.mmc_request*, i32) #1

declare dso_local i32 @msdc_start_data(%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
