; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_word_memcpy_fromcard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_word_memcpy_fromcard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @word_memcpy_fromcard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @word_memcpy_fromcard(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i16*
  store i16* %10, i16** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to i16*
  store i16* %13, i16** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %22, %3
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i16*, i16** %8, align 8
  %24 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %24, i16** %8, align 8
  %25 = load volatile i16, i16* %23, align 2
  %26 = load i16*, i16** %7, align 8
  %27 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %27, i16** %7, align 8
  store i16 %25, i16* %26, align 2
  br label %18

28:                                               ; preds = %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
