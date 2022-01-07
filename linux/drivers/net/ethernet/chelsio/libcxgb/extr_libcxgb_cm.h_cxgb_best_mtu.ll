; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.h_cxgb_best_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_cm.h_cxgb_best_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, i16, i32*, i32, i32)* @cxgb_best_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_best_mtu(i16* %0, i16 zeroext %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store i16* %0, i16** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i64 4, i64 4
  %17 = add i64 %16, 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %22 = call i32 @round_up(i32 %21, i32 4)
  br label %24

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ]
  %26 = sext i32 %25 to i64
  %27 = add i64 %17, %26
  %28 = trunc i64 %27 to i16
  store i16 %28, i16* %11, align 2
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %11, align 2
  %32 = zext i16 %31 to i32
  %33 = sub nsw i32 %30, %32
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %12, align 2
  %35 = load i16*, i16** %6, align 8
  %36 = load i16, i16* %11, align 2
  %37 = load i16, i16* %12, align 2
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @cxgb4_best_aligned_mtu(i16* %35, i16 zeroext %36, i16 zeroext %37, i32 8, i32* %38)
  ret void
}

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @cxgb4_best_aligned_mtu(i16*, i16 zeroext, i16 zeroext, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
