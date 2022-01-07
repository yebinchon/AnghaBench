; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_alloc_dev_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_alloc_dev_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.sk_buff*)* @carl9170_alloc_dev_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_alloc_dev_space(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct._carl9170_tx_superframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %13, %struct._carl9170_tx_superframe** %6, align 8
  store i32 -1, i32* %8, align 4
  %14 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %15 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %14, i32 0, i32 4
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %21 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %19, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %27 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %26, i32 0, i32 0
  %28 = call i64 @atomic_sub_return(i32 %25, i32* %27)
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %36 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %35, i32 0, i32 0
  %37 = call i32 @atomic_add(i32 %34, i32* %36)
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %79

40:                                               ; preds = %2
  %41 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %42 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %45 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %48 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bitmap_find_free_region(i32 %46, i32 %50, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %53 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %40
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %63 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %62, i32 0, i32 0
  %64 = call i32 @atomic_add(i32 %61, i32* %63)
  %65 = load i32, i32* @ENOSPC, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %79

67:                                               ; preds = %40
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = bitcast i8* %71 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %72, %struct._carl9170_tx_superframe** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, 1
  %76 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %6, align 8
  %77 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %67, %60, %33
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
