; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_get_dflt_num_of_open_dmas.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_get_dflt_num_of_open_dmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @get_dflt_num_of_open_dmas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dflt_num_of_open_dmas(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 6
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %25 [
    i32 128, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 10000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 12, i32* %8, align 4
  br label %18

17:                                               ; preds = %13
  store i32 3, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %26

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 10000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 8, i32* %8, align 4
  br label %24

23:                                               ; preds = %19
  store i32 2, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %22
  br label %26

25:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %39

26:                                               ; preds = %24, %18
  br label %37

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %35 [
    i32 128, label %29
    i32 129, label %29
  ]

29:                                               ; preds = %27, %27
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 10000
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 8, i32* %8, align 4
  br label %34

33:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %26
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
