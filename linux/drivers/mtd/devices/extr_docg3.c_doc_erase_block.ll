; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_erase_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"doc_erase_block(blocks=(%d,%d))\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DOC_SEQ_ERASE = common dso_local global i32 0, align 4
@DOC_ADDR_BLOCK_SHIFT = common dso_local global i32 0, align 4
@DOC_CMD_PROG_BLOCK_ADDR = common dso_local global i32 0, align 4
@DOC_CMD_ERASECYCLE2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Erase blocks %d,%d error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*, i32, i32)* @doc_erase_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_erase_block(%struct.docg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.docg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.docg3* %0, %struct.docg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @doc_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.docg3*, %struct.docg3** %5, align 8
  %14 = call i32 @doc_reset_seq(%struct.docg3* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load %struct.docg3*, %struct.docg3** %5, align 8
  %22 = call i32 @doc_set_reliable_mode(%struct.docg3* %21)
  %23 = load %struct.docg3*, %struct.docg3** %5, align 8
  %24 = load i32, i32* @DOC_SEQ_ERASE, align 4
  %25 = call i32 @doc_flash_sequence(%struct.docg3* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DOC_ADDR_BLOCK_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.docg3*, %struct.docg3** %5, align 8
  %30 = load i32, i32* @DOC_CMD_PROG_BLOCK_ADDR, align 4
  %31 = call i32 @doc_flash_command(%struct.docg3* %29, i32 %30)
  %32 = load %struct.docg3*, %struct.docg3** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @doc_setup_addr_sector(%struct.docg3* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @DOC_ADDR_BLOCK_SHIFT, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.docg3*, %struct.docg3** %5, align 8
  %39 = load i32, i32* @DOC_CMD_PROG_BLOCK_ADDR, align 4
  %40 = call i32 @doc_flash_command(%struct.docg3* %38, i32 %39)
  %41 = load %struct.docg3*, %struct.docg3** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @doc_setup_addr_sector(%struct.docg3* %41, i32 %42)
  %44 = load %struct.docg3*, %struct.docg3** %5, align 8
  %45 = call i32 @doc_delay(%struct.docg3* %44, i32 1)
  %46 = load %struct.docg3*, %struct.docg3** %5, align 8
  %47 = load i32, i32* @DOC_CMD_ERASECYCLE2, align 4
  %48 = call i32 @doc_flash_command(%struct.docg3* %46, i32 %47)
  %49 = load %struct.docg3*, %struct.docg3** %5, align 8
  %50 = call i32 @doc_delay(%struct.docg3* %49, i32 2)
  %51 = load %struct.docg3*, %struct.docg3** %5, align 8
  %52 = call i64 @is_prot_seq_error(%struct.docg3* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %20
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @doc_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %20
  %61 = load %struct.docg3*, %struct.docg3** %5, align 8
  %62 = call i32 @doc_write_erase_wait_status(%struct.docg3* %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %54, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @doc_dbg(i8*, i32, i32) #1

declare dso_local i32 @doc_reset_seq(%struct.docg3*) #1

declare dso_local i32 @doc_set_reliable_mode(%struct.docg3*) #1

declare dso_local i32 @doc_flash_sequence(%struct.docg3*, i32) #1

declare dso_local i32 @doc_flash_command(%struct.docg3*, i32) #1

declare dso_local i32 @doc_setup_addr_sector(%struct.docg3*, i32) #1

declare dso_local i32 @doc_delay(%struct.docg3*, i32) #1

declare dso_local i64 @is_prot_seq_error(%struct.docg3*) #1

declare dso_local i32 @doc_err(i8*, i32, i32) #1

declare dso_local i32 @doc_write_erase_wait_status(%struct.docg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
