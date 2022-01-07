; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_data_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_data_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"doc_write_data_area(buf=%p, len=%d)\0A\00", align 1
@DOC_IOSPACE_DATA = common dso_local global i32 0, align 4
@DOC_READADDRESS = common dso_local global i32 0, align 4
@DOC_READADDR_ONE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.docg3*, i8*, i32)* @doc_write_data_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doc_write_data_area(%struct.docg3* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.docg3*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.docg3* %0, %struct.docg3** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @doc_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 3
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.docg3*, %struct.docg3** %4, align 8
  %21 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %22 = load i32, i32* @DOC_READADDRESS, align 4
  %23 = call i32 @doc_writew(%struct.docg3* %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %38, %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.docg3*, %struct.docg3** %4, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %35 = call i32 @doc_writew(%struct.docg3* %31, i32 %33, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %10, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %7, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load i32*, i32** %10, align 8
  store i32* %42, i32** %11, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %61, %41
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.docg3*, %struct.docg3** %4, align 8
  %49 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %50 = load i32, i32* @DOC_READADDR_ONE_BYTE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @DOC_READADDRESS, align 4
  %53 = call i32 @doc_writew(%struct.docg3* %48, i32 %51, i32 %52)
  %54 = load %struct.docg3*, %struct.docg3** %4, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %58 = call i32 @doc_writeb(%struct.docg3* %54, i32 %56, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %11, align 8
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %43

64:                                               ; preds = %43
  ret void
}

declare dso_local i32 @doc_dbg(i8*, i8*, i32) #1

declare dso_local i32 @doc_writew(%struct.docg3*, i32, i32) #1

declare dso_local i32 @doc_writeb(%struct.docg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
