; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_rave_sp_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp = type { i32, i32, %struct.rave_sp_reply*, %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.rave_sp_reply = type { i8*, i64, i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i8)* }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Command timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rave_sp_exec(%struct.rave_sp* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rave_sp*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rave_sp_reply, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.rave_sp* %0, %struct.rave_sp** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 0
  %18 = load i8*, i8** %10, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 1
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %19, align 8
  %21 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 2
  %22 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @COMPLETION_INITIALIZER_ONSTACK(i32 %23)
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 4
  store i8* null, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %28 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %29 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %28, i32 0, i32 5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i8)*, i32 (i8)** %32, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = call i32 %33(i8 zeroext %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %101

42:                                               ; preds = %5
  %43 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %44 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %43, i32 0, i32 4
  %45 = call i8* @atomic_inc_return(i32* %44)
  store i8* %45, i8** %16, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 4
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @rave_sp_reply_code(i8* %50)
  %52 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 3
  store i32 %51, i32* %52, align 4
  %53 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %54 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %57 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %60 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %59, i32 0, i32 2
  store %struct.rave_sp_reply* %12, %struct.rave_sp_reply** %60, align 8
  %61 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %62 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %14, align 4
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %13, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 1
  %68 = load i8*, i8** %16, align 8
  %69 = ptrtoint i8* %68 to i8
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %69, i8* %71, align 1
  %72 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @rave_sp_write(%struct.rave_sp* %72, i8* %73, i64 %74)
  %76 = getelementptr inbounds %struct.rave_sp_reply, %struct.rave_sp_reply* %12, i32 0, i32 2
  %77 = load i32, i32* @HZ, align 4
  %78 = call i32 @wait_for_completion_timeout(i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %42
  %81 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %82 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %81, i32 0, i32 3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ETIMEDOUT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %15, align 4
  %88 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %89 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %88, i32 0, i32 1
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %92 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %91, i32 0, i32 2
  store %struct.rave_sp_reply* null, %struct.rave_sp_reply** %92, align 8
  %93 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %94 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  br label %96

96:                                               ; preds = %80, %42
  %97 = load %struct.rave_sp*, %struct.rave_sp** %7, align 8
  %98 = getelementptr inbounds %struct.rave_sp, %struct.rave_sp* %97, i32 0, i32 0
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %96, %40
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @COMPLETION_INITIALIZER_ONSTACK(i32) #1

declare dso_local i8* @atomic_inc_return(i32*) #1

declare dso_local i32 @rave_sp_reply_code(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rave_sp_write(%struct.rave_sp*, i8*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
