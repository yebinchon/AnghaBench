; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptbase.c_mpt_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPT_MAX_PROTOCOL_DRIVERS = common dso_local global i32 0, align 4
@last_drv_idx = common dso_local global i32 0, align 4
@MptCallbacks = common dso_local global i32** null, align 8
@MptDriverClass = common dso_local global i32* null, align 8
@MptEvHandlers = common dso_local global i32** null, align 8
@MptCallbacksName = common dso_local global i32* null, align 8
@MPT_MAX_CALLBACKNAME_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_register(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @MPT_MAX_PROTOCOL_DRIVERS, align 4
  store i32 %8, i32* @last_drv_idx, align 4
  %9 = load i32, i32* @MPT_MAX_PROTOCOL_DRIVERS, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load i32**, i32*** @MptCallbacks, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = load i32**, i32*** @MptCallbacks, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* %22, i32** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** @MptDriverClass, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  %32 = load i32**, i32*** @MptEvHandlers, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* @last_drv_idx, align 4
  %37 = load i32*, i32** @MptCallbacksName, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* @MPT_MAX_CALLBACKNAME_LEN, align 8
  %44 = add nsw i64 %43, 1
  %45 = call i32 @strlcpy(i32 %41, i8* %42, i64 %44)
  br label %50

46:                                               ; preds = %14
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  br label %11

50:                                               ; preds = %21, %11
  %51 = load i32, i32* @last_drv_idx, align 4
  ret i32 %51
}

declare dso_local i32 @strlcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
