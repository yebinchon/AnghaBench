; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.scif_endpt = type { i64, i32, i32 }

@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"SCIFAPI send (K): ep %p %s\0A\00", align 1
@scif_ep_states = common dso_local global i32* null, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@SCIF_SEND_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_send(i64 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scif_endpt*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.scif_endpt*
  store %struct.scif_endpt* %13, %struct.scif_endpt** %10, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0, i32 0), align 4
  %15 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %16 = load i32*, i32** @scif_ep_states, align 8
  %17 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %18 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.scif_endpt* %15, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %68

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @scif_msg_param_check(i64 %27, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %68

35:                                               ; preds = %26
  %36 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %37 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOTCONN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %68

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SCIF_SEND_BLOCK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %50 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i64, i64* %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @_scif_send(i64 %53, i8* %54, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SCIF_SEND_BLOCK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.scif_endpt*, %struct.scif_endpt** %10, align 8
  %64 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %40, %33, %25
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.scif_endpt*, i32) #1

declare dso_local i32 @scif_msg_param_check(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_scif_send(i64, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
