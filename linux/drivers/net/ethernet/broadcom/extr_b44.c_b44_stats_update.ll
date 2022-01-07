; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@B44_TX_GOOD_O = common dso_local global i64 0, align 8
@B44_TX_PAUSE = common dso_local global i64 0, align 8
@B44_RX_GOOD_O = common dso_local global i64 0, align 8
@B44_RX_NPAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_stats_update(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %5 = load %struct.b44*, %struct.b44** %2, align 8
  %6 = getelementptr inbounds %struct.b44, %struct.b44* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store i32* %7, i32** %4, align 8
  %8 = load %struct.b44*, %struct.b44** %2, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @u64_stats_update_begin(i32* %10)
  %12 = load i64, i64* @B44_TX_GOOD_O, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @B44_TX_PAUSE, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.b44*, %struct.b44** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @br32(%struct.b44* %18, i64 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %4, align 8
  %23 = load i32, i32* %21, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %21, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 4
  store i64 %29, i64* %3, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 32
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* @B44_RX_GOOD_O, align 8
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %48, %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @B44_RX_NPAUSE, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.b44*, %struct.b44** %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @br32(%struct.b44* %39, i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %4, align 8
  %44 = load i32, i32* %42, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %42, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.b44*, %struct.b44** %2, align 8
  %53 = getelementptr inbounds %struct.b44, %struct.b44* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @u64_stats_update_end(i32* %54)
  ret void
}

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i64 @br32(%struct.b44*, i64) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
