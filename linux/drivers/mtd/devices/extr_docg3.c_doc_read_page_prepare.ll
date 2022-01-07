; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_page_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_read_page_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"doc_read_page_prepare(blocks=(%d,%d), page=%d, ofsInPage=%d)\0A\00", align 1
@DOC_LAYOUT_WEAR_OFFSET = common dso_local global i32 0, align 4
@DOC_LAYOUT_PAGE_OOB_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DOC_CMD_READ_ALL_PLANES = common dso_local global i32 0, align 4
@DOC_CMD_SET_ADDR_READ = common dso_local global i32 0, align 4
@DOC_LAYOUT_PAGE_SIZE = common dso_local global i32 0, align 4
@DOC_CMD_READ_FLASH = common dso_local global i32 0, align 4
@DOC_DATAEND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i32, i32, i32, i32)* @doc_read_page_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_read_page_prepare(%struct.docg3* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.docg3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @doc_dbg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @DOC_LAYOUT_WEAR_OFFSET, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  br label %23

23:                                               ; preds = %22, %5
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @DOC_LAYOUT_PAGE_OOB_SIZE, align 4
  %29 = mul nsw i32 %28, 2
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %98

34:                                               ; preds = %26, %23
  %35 = load %struct.docg3*, %struct.docg3** %7, align 8
  %36 = load %struct.docg3*, %struct.docg3** %7, align 8
  %37 = getelementptr inbounds %struct.docg3, %struct.docg3* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @doc_set_device_id(%struct.docg3* %35, i32 %38)
  %40 = load %struct.docg3*, %struct.docg3** %7, align 8
  %41 = call i32 @doc_reset_seq(%struct.docg3* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %90

45:                                               ; preds = %34
  %46 = load %struct.docg3*, %struct.docg3** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @doc_read_seek(%struct.docg3* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %90

56:                                               ; preds = %45
  %57 = load %struct.docg3*, %struct.docg3** %7, align 8
  %58 = load i32, i32* @DOC_CMD_READ_ALL_PLANES, align 4
  %59 = call i32 @doc_flash_command(%struct.docg3* %57, i32 %58)
  %60 = load %struct.docg3*, %struct.docg3** %7, align 8
  %61 = call i32 @doc_delay(%struct.docg3* %60, i32 2)
  %62 = load %struct.docg3*, %struct.docg3** %7, align 8
  %63 = call i32 @doc_wait_ready(%struct.docg3* %62)
  %64 = load %struct.docg3*, %struct.docg3** %7, align 8
  %65 = load i32, i32* @DOC_CMD_SET_ADDR_READ, align 4
  %66 = call i32 @doc_flash_command(%struct.docg3* %64, i32 %65)
  %67 = load %struct.docg3*, %struct.docg3** %7, align 8
  %68 = call i32 @doc_delay(%struct.docg3* %67, i32 1)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %71 = mul nsw i32 %70, 2
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %56
  %74 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %75 = mul nsw i32 2, %74
  %76 = load i32, i32* %11, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %73, %56
  %79 = load %struct.docg3*, %struct.docg3** %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = ashr i32 %80, 2
  %82 = call i32 @doc_flash_address(%struct.docg3* %79, i32 %81)
  %83 = load %struct.docg3*, %struct.docg3** %7, align 8
  %84 = call i32 @doc_delay(%struct.docg3* %83, i32 1)
  %85 = load %struct.docg3*, %struct.docg3** %7, align 8
  %86 = call i32 @doc_wait_ready(%struct.docg3* %85)
  %87 = load %struct.docg3*, %struct.docg3** %7, align 8
  %88 = load i32, i32* @DOC_CMD_READ_FLASH, align 4
  %89 = call i32 @doc_flash_command(%struct.docg3* %87, i32 %88)
  store i32 0, i32* %6, align 4
  br label %98

90:                                               ; preds = %55, %44
  %91 = load %struct.docg3*, %struct.docg3** %7, align 8
  %92 = load i32, i32* @DOC_DATAEND, align 4
  %93 = call i32 @doc_writeb(%struct.docg3* %91, i32 0, i32 %92)
  %94 = load %struct.docg3*, %struct.docg3** %7, align 8
  %95 = call i32 @doc_delay(%struct.docg3* %94, i32 2)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %90, %78, %31
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @doc_dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @doc_set_device_id(%struct.docg3*, i32) #1

declare dso_local i32 @doc_reset_seq(%struct.docg3*) #1

declare dso_local i32 @doc_read_seek(%struct.docg3*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @doc_flash_command(%struct.docg3*, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i32 @doc_wait_ready(%struct.docg3*) #1

declare dso_local i32 @doc_flash_address(%struct.docg3*, i32) #1

declare dso_local i32 @doc_writeb(%struct.docg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
