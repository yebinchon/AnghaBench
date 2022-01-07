; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_igu_fifo_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_igu_fifo_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igu_fifo_element = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"global_params\00", align 1
@DBG_STATUS_IGU_FIFO_BAD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"igu_fifo_data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@IGU_FIFO_ELEMENT_DWORDS = common dso_local global i32 0, align 4
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"fifo contained %d elements\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @qed_parse_igu_fifo_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_parse_igu_fifo_dump(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.igu_fifo_element*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @qed_read_section_hdr(i32* %18, i8** %8, i32* %12)
  %20 = load i32*, i32** %5, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %5, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @DBG_STATUS_IGU_FIFO_BAD_DATA, align 4
  store i32 %27, i32* %4, align 4
  br label %102

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @qed_print_section_params(i32* %29, i32 %30, i8* %31, i32* %16)
  %33 = load i32*, i32** %5, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %5, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @qed_read_section_hdr(i32* %36, i8** %8, i32* %12)
  %38 = load i32*, i32** %5, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %5, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @DBG_STATUS_IGU_FIFO_BAD_DATA, align 4
  store i32 %45, i32* %4, align 4
  br label %102

46:                                               ; preds = %28
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @qed_read_param(i32* %47, i8** %9, i8** %10, i32* %11)
  %49 = load i32*, i32** %5, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %5, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @DBG_STATUS_IGU_FIFO_BAD_DATA, align 4
  store i32 %56, i32* %4, align 4
  br label %102

57:                                               ; preds = %46
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @IGU_FIFO_ELEMENT_DWORDS, align 4
  %60 = srem i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @DBG_STATUS_IGU_FIFO_BAD_DATA, align 4
  store i32 %63, i32* %4, align 4
  br label %102

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @IGU_FIFO_ELEMENT_DWORDS, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = bitcast i32* %68 to %struct.igu_fifo_element*
  store %struct.igu_fifo_element* %69, %struct.igu_fifo_element** %14, align 8
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %87, %64
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.igu_fifo_element*, %struct.igu_fifo_element** %14, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.igu_fifo_element, %struct.igu_fifo_element* %75, i64 %77
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @qed_parse_igu_fifo_element(%struct.igu_fifo_element* %78, i8* %79, i32* %16)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @DBG_STATUS_OK, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %4, align 4
  br label %102

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %70

90:                                               ; preds = %70
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @qed_get_buf_ptr(i8* %91, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @sprintf(i32 %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %90, %84, %62, %55, %44, %26
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @qed_read_section_hdr(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @qed_print_section_params(i32*, i32, i8*, i32*) #1

declare dso_local i32 @qed_read_param(i32*, i8**, i8**, i32*) #1

declare dso_local i32 @qed_parse_igu_fifo_element(%struct.igu_fifo_element*, i8*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @qed_get_buf_ptr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
