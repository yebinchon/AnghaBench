; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i32 }

@avc_debug = common dso_local global i32 0, align 4
@FCP_COMMAND_REGISTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"FCP command write failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"FCP response timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*)* @avc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_write(%struct.firedtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %7 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %53, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load i32, i32* @avc_debug, align 4
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %17 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %20 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debug_fcp(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %11
  %24 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %25 = load i32, i32* @FCP_COMMAND_REGISTER, align 4
  %26 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %27 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %30 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @fdtv_write(%struct.firedtv* %24, i32 %25, i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %37 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %23
  %42 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %43 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %46 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @msecs_to_jiffies(i32 200)
  %49 = call i64 @wait_event_timeout(i32 %44, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %63

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %8

56:                                               ; preds = %8
  %57 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %58 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %56, %51, %35
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_fcp(i32, i32) #1

declare dso_local i32 @fdtv_write(%struct.firedtv*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
