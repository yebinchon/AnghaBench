; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_bugs.c_lkdtm_CORRUPT_LIST_ADD.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_bugs.c_lkdtm_CORRUPT_LIST_ADD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.lkdtm_list = type { i32 }

@test_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"attempting good list addition\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"attempting corrupted list addition\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Overwrite did not happen, but no BUG?!\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"list_add() corruption not detected!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_CORRUPT_LIST_ADD() #0 {
  %1 = alloca %struct.lkdtm_list, align 4
  %2 = alloca %struct.lkdtm_list, align 4
  %3 = alloca [2 x i8*], align 16
  %4 = alloca i8*, align 8
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test_head, i32 0, i32 0), align 8
  %6 = call i32 @LIST_HEAD(i8* %5)
  %7 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = bitcast [2 x i8*]* %3 to i8*
  store i8* %8, i8** %4, align 8
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.lkdtm_list, %struct.lkdtm_list* %1, i32 0, i32 0
  %11 = call i32 @list_add(i32* %10, %struct.TYPE_4__* @test_head)
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test_head, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.lkdtm_list, %struct.lkdtm_list* %2, i32 0, i32 0
  %15 = call i32 @list_add(i32* %14, %struct.TYPE_4__* @test_head)
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %17 = load i8*, i8** %16, align 16
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %0
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %27

25:                                               ; preds = %19, %0
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  ret void
}

declare dso_local i32 @LIST_HEAD(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @list_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
