; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_find_tx_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_find_tx_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.atmel_private*, i64)* @find_tx_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_tx_buff(%struct.atmel_private* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.atmel_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.atmel_private* %0, %struct.atmel_private** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %8 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %12 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %16 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %21 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i64 0, i64* %3, align 8
  br label %55

26:                                               ; preds = %19
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %32 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  store i64 %38, i64* %3, align 8
  br label %55

39:                                               ; preds = %26
  %40 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %41 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* %5, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %49 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.atmel_private*, %struct.atmel_private** %4, align 8
  %51 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %3, align 8
  br label %55

54:                                               ; preds = %39
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %54, %47, %30, %25
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
