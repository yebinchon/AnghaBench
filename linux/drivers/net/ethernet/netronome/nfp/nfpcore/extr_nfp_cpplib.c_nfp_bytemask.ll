; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cpplib.c_nfp_bytemask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cpplib.c_nfp_bytemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @nfp_bytemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bytemask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 255, i32* %3, align 4
  br label %31

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 4
  %15 = shl i32 15, %14
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 6
  %22 = shl i32 3, %21
  store i32 %22, i32* %3, align 4
  br label %31

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 7
  %29 = shl i32 1, %28
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26, %19, %12, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
