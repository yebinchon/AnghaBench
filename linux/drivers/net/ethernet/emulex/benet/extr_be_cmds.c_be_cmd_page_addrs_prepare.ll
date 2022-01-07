; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_page_addrs_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_page_addrs_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phys_addr = type { i8*, i8* }
%struct.be_dma_mem = type { i32, i32, i32 }

@PAGE_SIZE_4K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phys_addr*, i32, %struct.be_dma_mem*)* @be_cmd_page_addrs_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_cmd_page_addrs_prepare(%struct.phys_addr* %0, i32 %1, %struct.be_dma_mem* %2) #0 {
  %4 = alloca %struct.phys_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_dma_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phys_addr* %0, %struct.phys_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %6, align 8
  %10 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %11 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %14 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @PAGES_4K_SPANNED(i32 %12, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @min(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.be_dma_mem*, %struct.be_dma_mem** %6, align 8
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %47, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.phys_addr*, %struct.phys_addr** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %29, i64 %31
  %33 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %32, i32 0, i32 1
  store i8* %28, i8** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @upper_32_bits(i32 %34)
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.phys_addr*, %struct.phys_addr** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %37, i64 %39
  %41 = getelementptr inbounds %struct.phys_addr, %struct.phys_addr* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  %42 = load i64, i64* @PAGE_SIZE_4K, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %22

50:                                               ; preds = %22
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
