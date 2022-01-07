; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_is_amsdu_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_is_amsdu_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BA_STREAM_NOT_ALLOWED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32)* @mwifiex_is_amsdu_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_is_amsdu_allowed(%struct.mwifiex_private* %0, i32 %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %6 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BA_STREAM_NOT_ALLOWED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %20, %15
  %30 = phi i1 [ true, %15 ], [ %28, %20 ]
  br label %31

31:                                               ; preds = %29, %2
  %32 = phi i1 [ false, %2 ], [ %30, %29 ]
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
