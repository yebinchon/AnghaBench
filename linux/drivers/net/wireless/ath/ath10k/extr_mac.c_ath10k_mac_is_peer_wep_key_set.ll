; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_is_peer_wep_key_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_is_peer_wep_key_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_peer = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_mac_is_peer_wep_key_set(%struct.ath10k* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ath10k_peer*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %13, i32 0, i64* %14)
  store %struct.ath10k_peer* %15, %struct.ath10k_peer** %8, align 8
  %16 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %17 = icmp ne %struct.ath10k_peer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %50, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %23 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_2__** %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %29 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load %struct.ath10k_peer*, %struct.ath10k_peer** %8, align 8
  %38 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %54

49:                                               ; preds = %36, %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %20

53:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %48, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k*, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
