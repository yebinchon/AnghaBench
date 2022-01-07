; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_can_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_can_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32 }
%struct.tun_file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@TUN_TYPE_MASK = common dso_local global i32 0, align 4
@IFF_TAP = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@TUN_RX_PAD = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, %struct.tun_file*, i32, i32, i32)* @tun_can_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_can_build_skb(%struct.tun_struct* %0, %struct.tun_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tun_struct*, align 8
  %8 = alloca %struct.tun_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %7, align 8
  store %struct.tun_file* %1, %struct.tun_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %13 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TUN_TYPE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @IFF_TAP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %49

20:                                               ; preds = %5
  %21 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  %22 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INT_MAX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %49

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %49

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @TUN_RX_PAD, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i64 @SKB_DATA_ALIGN(i32 %41)
  %43 = call i64 @SKB_DATA_ALIGN(i32 4)
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %49

48:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %48, %47, %37, %33, %29, %19
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
