; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c___carl9170_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c___carl9170_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i32*, i32)* @__carl9170_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__carl9170_rx(%struct.ar9170* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %26, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ugt i32 %9, 2
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %12, 12
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 255
  br label %24

24:                                               ; preds = %19, %14, %11, %8
  %25 = phi i1 [ false, %14 ], [ false, %11 ], [ false, %8 ], [ %23, %19 ]
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 2
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, 2
  store i32 %30, i32* %6, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32* %32, i32** %5, align 8
  br label %8

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %34, 4
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %53

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @carl9170_rx_untie_cmds(%struct.ar9170* %44, i32* %45, i32 %46)
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @carl9170_rx_untie_data(%struct.ar9170* %49, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %39, %48, %43
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @carl9170_rx_untie_cmds(%struct.ar9170*, i32*, i32) #1

declare dso_local i32 @carl9170_rx_untie_data(%struct.ar9170*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
