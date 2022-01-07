; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_move_rx_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_move_rx_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { %struct.TYPE_4__, i8**, %struct.sk_buff** }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_queue*, %struct.sk_buff*, i8*)* @xennet_move_rx_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xennet_move_rx_slot(%struct.netfront_queue* %0, %struct.sk_buff* %1, i8* %2) #0 {
  %4 = alloca %struct.netfront_queue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.netfront_queue* %0, %struct.netfront_queue** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %9 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @xennet_rxidx(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %14 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %13, i32 0, i32 2
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %15, i64 %17
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %20 = call i32 @BUG_ON(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %23 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %22, i32 0, i32 2
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %24, i64 %26
  store %struct.sk_buff* %21, %struct.sk_buff** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %30 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* %28, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %37 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %36, i32 0, i32 0
  %38 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %39 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_3__* @RING_GET_REQUEST(%struct.TYPE_4__* %37, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %35, i32* %43, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %46 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %45, i32 0, i32 0
  %47 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %48 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_3__* @RING_GET_REQUEST(%struct.TYPE_4__* %46, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i8* %44, i8** %52, align 8
  %53 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %54 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  ret void
}

declare dso_local i32 @xennet_rxidx(i32) #1

declare dso_local i32 @BUG_ON(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @RING_GET_REQUEST(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
