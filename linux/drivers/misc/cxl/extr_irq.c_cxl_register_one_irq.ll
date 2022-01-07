; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_register_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_irq.c_cxl_register_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl*)*, i32 (%struct.cxl*, i32)* }
%struct.cxl = type { i32 }

@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_register_one_irq(%struct.cxl* %0, i32 %1, i8* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.cxl*)*, i32 (%struct.cxl*)** %17, align 8
  %19 = load %struct.cxl*, %struct.cxl** %8, align 8
  %20 = call i32 %18(%struct.cxl* %19)
  store i32 %20, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %47

24:                                               ; preds = %6
  %25 = load %struct.cxl*, %struct.cxl** %8, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @cxl_map_irq(%struct.cxl* %25, i32 %26, i32 %27, i8* %28, i8* %29)
  store i32 %30, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %24
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32*, i32** %12, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %7, align 4
  br label %47

38:                                               ; preds = %32
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.cxl*, i32)*, i32 (%struct.cxl*, i32)** %40, align 8
  %42 = load %struct.cxl*, %struct.cxl** %8, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 %41(%struct.cxl* %42, i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %38, %33, %22
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @cxl_map_irq(%struct.cxl*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
