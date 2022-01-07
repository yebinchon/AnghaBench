; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_page_getbytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_page_getbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i32, i32*, i32, i32)* @doc_read_page_getbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_read_page_getbytes(%struct.docg3* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.docg3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load %struct.docg3*, %struct.docg3** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @doc_read_data_area(%struct.docg3* %17, i32* %18, i32 1, i32 %19)
  %21 = load %struct.docg3*, %struct.docg3** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  br label %29

27:                                               ; preds = %16
  %28 = load i32*, i32** %8, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32* [ %26, %24 ], [ %28, %27 ]
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @doc_read_data_area(%struct.docg3* %21, i32* %30, i32 %32, i32 0)
  br label %40

34:                                               ; preds = %13, %5
  %35 = load %struct.docg3*, %struct.docg3** %6, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @doc_read_data_area(%struct.docg3* %35, i32* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.docg3*, %struct.docg3** %6, align 8
  %42 = call i32 @doc_delay(%struct.docg3* %41, i32 2)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @doc_read_data_area(%struct.docg3*, i32*, i32, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
