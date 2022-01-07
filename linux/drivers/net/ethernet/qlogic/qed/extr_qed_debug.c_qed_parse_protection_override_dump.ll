; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_protection_override_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_protection_override_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protection_override_element = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"global_params\00", align 1
@DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"protection_override_data\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@PROTECTION_OVERRIDE_ELEMENT_DWORDS = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_ELEMENT_ADDRESS = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_ELEMENT_ADDR_FACTOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [115 x i8] c"window %2d, address: 0x%07x, size: %7d regs, read: %d, write: %d, read protection: %-12s, write protection: %-12s\0A\00", align 1
@PROTECTION_OVERRIDE_ELEMENT_WINDOW_SIZE = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_ELEMENT_READ = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_ELEMENT_WRITE = common dso_local global i32 0, align 4
@s_protection_strs = common dso_local global i8** null, align 8
@PROTECTION_OVERRIDE_ELEMENT_READ_PROTECTION = common dso_local global i32 0, align 4
@PROTECTION_OVERRIDE_ELEMENT_WRITE_PROTECTION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"protection override contained %d elements\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @qed_parse_protection_override_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_parse_protection_override_dump(i32* %0, i8* %1, i32* %2) #0 {
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
  %14 = alloca %struct.protection_override_element*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %15, align 4
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
  %27 = load i32, i32* @DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA, align 4
  store i32 %27, i32* %4, align 4
  br label %158

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @qed_print_section_params(i32* %29, i32 %30, i8* %31, i32* %15)
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
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* @DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA, align 4
  store i32 %45, i32* %4, align 4
  br label %158

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
  %56 = load i32, i32* @DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA, align 4
  store i32 %56, i32* %4, align 4
  br label %158

57:                                               ; preds = %46
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_DWORDS, align 4
  %60 = srem i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @DBG_STATUS_PROTECTION_OVERRIDE_BAD_DATA, align 4
  store i32 %63, i32* %4, align 4
  br label %158

64:                                               ; preds = %57
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_DWORDS, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = bitcast i32* %68 to %struct.protection_override_element*
  store %struct.protection_override_element* %69, %struct.protection_override_element** %14, align 8
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %143, %64
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %146

74:                                               ; preds = %70
  %75 = load %struct.protection_override_element*, %struct.protection_override_element** %14, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %75, i64 %77
  %79 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_ADDRESS, align 4
  %82 = call i64 @GET_FIELD(i32 %80, i32 %81)
  %83 = load i64, i64* @PROTECTION_OVERRIDE_ELEMENT_ADDR_FACTOR, align 8
  %84 = mul i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %17, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @qed_get_buf_ptr(i8* %86, i32 %87)
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load %struct.protection_override_element*, %struct.protection_override_element** %14, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %91, i64 %93
  %95 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_WINDOW_SIZE, align 4
  %98 = call i64 @GET_FIELD(i32 %96, i32 %97)
  %99 = trunc i64 %98 to i32
  %100 = load %struct.protection_override_element*, %struct.protection_override_element** %14, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %100, i64 %102
  %104 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_READ, align 4
  %107 = call i64 @GET_FIELD(i32 %105, i32 %106)
  %108 = trunc i64 %107 to i32
  %109 = load %struct.protection_override_element*, %struct.protection_override_element** %14, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %109, i64 %111
  %113 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_WRITE, align 4
  %116 = call i64 @GET_FIELD(i32 %114, i32 %115)
  %117 = trunc i64 %116 to i32
  %118 = load i8**, i8*** @s_protection_strs, align 8
  %119 = load %struct.protection_override_element*, %struct.protection_override_element** %14, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %119, i64 %121
  %123 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_READ_PROTECTION, align 4
  %126 = call i64 @GET_FIELD(i32 %124, i32 %125)
  %127 = getelementptr inbounds i8*, i8** %118, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i8**, i8*** @s_protection_strs, align 8
  %130 = load %struct.protection_override_element*, %struct.protection_override_element** %14, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %130, i64 %132
  %134 = getelementptr inbounds %struct.protection_override_element, %struct.protection_override_element* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @PROTECTION_OVERRIDE_ELEMENT_WRITE_PROTECTION, align 4
  %137 = call i64 @GET_FIELD(i32 %135, i32 %136)
  %138 = getelementptr inbounds i8*, i8** %129, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %88, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90, i32 %99, i32 %108, i32 %117, i8* %128, i8* %139)
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %74
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %70

146:                                              ; preds = %70
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @qed_get_buf_ptr(i8* %147, i32 %148)
  %150 = load i32, i32* %13, align 4
  %151 = call i32 (i32, i8*, i32, ...) @sprintf(i32 %149, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %146, %62, %55, %44, %26
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @qed_read_section_hdr(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @qed_print_section_params(i32*, i32, i8*, i32*) #1

declare dso_local i32 @qed_read_param(i32*, i8**, i8**, i32*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @qed_get_buf_ptr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
