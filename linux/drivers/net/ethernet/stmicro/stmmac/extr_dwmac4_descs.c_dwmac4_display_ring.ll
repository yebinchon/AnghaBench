; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_display_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac4_descs.c_dwmac4_display_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s descriptor ring:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%03d [0x%x]: 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @dwmac4_display_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwmac4_display_ring(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_desc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dma_desc*
  store %struct.dma_desc* %10, %struct.dma_desc** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %44, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %23 = call i64 @virt_to_phys(%struct.dma_desc* %22)
  %24 = trunc i64 %23 to i32
  %25 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %26 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %30 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %34 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %38 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %24, i32 %28, i32 %32, i32 %36, i32 %40)
  %42 = load %struct.dma_desc*, %struct.dma_desc** %7, align 8
  %43 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %42, i32 1
  store %struct.dma_desc* %43, %struct.dma_desc** %7, align 8
  br label %44

44:                                               ; preds = %20
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %16

47:                                               ; preds = %16
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @virt_to_phys(%struct.dma_desc*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
