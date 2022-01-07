; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_idle_chk_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_parse_idle_chk_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@s_user_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_PARSING_STRINGS = common dso_local global i64 0, align 8
@BIN_BUF_DBG_IDLE_CHK_PARSING_DATA = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_ARRAY_NOT_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"global_params\00", align 1
@DBG_STATUS_IDLE_CHK_PARSE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"idle_chk\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"num_rules\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"FW_IDLE_CHECK:\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"\0ALSI_IDLE_CHECK:\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\0AIdle Check failed!!! (with %d errors and %d warnings)\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"\0AIdle Check completed successfully (with %d warnings)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\0AIdle Check completed successfully\0A\00", align 1
@DBG_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*, i32*, i32*)* @qed_parse_idle_chk_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_parse_idle_chk_dump(i32* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %12, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %13, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_user_dbg_arrays, align 8
  %30 = load i64, i64* @BIN_BUF_DBG_PARSING_STRINGS, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %6
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_user_dbg_arrays, align 8
  %37 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_PARSING_DATA, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35, %6
  %43 = load i32, i32* @DBG_STATUS_DBG_ARRAY_NOT_SET, align 4
  store i32 %43, i32* %7, align 4
  br label %192

44:                                               ; preds = %35
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @qed_read_section_hdr(i32* %45, i8** %14, i32* %18)
  %47 = load i32*, i32** %8, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %8, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @DBG_STATUS_IDLE_CHK_PARSE_FAILED, align 4
  store i32 %54, i32* %7, align 4
  br label %192

55:                                               ; preds = %44
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @qed_print_section_params(i32* %56, i32 %57, i8* %58, i32* %20)
  %60 = load i32*, i32** %8, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %8, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @qed_read_section_hdr(i32* %63, i8** %14, i32* %18)
  %65 = load i32*, i32** %8, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %8, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71, %55
  %75 = load i32, i32* @DBG_STATUS_IDLE_CHK_PARSE_FAILED, align 4
  store i32 %75, i32* %7, align 4
  br label %192

76:                                               ; preds = %71
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @qed_read_param(i32* %77, i8** %15, i8** %16, i32* %19)
  %79 = load i32*, i32** %8, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %8, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* @DBG_STATUS_IDLE_CHK_PARSE_FAILED, align 4
  store i32 %86, i32* %7, align 4
  br label %192

87:                                               ; preds = %76
  %88 = load i32, i32* %19, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %151

90:                                               ; preds = %87
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @qed_get_buf_ptr(i8* %91, i32 %92)
  %94 = call i32 (i32, i8*, ...) @sprintf(i32 %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %20, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %90
  %103 = load i8*, i8** %10, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  br label %108

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107, %102
  %109 = phi i8* [ %106, %102 ], [ null, %107 ]
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @qed_parse_idle_chk_dump_rules(i32* %97, i32* %98, i32 %99, i32 1, i8* %109, i32* %110, i32* %111)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %21, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* @DBG_STATUS_IDLE_CHK_PARSE_FAILED, align 4
  store i32 %119, i32* %7, align 4
  br label %192

120:                                              ; preds = %108
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %20, align 4
  %123 = call i32 @qed_get_buf_ptr(i8* %121, i32 %122)
  %124 = call i32 (i32, i8*, ...) @sprintf(i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %125 = load i32, i32* %20, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %20, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* %19, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load i8*, i8** %10, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  br label %138

137:                                              ; preds = %120
  br label %138

138:                                              ; preds = %137, %132
  %139 = phi i8* [ %136, %132 ], [ null, %137 ]
  %140 = load i32*, i32** %12, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = call i32 @qed_parse_idle_chk_dump_rules(i32* %127, i32* %128, i32 %129, i32 0, i8* %139, i32* %140, i32* %141)
  store i32 %142, i32* %21, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %21, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %138
  %149 = load i32, i32* @DBG_STATUS_IDLE_CHK_PARSE_FAILED, align 4
  store i32 %149, i32* %7, align 4
  br label %192

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %87
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load i8*, i8** %10, align 8
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @qed_get_buf_ptr(i8* %156, i32 %157)
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @sprintf(i32 %158, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %162)
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %20, align 4
  br label %187

166:                                              ; preds = %151
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i8*, i8** %10, align 8
  %172 = load i32, i32* %20, align 4
  %173 = call i32 @qed_get_buf_ptr(i8* %171, i32 %172)
  %174 = load i32*, i32** %13, align 8
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i32, i8*, ...) @sprintf(i32 %173, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %20, align 4
  br label %186

179:                                              ; preds = %166
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @qed_get_buf_ptr(i8* %180, i32 %181)
  %183 = call i32 (i32, i8*, ...) @sprintf(i32 %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %20, align 4
  br label %186

186:                                              ; preds = %179, %170
  br label %187

187:                                              ; preds = %186, %155
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32*, i32** %11, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %187, %148, %118, %85, %74, %53, %42
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local i32 @qed_read_section_hdr(i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @qed_print_section_params(i32*, i32, i8*, i32*) #1

declare dso_local i32 @qed_read_param(i32*, i8**, i8**, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @qed_get_buf_ptr(i8*, i32) #1

declare dso_local i32 @qed_parse_idle_chk_dump_rules(i32*, i32*, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
