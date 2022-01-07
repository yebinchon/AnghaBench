; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_inftlmount.c_INFTL_dumpVUchains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_inftlmount.c_INFTL_dumpVUchains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.INFTLrecord = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [79 x i8] c"-----------------------------------------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"INFTL Virtual Unit Chains:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  LOGICAL %d --> %d \00", align 1
@BLOCK_NIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INFTL_dumpVUchains(%struct.INFTLrecord* %0) #0 {
  %2 = alloca %struct.INFTLrecord*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.INFTLrecord* %0, %struct.INFTLrecord** %2, align 8
  %6 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %11 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %67

14:                                               ; preds = %8
  %15 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %16 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %24 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %64

28:                                               ; preds = %14
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %59, %28
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %35 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %40 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BLOCK_NIL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %62

49:                                               ; preds = %38
  %50 = load %struct.INFTLrecord*, %struct.INFTLrecord** %2, align 8
  %51 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %32

62:                                               ; preds = %48, %32
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %27
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %8

67:                                               ; preds = %8
  %68 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
