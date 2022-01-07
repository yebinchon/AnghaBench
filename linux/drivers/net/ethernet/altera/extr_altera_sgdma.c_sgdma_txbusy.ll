; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_sgdma.c_sgdma_txbusy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_sgdma.c_sgdma_txbusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i32 }

@status = common dso_local global i32 0, align 4
@SGDMA_STSREG_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"timeout waiting for tx dma\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_tse_private*)* @sgdma_txbusy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgdma_txbusy(%struct.altera_tse_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %7 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @status, align 4
  %10 = call i32 @sgdma_csroffs(i32 %9)
  %11 = call i32 @csrrd32(i32 %8, i32 %10)
  %12 = load i32, i32* @SGDMA_STSREG_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %16, 100
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ false, %5 ], [ %18, %15 ]
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call i32 @udelay(i32 1)
  br label %5

23:                                               ; preds = %19
  %24 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %25 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @status, align 4
  %28 = call i32 @sgdma_csroffs(i32 %27)
  %29 = call i32 @csrrd32(i32 %26, i32 %28)
  %30 = load i32, i32* @SGDMA_STSREG_BUSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %35 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netdev_err(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %39

38:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @csrrd32(i32, i32) #1

declare dso_local i32 @sgdma_csroffs(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
