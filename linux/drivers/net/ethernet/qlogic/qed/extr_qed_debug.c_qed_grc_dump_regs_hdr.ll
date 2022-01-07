; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_regs_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_regs_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"grc_regs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@s_split_type_defs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i8*, i8*)* @qed_grc_dump_regs_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_grc_dump_regs_hdr(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = add nsw i32 2, %21
  %23 = load i8*, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @qed_dump_section_hdr(i32* %31, i32 %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @qed_dump_num_param(i32* %40, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %16, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_split_type_defs, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @qed_dump_str_param(i32* %49, i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %7
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @qed_dump_num_param(i32* %67, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %63, %7
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i8*, i8** %14, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 @qed_dump_str_param(i32* %83, i32 %84, i8* %85, i8* %86)
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %79, %76, %73
  %91 = load i32, i32* %16, align 4
  ret i32 %91
}

declare dso_local i32 @qed_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_dump_str_param(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
