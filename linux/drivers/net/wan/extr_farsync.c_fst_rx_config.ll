; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_rx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_rx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.fst_port_info = type { i32, i64, %struct.fst_card_info* }
%struct.fst_card_info = type { i32 }

@NUM_RX_BUFFER = common dso_local global i32 0, align 4
@rxBuffer = common dso_local global i32*** null, align 8
@rxDescrRing = common dso_local global %struct.TYPE_2__** null, align 8
@LEN_RX_BUFFER = common dso_local global i32 0, align 4
@DMA_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_port_info*)* @fst_rx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_rx_config(%struct.fst_port_info* %0) #0 {
  %2 = alloca %struct.fst_port_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.fst_card_info*, align 8
  store %struct.fst_port_info* %0, %struct.fst_port_info** %2, align 8
  %8 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %9 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %12 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %11, i32 0, i32 2
  %13 = load %struct.fst_card_info*, %struct.fst_card_info** %12, align 8
  store %struct.fst_card_info* %13, %struct.fst_card_info** %7, align 8
  %14 = load %struct.fst_card_info*, %struct.fst_card_info** %7, align 8
  %15 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %102, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NUM_RX_BUFFER, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %105

22:                                               ; preds = %18
  %23 = load i32***, i32**** @rxBuffer, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32**, i32*** %23, i64 %25
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BUF_OFFSET(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.fst_card_info*, %struct.fst_card_info** %7, align 8
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @FST_WRW(%struct.fst_card_info* %35, i32 %45, i32 %46)
  %48 = load %struct.fst_card_info*, %struct.fst_card_info** %7, align 8
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = lshr i32 %59, 16
  %61 = call i32 @FST_WRB(%struct.fst_card_info* %48, i32 %58, i32 %60)
  %62 = load %struct.fst_card_info*, %struct.fst_card_info** %7, align 8
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LEN_RX_BUFFER, align 4
  %74 = call i32 @cnv_bcnt(i32 %73)
  %75 = call i32 @FST_WRW(%struct.fst_card_info* %62, i32 %72, i32 %74)
  %76 = load %struct.fst_card_info*, %struct.fst_card_info** %7, align 8
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @LEN_RX_BUFFER, align 4
  %88 = call i32 @FST_WRW(%struct.fst_card_info* %76, i32 %86, i32 %87)
  %89 = load %struct.fst_card_info*, %struct.fst_card_info** %7, align 8
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @DMA_OWN, align 4
  %101 = call i32 @FST_WRB(%struct.fst_card_info* %89, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %22
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %18

105:                                              ; preds = %18
  %106 = load %struct.fst_port_info*, %struct.fst_port_info** %2, align 8
  %107 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.fst_card_info*, %struct.fst_card_info** %7, align 8
  %109 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %108, i32 0, i32 0
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUF_OFFSET(i32) #1

declare dso_local i32 @FST_WRW(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @cnv_bcnt(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
