; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_fw_asserts_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_fw_asserts_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"global_params\00", align 1
@DBG_STATUS_FW_ASSERTS_PARSE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"fw_asserts\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"storm\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"\0A%sSTORM_ASSERT: size=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i64*)* @qed_parse_fw_asserts_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_parse_fw_asserts_dump(i64* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64*, i64** %7, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = call i32 @qed_read_section_hdr(i64* %19, i8** %14, i64* %8)
  %21 = load i64*, i64** %5, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64* %23, i64** %5, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @DBG_STATUS_FW_ASSERTS_PARSE_FAILED, align 4
  store i32 %28, i32* %4, align 4
  br label %130

29:                                               ; preds = %3
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @qed_print_section_params(i64* %30, i64 %31, i8* %32, i64* %11)
  %34 = load i64*, i64** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64* %36, i64** %5, align 8
  br label %37

37:                                               ; preds = %124, %29
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %125

41:                                               ; preds = %37
  %42 = load i64*, i64** %5, align 8
  %43 = call i32 @qed_read_section_hdr(i64* %42, i8** %14, i64* %8)
  %44 = load i64*, i64** %5, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64* %46, i64** %5, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %116, label %50

50:                                               ; preds = %41
  store i8* null, i8** %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load i64*, i64** %5, align 8
  %57 = call i32 @qed_read_param(i64* %56, i8** %12, i8** %13, i64* %9)
  %58 = load i64*, i64** %5, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64* %60, i64** %5, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = load i8*, i8** %13, align 8
  store i8* %65, i8** %16, align 8
  br label %75

66:                                               ; preds = %55
  %67 = load i8*, i8** %12, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %17, align 8
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @DBG_STATUS_FW_ASSERTS_PARSE_FAILED, align 4
  store i32 %73, i32* %4, align 4
  br label %130

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %64
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %51

79:                                               ; preds = %51
  %80 = load i8*, i8** %16, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* %17, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* @DBG_STATUS_FW_ASSERTS_PARSE_FAILED, align 4
  store i32 %86, i32* %4, align 4
  br label %130

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @qed_get_buf_ptr(i8* %88, i64 %89)
  %91 = load i8*, i8** %16, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load i64, i64* %17, align 8
  %94 = call i64 (i32, i8*, i64, ...) @sprintf(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load i64, i64* %11, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %97

97:                                               ; preds = %110, %87
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %17, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @qed_get_buf_ptr(i8* %102, i64 %103)
  %105 = load i64*, i64** %5, align 8
  %106 = load i64, i64* %105, align 8
  %107 = call i64 (i32, i8*, i64, ...) @sprintf(i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64 %106)
  %108 = load i64, i64* %11, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %101
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %10, align 8
  %113 = load i64*, i64** %5, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %5, align 8
  br label %97

115:                                              ; preds = %97
  br label %124

116:                                              ; preds = %41
  %117 = load i8*, i8** %14, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  store i32 1, i32* %15, align 4
  br label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @DBG_STATUS_FW_ASSERTS_PARSE_FAILED, align 4
  store i32 %122, i32* %4, align 4
  br label %130

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %123, %115
  br label %37

125:                                              ; preds = %37
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, 1
  %128 = load i64*, i64** %7, align 8
  store i64 %127, i64* %128, align 8
  %129 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %125, %121, %85, %72, %27
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @qed_read_section_hdr(i64*, i8**, i64*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @qed_print_section_params(i64*, i64, i8*, i64*) #1

declare dso_local i32 @qed_read_param(i64*, i8**, i8**, i64*) #1

declare dso_local i64 @sprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @qed_get_buf_ptr(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
