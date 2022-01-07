; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_chain_mode.c_init_dma_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_chain_mode.c_init_dma_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_extended_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.dma_desc = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32)* @init_dma_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dma_chain(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.dma_extended_desc*, align 8
  %12 = alloca %struct.dma_desc*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.dma_extended_desc*
  store %struct.dma_extended_desc* %18, %struct.dma_extended_desc** %11, align 8
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %35, %16
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub i32 %21, 1
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %11, align 8
  %31 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %11, align 8
  %34 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %33, i32 1
  store %struct.dma_extended_desc* %34, %struct.dma_extended_desc** %11, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.dma_extended_desc*, %struct.dma_extended_desc** %11, align 8
  %43 = getelementptr inbounds %struct.dma_extended_desc, %struct.dma_extended_desc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  br label %72

45:                                               ; preds = %4
  %46 = load i8*, i8** %5, align 8
  %47 = bitcast i8* %46 to %struct.dma_desc*
  store %struct.dma_desc* %47, %struct.dma_desc** %12, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %63, %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %50, 1
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.dma_desc*, %struct.dma_desc** %12, align 8
  %60 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.dma_desc*, %struct.dma_desc** %12, align 8
  %62 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %61, i32 1
  store %struct.dma_desc* %62, %struct.dma_desc** %12, align 8
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %48

66:                                               ; preds = %48
  %67 = load i64, i64* %6, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.dma_desc*, %struct.dma_desc** %12, align 8
  %71 = getelementptr inbounds %struct.dma_desc, %struct.dma_desc* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %66, %38
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
