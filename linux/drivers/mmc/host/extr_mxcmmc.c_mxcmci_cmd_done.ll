; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i32, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxcmci_host*, i32)* @mxcmci_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_cmd_done(%struct.mxcmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mxcmci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @mxcmci_read_response(%struct.mxcmci_host* %5, i32 %6)
  %8 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %9 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %8, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %11 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %16 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %21 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %22 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mxcmci_finish_request(%struct.mxcmci_host* %20, i64 %23)
  br label %38

25:                                               ; preds = %14, %2
  %26 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %27 = call i32 @mxcmci_use_dma(%struct.mxcmci_host* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %31 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %36 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %35, i32 0, i32 0
  %37 = call i32 @schedule_work(i32* %36)
  br label %38

38:                                               ; preds = %19, %34, %29, %25
  ret void
}

declare dso_local i32 @mxcmci_read_response(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @mxcmci_finish_request(%struct.mxcmci_host*, i64) #1

declare dso_local i32 @mxcmci_use_dma(%struct.mxcmci_host*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
