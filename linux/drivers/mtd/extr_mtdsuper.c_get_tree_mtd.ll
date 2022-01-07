; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdsuper.c_get_tree_mtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdsuper.c_get_tree_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i8*, i32 }
%struct.super_block = type opaque
%struct.mtd_info = type { i32 }
%struct.super_block.0 = type opaque
%struct.super_block.1 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"No source specified\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"MTDSB: dev_name \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"MTDSB: mtd:%%s, name \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"MTD: MTD device with name \22%s\22 not found\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"MTDSB: mtd%%d, mtdnr %d\0A\00", align 1
@SB_SILENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"MTD: Attempt to mount non-MTD device \22%s\22\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTD_BLOCK_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tree_mtd(%struct.fs_context* %0, i32 (%struct.super_block*, %struct.fs_context*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca i32 (%struct.super_block*, %struct.fs_context*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i8*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store i32 (%struct.super_block*, %struct.fs_context*)* %1, i32 (%struct.super_block*, %struct.fs_context*)** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %15 = call i32 @invalf(%struct.fs_context* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  br label %123

16:                                               ; preds = %2
  %17 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %18 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %22 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 109
  br i1 %27, label %28, label %107

28:                                               ; preds = %16
  %29 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %30 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 116
  br i1 %35, label %36, label %107

36:                                               ; preds = %28
  %37 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %38 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 100
  br i1 %43, label %44, label %107

44:                                               ; preds = %36
  %45 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %46 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 58
  br i1 %51, label %52, label %79

52:                                               ; preds = %44
  %53 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %54 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %59 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = call %struct.mtd_info* @get_mtd_device_nm(i8* %61)
  store %struct.mtd_info* %62, %struct.mtd_info** %7, align 8
  %63 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %64 = call i64 @IS_ERR(%struct.mtd_info* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %52
  %67 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %69 = load i32 (%struct.super_block*, %struct.fs_context*)*, i32 (%struct.super_block*, %struct.fs_context*)** %5, align 8
  %70 = bitcast i32 (%struct.super_block*, %struct.fs_context*)* %69 to i32 (%struct.super_block.0*, %struct.fs_context*)*
  %71 = call i32 @mtd_get_sb(%struct.fs_context* %67, %struct.mtd_info* %68, i32 (%struct.super_block.0*, %struct.fs_context*)* %70)
  store i32 %71, i32* %3, align 4
  br label %123

72:                                               ; preds = %52
  %73 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %74 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %75 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = call i32 (%struct.fs_context*, i8*, i8*, ...) @errorf(%struct.fs_context* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %106

79:                                               ; preds = %44
  %80 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %81 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 3
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @isdigit(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %79
  %88 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %89 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  %92 = call i32 @simple_strtoul(i8* %91, i8** %8, i32 0)
  store i32 %92, i32* %6, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32 (%struct.super_block*, %struct.fs_context*)*, i32 (%struct.super_block*, %struct.fs_context*)** %5, align 8
  %102 = bitcast i32 (%struct.super_block*, %struct.fs_context*)* %101 to i32 (%struct.super_block.1*, %struct.fs_context*)*
  %103 = call i32 @mtd_get_sb_by_nr(%struct.fs_context* %99, i32 %100, i32 (%struct.super_block.1*, %struct.fs_context*)* %102)
  store i32 %103, i32* %3, align 4
  br label %123

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %79
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %36, %28, %16
  %108 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %109 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @SB_SILENT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %107
  %115 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %116 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %117 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (%struct.fs_context*, i8*, i8*, ...) @errorf(%struct.fs_context* %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %114, %107
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %96, %66, %13
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @invalf(%struct.fs_context*, i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.mtd_info* @get_mtd_device_nm(i8*) #1

declare dso_local i64 @IS_ERR(%struct.mtd_info*) #1

declare dso_local i32 @mtd_get_sb(%struct.fs_context*, %struct.mtd_info*, i32 (%struct.super_block.0*, %struct.fs_context*)*) #1

declare dso_local i32 @errorf(%struct.fs_context*, i8*, i8*, ...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @mtd_get_sb_by_nr(%struct.fs_context*, i32, i32 (%struct.super_block.1*, %struct.fs_context*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
