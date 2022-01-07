; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_resync_head_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_resync_head_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.spider_net_descr_chain }
%struct.spider_net_descr_chain = type { i32, i32, %struct.spider_net_descr* }
%struct.spider_net_descr = type { i32, %struct.spider_net_descr* }

@SPIDER_NET_DESCR_NOT_IN_USE = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_CARDOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_card*)* @spider_net_resync_head_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_resync_head_ptr(%struct.spider_net_card* %0) #0 {
  %2 = alloca %struct.spider_net_card*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.spider_net_descr_chain*, align 8
  %5 = alloca %struct.spider_net_descr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %2, align 8
  %8 = load %struct.spider_net_card*, %struct.spider_net_card** %2, align 8
  %9 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %8, i32 0, i32 0
  store %struct.spider_net_descr_chain* %9, %struct.spider_net_descr_chain** %4, align 8
  %10 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %11 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %10, i32 0, i32 2
  %12 = load %struct.spider_net_descr*, %struct.spider_net_descr** %11, align 8
  store %struct.spider_net_descr* %12, %struct.spider_net_descr** %5, align 8
  %13 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %14 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @spider_net_get_descr_status(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %63

21:                                               ; preds = %1
  %22 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %23 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %22, i32 0, i32 1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %27 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %26, i32 0, i32 2
  %28 = load %struct.spider_net_descr*, %struct.spider_net_descr** %27, align 8
  store %struct.spider_net_descr* %28, %struct.spider_net_descr** %5, align 8
  %29 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %30 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @spider_net_get_descr_status(i32 %31)
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %52, %21
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %36 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SPIDER_NET_DESCR_CARDOWNED, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %55

44:                                               ; preds = %39
  %45 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %46 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %45, i32 0, i32 1
  %47 = load %struct.spider_net_descr*, %struct.spider_net_descr** %46, align 8
  store %struct.spider_net_descr* %47, %struct.spider_net_descr** %5, align 8
  %48 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %49 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @spider_net_get_descr_status(i32 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %33

55:                                               ; preds = %43, %33
  %56 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %57 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %58 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %57, i32 0, i32 2
  store %struct.spider_net_descr* %56, %struct.spider_net_descr** %58, align 8
  %59 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %4, align 8
  %60 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %59, i32 0, i32 1
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %55, %20
  ret void
}

declare dso_local i32 @spider_net_get_descr_status(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
