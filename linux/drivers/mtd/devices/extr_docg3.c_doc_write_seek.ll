; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_write_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"doc_write_seek(blocks=(%d,%d), page=%d, ofs=%d)\0A\00", align 1
@DOC_LAYOUT_PAGE_SIZE = common dso_local global i32 0, align 4
@DOC_SEQ_SET_PLANE1 = common dso_local global i32 0, align 4
@DOC_CMD_READ_PLANE1 = common dso_local global i32 0, align 4
@DOC_SEQ_SET_PLANE2 = common dso_local global i32 0, align 4
@DOC_CMD_READ_PLANE2 = common dso_local global i32 0, align 4
@DOC_SEQ_PAGE_SETUP = common dso_local global i32 0, align 4
@DOC_CMD_PROG_CYCLE1 = common dso_local global i32 0, align 4
@DOC_ADDR_BLOCK_SHIFT = common dso_local global i32 0, align 4
@DOC_ADDR_PAGE_MASK = common dso_local global i32 0, align 4
@DOC_CMD_PROG_CYCLE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i32, i32, i32, i32)* @doc_write_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_write_seek(%struct.docg3* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.docg3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @doc_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.docg3*, %struct.docg3** %6, align 8
  %19 = call i32 @doc_set_reliable_mode(%struct.docg3* %18)
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %22 = mul nsw i32 2, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.docg3*, %struct.docg3** %6, align 8
  %26 = load i32, i32* @DOC_SEQ_SET_PLANE1, align 4
  %27 = call i32 @doc_flash_sequence(%struct.docg3* %25, i32 %26)
  %28 = load %struct.docg3*, %struct.docg3** %6, align 8
  %29 = load i32, i32* @DOC_CMD_READ_PLANE1, align 4
  %30 = call i32 @doc_flash_command(%struct.docg3* %28, i32 %29)
  %31 = load %struct.docg3*, %struct.docg3** %6, align 8
  %32 = call i32 @doc_delay(%struct.docg3* %31, i32 2)
  br label %42

33:                                               ; preds = %5
  %34 = load %struct.docg3*, %struct.docg3** %6, align 8
  %35 = load i32, i32* @DOC_SEQ_SET_PLANE2, align 4
  %36 = call i32 @doc_flash_sequence(%struct.docg3* %34, i32 %35)
  %37 = load %struct.docg3*, %struct.docg3** %6, align 8
  %38 = load i32, i32* @DOC_CMD_READ_PLANE2, align 4
  %39 = call i32 @doc_flash_command(%struct.docg3* %37, i32 %38)
  %40 = load %struct.docg3*, %struct.docg3** %6, align 8
  %41 = call i32 @doc_delay(%struct.docg3* %40, i32 2)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.docg3*, %struct.docg3** %6, align 8
  %44 = load i32, i32* @DOC_SEQ_PAGE_SETUP, align 4
  %45 = call i32 @doc_flash_sequence(%struct.docg3* %43, i32 %44)
  %46 = load %struct.docg3*, %struct.docg3** %6, align 8
  %47 = load i32, i32* @DOC_CMD_PROG_CYCLE1, align 4
  %48 = call i32 @doc_flash_command(%struct.docg3* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @DOC_ADDR_BLOCK_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @DOC_ADDR_PAGE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %12, align 4
  %56 = load %struct.docg3*, %struct.docg3** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @doc_setup_writeaddr_sector(%struct.docg3* %56, i32 %57, i32 %58)
  %60 = load %struct.docg3*, %struct.docg3** %6, align 8
  %61 = load i32, i32* @DOC_CMD_PROG_CYCLE3, align 4
  %62 = call i32 @doc_flash_command(%struct.docg3* %60, i32 %61)
  %63 = load %struct.docg3*, %struct.docg3** %6, align 8
  %64 = call i32 @doc_delay(%struct.docg3* %63, i32 2)
  %65 = load %struct.docg3*, %struct.docg3** %6, align 8
  %66 = call i32 @doc_wait_ready(%struct.docg3* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %42
  br label %87

70:                                               ; preds = %42
  %71 = load %struct.docg3*, %struct.docg3** %6, align 8
  %72 = load i32, i32* @DOC_CMD_PROG_CYCLE1, align 4
  %73 = call i32 @doc_flash_command(%struct.docg3* %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @DOC_ADDR_BLOCK_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @DOC_ADDR_PAGE_MASK, align 4
  %79 = and i32 %77, %78
  %80 = add nsw i32 %76, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.docg3*, %struct.docg3** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @doc_setup_writeaddr_sector(%struct.docg3* %81, i32 %82, i32 %83)
  %85 = load %struct.docg3*, %struct.docg3** %6, align 8
  %86 = call i32 @doc_delay(%struct.docg3* %85, i32 1)
  br label %87

87:                                               ; preds = %70, %69
  %88 = load i32, i32* %11, align 4
  ret i32 %88
}

declare dso_local i32 @doc_dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @doc_set_reliable_mode(%struct.docg3*) #1

declare dso_local i32 @doc_flash_sequence(%struct.docg3*, i32) #1

declare dso_local i32 @doc_flash_command(%struct.docg3*, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_setup_writeaddr_sector(%struct.docg3*, i32, i32) #1

declare dso_local i32 @doc_wait_ready(%struct.docg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
