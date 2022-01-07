; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_data_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_data_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"doc_read_data_area(buf=%p, len=%d)\0A\00", align 1
@DOC_IOSPACE_DATA = common dso_local global i32 0, align 4
@DOC_READADDRESS = common dso_local global i32 0, align 4
@DOC_READADDR_ONE_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.docg3*, i8*, i32, i32)* @doc_read_data_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doc_read_data_area(%struct.docg3* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.docg3*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.docg3* %0, %struct.docg3** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @doc_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.docg3*, %struct.docg3** %5, align 8
  %28 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %29 = load i32, i32* @DOC_READADDRESS, align 4
  %30 = call i32 @doc_writew(%struct.docg3* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %13, align 8
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %50, %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.docg3*, %struct.docg3** %5, align 8
  %40 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %41 = call i32 @doc_readw(%struct.docg3* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %13, align 8
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 2
  store i32 %52, i32* %9, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %53
  %57 = load %struct.docg3*, %struct.docg3** %5, align 8
  %58 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %59 = load i32, i32* @DOC_READADDR_ONE_BYTE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DOC_READADDRESS, align 4
  %62 = call i32 @doc_writew(%struct.docg3* %57, i32 %60, i32 %61)
  %63 = load %struct.docg3*, %struct.docg3** %5, align 8
  %64 = call i32 @doc_delay(%struct.docg3* %63, i32 1)
  %65 = load i32*, i32** %13, align 8
  store i32* %65, i32** %15, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %82, %56
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load %struct.docg3*, %struct.docg3** %5, align 8
  %72 = load i32, i32* @DOC_IOSPACE_DATA, align 4
  %73 = call i32 @doc_readb(%struct.docg3* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %15, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %15, align 8
  br label %81

81:                                               ; preds = %76, %70
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %66

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %53
  ret void
}

declare dso_local i32 @doc_dbg(i8*, i8*, i32) #1

declare dso_local i32 @doc_writew(%struct.docg3*, i32, i32) #1

declare dso_local i32 @doc_readw(%struct.docg3*, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_readb(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
