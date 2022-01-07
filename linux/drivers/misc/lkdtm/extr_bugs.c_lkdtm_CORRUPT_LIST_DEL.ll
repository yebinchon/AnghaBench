; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_bugs.c_lkdtm_CORRUPT_LIST_DEL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_bugs.c_lkdtm_CORRUPT_LIST_DEL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lkdtm_list = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@test_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"attempting good list removal\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"attempting corrupted list removal\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Overwrite did not happen, but no BUG?!\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"list_del() corruption not detected!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_CORRUPT_LIST_DEL() #0 {
  %1 = alloca %struct.lkdtm_list, align 8
  %2 = alloca [2 x i8*], align 16
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @test_head, align 4
  %5 = call i32 @LIST_HEAD(i32 %4)
  %6 = bitcast [2 x i8*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 16, i1 false)
  %7 = bitcast [2 x i8*]* %2 to i8*
  store i8* %7, i8** %3, align 8
  %8 = getelementptr inbounds %struct.lkdtm_list, %struct.lkdtm_list* %1, i32 0, i32 0
  %9 = call i32 @list_add(%struct.TYPE_3__* %8, i32* @test_head)
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.lkdtm_list, %struct.lkdtm_list* %1, i32 0, i32 0
  %12 = call i32 @list_del(%struct.TYPE_3__* %11)
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %14 = getelementptr inbounds %struct.lkdtm_list, %struct.lkdtm_list* %1, i32 0, i32 0
  %15 = call i32 @list_add(%struct.TYPE_3__* %14, i32* @test_head)
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds %struct.lkdtm_list, %struct.lkdtm_list* %1, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds %struct.lkdtm_list, %struct.lkdtm_list* %1, i32 0, i32 0
  %20 = call i32 @list_del(%struct.TYPE_3__* %19)
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  %22 = load i8*, i8** %21, align 16
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %0
  %25 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %32

30:                                               ; preds = %24, %0
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @list_add(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
