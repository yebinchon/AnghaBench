; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_sgdma.c_sgdma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_sgdma.c_sgdma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i32, i32, i32, i32, i32 }

@SGDMA_CTRLREG_RESET = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgdma_reset(%struct.altera_tse_private* %0) #0 {
  %2 = alloca %struct.altera_tse_private*, align 8
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %2, align 8
  %3 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %4 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %7 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @memset_io(i32 %5, i32 0, i32 %8)
  %10 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %11 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %14 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memset_io(i32 %12, i32 0, i32 %15)
  %17 = load i32, i32* @SGDMA_CTRLREG_RESET, align 4
  %18 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %19 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @control, align 4
  %22 = call i32 @sgdma_csroffs(i32 %21)
  %23 = call i32 @csrwr32(i32 %17, i32 %20, i32 %22)
  %24 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %25 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @control, align 4
  %28 = call i32 @sgdma_csroffs(i32 %27)
  %29 = call i32 @csrwr32(i32 0, i32 %26, i32 %28)
  %30 = load i32, i32* @SGDMA_CTRLREG_RESET, align 4
  %31 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %32 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @control, align 4
  %35 = call i32 @sgdma_csroffs(i32 %34)
  %36 = call i32 @csrwr32(i32 %30, i32 %33, i32 %35)
  %37 = load %struct.altera_tse_private*, %struct.altera_tse_private** %2, align 8
  %38 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @control, align 4
  %41 = call i32 @sgdma_csroffs(i32 %40)
  %42 = call i32 @csrwr32(i32 0, i32 %39, i32 %41)
  ret void
}

declare dso_local i32 @memset_io(i32, i32, i32) #1

declare dso_local i32 @csrwr32(i32, i32, i32) #1

declare dso_local i32 @sgdma_csroffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
