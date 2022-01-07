; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fza_private = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: resetting the board...\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: RESET timed out!, state %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FZA_STATE_UNINITIALIZED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: RESET failed!, state %x, failure ID %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s: OK\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: RESET: %lums elapsed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fza_private*)* @fza_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fza_reset(%struct.fza_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fza_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fza_private* %0, %struct.fza_private** %3, align 8
  %8 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %9 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %13 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %12, i32 0, i32 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %17 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %19 = call i32 @fza_do_reset(%struct.fza_private* %18)
  %20 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %21 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %20, i32 0, i32 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %25 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %28 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 45, %30
  %32 = call i64 @wait_event_timeout(i32 %26, i64 %29, i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %34 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i64 @readw_u(i32* %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @FZA_STATUS_GET_STATE(i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %41 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %1
  %45 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %46 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %85

52:                                               ; preds = %1
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @FZA_STATE_UNINITIALIZED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %58 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @FZA_STATUS_GET_TEST(i64 %61)
  %63 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %59, i64 %60, i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %85

66:                                               ; preds = %52
  %67 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %68 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %72 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @HZ, align 4
  %75 = mul nsw i32 45, %74
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %7, align 8
  %78 = sub nsw i64 %76, %77
  %79 = mul nsw i64 %78, 1000
  %80 = load i32, i32* @HZ, align 4
  %81 = sext i32 %80 to i64
  %82 = sdiv i64 %79, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %66, %56, %44
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fza_do_reset(%struct.fza_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i64 @readw_u(i32*) #1

declare dso_local i64 @FZA_STATUS_GET_STATE(i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64, ...) #1

declare dso_local i32 @FZA_STATUS_GET_TEST(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
