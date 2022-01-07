; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_io_queue_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_io_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.ena_com_io_sq = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.ena_com_io_cq = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*, %struct.ena_com_io_sq*, %struct.ena_com_io_cq*)* @ena_com_io_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_com_io_queue_free(%struct.ena_com_dev* %0, %struct.ena_com_io_sq* %1, %struct.ena_com_io_cq* %2) #0 {
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca %struct.ena_com_io_cq*, align 8
  %7 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_com_io_sq* %1, %struct.ena_com_io_sq** %5, align 8
  store %struct.ena_com_io_cq* %2, %struct.ena_com_io_cq** %6, align 8
  %8 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %9 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %15 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %18 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %16, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %22 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %26 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %30 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dma_free_coherent(i32 %23, i64 %24, i32* %28, i32 %32)
  %34 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %6, align 8
  %35 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %13, %3
  %38 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %39 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %45 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %48 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %46, %49
  store i64 %50, i64* %7, align 8
  %51 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %52 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %56 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %60 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dma_free_coherent(i32 %53, i64 %54, i32* %58, i32 %62)
  %64 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %65 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %43, %37
  %68 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %69 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %75 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %78 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @devm_kfree(i32 %76, i32* %80)
  %82 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %83 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %73, %67
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @devm_kfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
