; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_set_qhdr_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_set_qhdr_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_queue_header = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32 }

@IFACEQ_DFLT_QHDR = common dso_local global i32 0, align 4
@IFACEQ_QUEUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi_queue_header*)* @venus_set_qhdr_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venus_set_qhdr_defaults(%struct.hfi_queue_header* %0) #0 {
  %2 = alloca %struct.hfi_queue_header*, align 8
  store %struct.hfi_queue_header* %0, %struct.hfi_queue_header** %2, align 8
  %3 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %4 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load i32, i32* @IFACEQ_DFLT_QHDR, align 4
  %6 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %7 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %6, i32 0, i32 11
  store i32 %5, i32* %7, align 8
  %8 = load i32, i32* @IFACEQ_QUEUE_SIZE, align 4
  %9 = sdiv i32 %8, 4
  %10 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %11 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %13 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %15 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %14, i32 0, i32 2
  store i32 1, i32* %15, align 8
  %16 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %17 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %16, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %19 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %18, i32 0, i32 4
  store i32 1, i32* %19, align 8
  %20 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %21 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %23 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %25 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %24, i32 0, i32 7
  store i64 0, i64* %25, align 8
  %26 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %27 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.hfi_queue_header*, %struct.hfi_queue_header** %2, align 8
  %29 = getelementptr inbounds %struct.hfi_queue_header, %struct.hfi_queue_header* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
