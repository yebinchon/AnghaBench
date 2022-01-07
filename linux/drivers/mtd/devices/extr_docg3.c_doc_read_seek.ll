; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"doc_seek(blocks=(%d,%d), page=%d, ofs=%d, wear=%d)\0A\00", align 1
@DOC_LAYOUT_PAGE_SIZE = common dso_local global i32 0, align 4
@DOC_SEQ_SET_PLANE1 = common dso_local global i32 0, align 4
@DOC_CMD_READ_PLANE1 = common dso_local global i32 0, align 4
@DOC_SEQ_SET_PLANE2 = common dso_local global i32 0, align 4
@DOC_CMD_READ_PLANE2 = common dso_local global i32 0, align 4
@DOC_SEQ_READ = common dso_local global i32 0, align 4
@DOC_ADDR_BLOCK_SHIFT = common dso_local global i32 0, align 4
@DOC_ADDR_PAGE_MASK = common dso_local global i32 0, align 4
@DOC_CMD_PROG_BLOCK_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i32, i32, i32, i32, i32)* @doc_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_read_seek(%struct.docg3* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.docg3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @doc_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %26 = mul nsw i32 2, %25
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.docg3*, %struct.docg3** %7, align 8
  %30 = load i32, i32* @DOC_SEQ_SET_PLANE1, align 4
  %31 = call i32 @doc_flash_sequence(%struct.docg3* %29, i32 %30)
  %32 = load %struct.docg3*, %struct.docg3** %7, align 8
  %33 = load i32, i32* @DOC_CMD_READ_PLANE1, align 4
  %34 = call i32 @doc_flash_command(%struct.docg3* %32, i32 %33)
  %35 = load %struct.docg3*, %struct.docg3** %7, align 8
  %36 = call i32 @doc_delay(%struct.docg3* %35, i32 2)
  br label %46

37:                                               ; preds = %23, %6
  %38 = load %struct.docg3*, %struct.docg3** %7, align 8
  %39 = load i32, i32* @DOC_SEQ_SET_PLANE2, align 4
  %40 = call i32 @doc_flash_sequence(%struct.docg3* %38, i32 %39)
  %41 = load %struct.docg3*, %struct.docg3** %7, align 8
  %42 = load i32, i32* @DOC_CMD_READ_PLANE2, align 4
  %43 = call i32 @doc_flash_command(%struct.docg3* %41, i32 %42)
  %44 = load %struct.docg3*, %struct.docg3** %7, align 8
  %45 = call i32 @doc_delay(%struct.docg3* %44, i32 2)
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.docg3*, %struct.docg3** %7, align 8
  %48 = call i32 @doc_set_reliable_mode(%struct.docg3* %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.docg3*, %struct.docg3** %7, align 8
  %53 = call i32 @doc_set_extra_page_mode(%struct.docg3* %52)
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %90

58:                                               ; preds = %54
  %59 = load %struct.docg3*, %struct.docg3** %7, align 8
  %60 = load i32, i32* @DOC_SEQ_READ, align 4
  %61 = call i32 @doc_flash_sequence(%struct.docg3* %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @DOC_ADDR_BLOCK_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @DOC_ADDR_PAGE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = add nsw i32 %64, %67
  store i32 %68, i32* %13, align 4
  %69 = load %struct.docg3*, %struct.docg3** %7, align 8
  %70 = load i32, i32* @DOC_CMD_PROG_BLOCK_ADDR, align 4
  %71 = call i32 @doc_flash_command(%struct.docg3* %69, i32 %70)
  %72 = load %struct.docg3*, %struct.docg3** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @doc_setup_addr_sector(%struct.docg3* %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @DOC_ADDR_BLOCK_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @DOC_ADDR_PAGE_MASK, align 4
  %80 = and i32 %78, %79
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %13, align 4
  %82 = load %struct.docg3*, %struct.docg3** %7, align 8
  %83 = load i32, i32* @DOC_CMD_PROG_BLOCK_ADDR, align 4
  %84 = call i32 @doc_flash_command(%struct.docg3* %82, i32 %83)
  %85 = load %struct.docg3*, %struct.docg3** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @doc_setup_addr_sector(%struct.docg3* %85, i32 %86)
  %88 = load %struct.docg3*, %struct.docg3** %7, align 8
  %89 = call i32 @doc_delay(%struct.docg3* %88, i32 1)
  br label %90

90:                                               ; preds = %58, %57
  %91 = load i32, i32* %14, align 4
  ret i32 %91
}

declare dso_local i32 @doc_dbg(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @doc_flash_sequence(%struct.docg3*, i32) #1

declare dso_local i32 @doc_flash_command(%struct.docg3*, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_set_reliable_mode(%struct.docg3*) #1

declare dso_local i32 @doc_set_extra_page_mode(%struct.docg3*) #1

declare dso_local i32 @doc_setup_addr_sector(%struct.docg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
