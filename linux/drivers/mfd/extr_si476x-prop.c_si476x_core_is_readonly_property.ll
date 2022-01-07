; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-prop.c_si476x_core_is_readonly_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-prop.c_si476x_core_is_readonly_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*, i32)* @si476x_core_is_readonly_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_is_readonly_property(%struct.si476x_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si476x_core*, align 8
  %5 = alloca i32, align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %7 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 128
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %12 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ true, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.si476x_core*, %struct.si476x_core** %4, align 8
  %20 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %39 [
    i32 130, label %22
    i32 129, label %26
    i32 128, label %38
  ]

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 12800
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %15
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 4102
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 8720
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 12800
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = phi i1 [ true, %29 ], [ true, %26 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %40

39:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %35, %22
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
