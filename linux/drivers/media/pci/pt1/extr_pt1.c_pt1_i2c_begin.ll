; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1*, i32*)* @pt1_i2c_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_i2c_begin(%struct.pt1* %0, i32* %1) #0 {
  %3 = alloca %struct.pt1*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pt1*, %struct.pt1** %3, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @pt1_i2c_emit(%struct.pt1* %6, i32 %7, i32 0, i32 0, i32 1, i32 1, i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load %struct.pt1*, %struct.pt1** %3, align 8
  %13 = getelementptr inbounds %struct.pt1, %struct.pt1* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %2
  %17 = load %struct.pt1*, %struct.pt1** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @pt1_i2c_emit(%struct.pt1* %17, i32 %18, i32 1, i32 0, i32 1, i32 1, i32 %20)
  %22 = load %struct.pt1*, %struct.pt1** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i32 @pt1_i2c_emit(%struct.pt1* %22, i32 %24, i32 1, i32 0, i32 1, i32 0, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 2
  store i32 %29, i32* %5, align 4
  %30 = load %struct.pt1*, %struct.pt1** %3, align 8
  %31 = getelementptr inbounds %struct.pt1, %struct.pt1* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %16, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  ret void
}

declare dso_local i32 @pt1_i2c_emit(%struct.pt1*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
