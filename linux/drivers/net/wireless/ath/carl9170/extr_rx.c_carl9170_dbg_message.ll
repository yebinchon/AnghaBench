; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_dbg_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_dbg_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CARL9170_RR_NO_REASON = common dso_local global i32 0, align 4
@CARL9170_ERR_MAGIC = common dso_local global i32 0, align 4
@CARL9170_RR_TOO_MANY_FIRMWARE_ERRORS = common dso_local global i32 0, align 4
@CARL9170_BUG_MAGIC = common dso_local global i32 0, align 4
@CARL9170_RR_FATAL_FIRMWARE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"FW: %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i8*, i32)* @carl9170_dbg_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_dbg_message(%struct.ar9170* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @CARL9170_RR_NO_REASON, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %44

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @CARL9170_ERR_MAGIC, align 4
  %15 = call i64 @memcmp(i8* %13, i32 %14, i32 3)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %19 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %24 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  %29 = load i32, i32* @CARL9170_RR_TOO_MANY_FIRMWARE_ERRORS, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %17
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @CARL9170_BUG_MAGIC, align 4
  %34 = call i64 @memcmp(i8* %32, i32 %33, i32 3)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %38 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  store i32 1, i32* %7, align 4
  %42 = load i32, i32* @CARL9170_RR_FATAL_FIRMWARE_ERROR, align 4
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %36, %31
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @wiphy_info(i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @carl9170_restart(%struct.ar9170* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %44
  ret void
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @wiphy_info(i32, i8*, i32, i8*) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
