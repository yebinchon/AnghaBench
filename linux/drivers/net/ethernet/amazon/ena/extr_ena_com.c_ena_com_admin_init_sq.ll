; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_admin_init_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_admin_init_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_admin_queue = type { i32, i32, %struct.ena_com_admin_sq }
%struct.ena_com_admin_sq = type { i32, i32*, i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_admin_queue*)* @ena_com_admin_init_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_admin_init_sq(%struct.ena_com_admin_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_admin_queue*, align 8
  %4 = alloca %struct.ena_com_admin_sq*, align 8
  %5 = alloca i32, align 4
  store %struct.ena_com_admin_queue* %0, %struct.ena_com_admin_queue** %3, align 8
  %6 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %7 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %6, i32 0, i32 2
  store %struct.ena_com_admin_sq* %7, %struct.ena_com_admin_sq** %4, align 8
  %8 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ADMIN_SQ_SIZE(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %4, align 8
  %17 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %16, i32 0, i32 5
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @dma_alloc_coherent(i32 %14, i32 %15, i32* %17, i32 %18)
  %20 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %4, align 8
  %21 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %4, align 8
  %23 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %4, align 8
  %32 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %4, align 8
  %34 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %4, align 8
  %36 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.ena_com_admin_sq*, %struct.ena_com_admin_sq** %4, align 8
  %38 = getelementptr inbounds %struct.ena_com_admin_sq, %struct.ena_com_admin_sq* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %26
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ADMIN_SQ_SIZE(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
