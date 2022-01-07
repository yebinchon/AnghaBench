; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_display_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_norm_desc.c_ndesc_display_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s descriptor ring:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%03d [0x%x]: 0x%x 0x%x 0x%x 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @ndesc_display_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndesc_display_ring(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dma_desc*
  store %struct.dma_desc* %11, %struct.dma_desc** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %41, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %23 = bitcast %struct.dma_desc* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %27 = call i64 @virt_to_phys(%struct.dma_desc* %26)
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 32
  %32 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %33 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %36 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32 %28, i32 %29, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %40 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %39, i32 1
  store %struct.dma_desc* %40, %struct.dma_desc** %7, align 8
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %17

44:                                               ; preds = %17
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @virt_to_phys(%struct.dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
