; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_set_micbias_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_set_micbias_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.madera*)* @madera_set_micbias_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madera_set_micbias_info(%struct.madera* %0) #0 {
  %2 = alloca %struct.madera*, align 8
  store %struct.madera* %0, %struct.madera** %2, align 8
  %3 = load %struct.madera*, %struct.madera** %2, align 8
  %4 = getelementptr inbounds %struct.madera, %struct.madera* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %49 [
    i32 135, label %6
    i32 134, label %13
    i32 133, label %24
    i32 128, label %24
    i32 132, label %27
    i32 131, label %27
    i32 136, label %38
    i32 130, label %38
    i32 129, label %38
  ]

6:                                                ; preds = %1
  %7 = load %struct.madera*, %struct.madera** %2, align 8
  %8 = getelementptr inbounds %struct.madera, %struct.madera* %7, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = load %struct.madera*, %struct.madera** %2, align 8
  %10 = getelementptr inbounds %struct.madera, %struct.madera* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 3, i32* %12, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.madera*, %struct.madera** %2, align 8
  %15 = getelementptr inbounds %struct.madera, %struct.madera* %14, i32 0, i32 1
  store i32 2, i32* %15, align 4
  %16 = load %struct.madera*, %struct.madera** %2, align 8
  %17 = getelementptr inbounds %struct.madera, %struct.madera* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 2, i32* %19, align 4
  %20 = load %struct.madera*, %struct.madera** %2, align 8
  %21 = getelementptr inbounds %struct.madera, %struct.madera* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 2, i32* %23, align 4
  br label %50

24:                                               ; preds = %1, %1
  %25 = load %struct.madera*, %struct.madera** %2, align 8
  %26 = getelementptr inbounds %struct.madera, %struct.madera* %25, i32 0, i32 1
  store i32 4, i32* %26, align 4
  br label %50

27:                                               ; preds = %1, %1
  %28 = load %struct.madera*, %struct.madera** %2, align 8
  %29 = getelementptr inbounds %struct.madera, %struct.madera* %28, i32 0, i32 1
  store i32 2, i32* %29, align 4
  %30 = load %struct.madera*, %struct.madera** %2, align 8
  %31 = getelementptr inbounds %struct.madera, %struct.madera* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 4, i32* %33, align 4
  %34 = load %struct.madera*, %struct.madera** %2, align 8
  %35 = getelementptr inbounds %struct.madera, %struct.madera* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 4, i32* %37, align 4
  br label %50

38:                                               ; preds = %1, %1, %1
  %39 = load %struct.madera*, %struct.madera** %2, align 8
  %40 = getelementptr inbounds %struct.madera, %struct.madera* %39, i32 0, i32 1
  store i32 2, i32* %40, align 4
  %41 = load %struct.madera*, %struct.madera** %2, align 8
  %42 = getelementptr inbounds %struct.madera, %struct.madera* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 4, i32* %44, align 4
  %45 = load %struct.madera*, %struct.madera** %2, align 8
  %46 = getelementptr inbounds %struct.madera, %struct.madera* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 2, i32* %48, align 4
  br label %50

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %49, %38, %27, %24, %13, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
