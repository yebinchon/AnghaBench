; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i32 }

@resp_fill_level = common dso_local global i32 0, align 4
@bytes_transferred = common dso_local global i32 0, align 4
@status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msgdma_rx_status(%struct.altera_tse_private* %0) #0 {
  %2 = alloca %struct.altera_tse_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %7 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @resp_fill_level, align 4
  %10 = call i32 @msgdma_csroffs(i32 %9)
  %11 = call i32 @csrrd32(i32 %8, i32 %10)
  %12 = and i32 %11, 65535
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %16 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @bytes_transferred, align 4
  %19 = call i32 @msgdma_respoffs(i32 %18)
  %20 = call i32 @csrrd32(i32 %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %22 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @status, align 4
  %25 = call i32 @msgdma_respoffs(i32 %24)
  %26 = call i32 @csrrd32(i32 %23, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 %28, 16
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 65535
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %14, %1
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @csrrd32(i32, i32) #1

declare dso_local i32 @msgdma_csroffs(i32) #1

declare dso_local i32 @msgdma_respoffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
