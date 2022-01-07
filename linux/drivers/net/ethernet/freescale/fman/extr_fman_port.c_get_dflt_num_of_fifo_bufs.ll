; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_get_dflt_num_of_fifo_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_get_dflt_num_of_fifo_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @get_dflt_num_of_fifo_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dflt_num_of_fifo_bufs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 6
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %24 [
    i32 128, label %12
    i32 129, label %18
  ]

12:                                               ; preds = %10
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 10000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 64, i32* %7, align 4
  br label %17

16:                                               ; preds = %12
  store i32 50, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %15
  br label %25

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 10000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 96, i32* %7, align 4
  br label %23

22:                                               ; preds = %18
  store i32 50, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %25

24:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23, %17
  br label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %40 [
    i32 128, label %28
    i32 129, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 10000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 48, i32* %7, align 4
  br label %33

32:                                               ; preds = %28
  store i32 44, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 10000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 48, i32* %7, align 4
  br label %39

38:                                               ; preds = %34
  store i32 45, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %41

40:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %39, %33
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
