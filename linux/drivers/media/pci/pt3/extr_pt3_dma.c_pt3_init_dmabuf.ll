; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_init_dmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_dma.c_pt3_init_dmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_adapter = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@PT3_BUF_CANARY = common dso_local global i32 0, align 4
@PT3_ACCESS_UNIT = common dso_local global i64 0, align 8
@DATA_BUF_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pt3_init_dmabuf(%struct.pt3_adapter* %0) #0 {
  %2 = alloca %struct.pt3_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.pt3_adapter* %0, %struct.pt3_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %12
  %19 = load i32, i32* @PT3_BUF_CANARY, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load i64, i64* @PT3_ACCESS_UNIT, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DATA_BUF_SZ, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %18
  %33 = load i32, i32* @DATA_BUF_SZ, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  %38 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %32, %18
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load %struct.pt3_adapter*, %struct.pt3_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.pt3_adapter, %struct.pt3_adapter* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
