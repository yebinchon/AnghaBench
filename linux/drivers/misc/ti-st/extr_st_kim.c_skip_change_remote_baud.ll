; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_skip_change_remote_baud.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_skip_change_remote_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bts_action = type { i64, i64 }

@ACTION_WAIT_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"invalid action after change remote baud command\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"skipping the wait event of change remote baud\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64*)* @skip_change_remote_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_change_remote_baud(i8** %0, i64* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 16
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.bts_action*
  %13 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8, i8* %10, i64 %14
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.bts_action*
  %18 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACTION_WAIT_EVENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %44

24:                                               ; preds = %2
  %25 = load i8**, i8*** %3, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 16
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.bts_action*
  %30 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i8**, i8*** %3, align 8
  store i8* %32, i8** %33, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to %struct.bts_action*
  %38 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 16, %39
  %41 = sub i64 %35, %40
  %42 = load i64*, i64** %4, align 8
  store i64 %41, i64* %42, align 8
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %24, %22
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
