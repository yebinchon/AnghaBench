; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_do_bottom_half_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_do_bottom_half_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fst_card_info = type { i32, i32, i32, %struct.fst_port_info* }
%struct.fst_port_info = type { i64, i32 }

@DBG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"do_bottom_half_rx\0A\00", align 1
@rxDescrRing = common dso_local global %struct.TYPE_2__** null, align 8
@DMA_OWN = common dso_local global i32 0, align 4
@fst_max_reads = common dso_local global i32 0, align 4
@fst_work_intq = common dso_local global i32 0, align 4
@fst_int_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*)* @do_bottom_half_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_bottom_half_rx(%struct.fst_card_info* %0) #0 {
  %2 = alloca %struct.fst_card_info*, align 8
  %3 = alloca %struct.fst_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @DBG_RX, align 4
  %7 = call i32 @dbg(i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %8 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %9 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %8, i32 0, i32 3
  %10 = load %struct.fst_port_info*, %struct.fst_port_info** %9, align 8
  store %struct.fst_port_info* %10, %struct.fst_port_info** %3, align 8
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %14 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %11
  %18 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %19 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %66

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %59, %23
  %25 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %32 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @FST_RDB(%struct.fst_card_info* %25, i32 %36)
  %38 = load i32, i32* @DMA_OWN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %24
  %42 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %43 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %24
  %48 = phi i1 [ false, %24 ], [ %46, %41 ]
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @fst_max_reads, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %55 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fst_q_work_item(i32* @fst_work_intq, i32 %56)
  %58 = call i32 @tasklet_schedule(i32* @fst_int_task)
  br label %65

59:                                               ; preds = %49
  %60 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %61 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %62 = call i32 @fst_intr_rx(%struct.fst_card_info* %60, %struct.fst_port_info* %61)
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %24

65:                                               ; preds = %53, %47
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %70 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %69, i32 1
  store %struct.fst_port_info* %70, %struct.fst_port_info** %3, align 8
  br label %11

71:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i32 @fst_q_work_item(i32*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @fst_intr_rx(%struct.fst_card_info*, %struct.fst_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
