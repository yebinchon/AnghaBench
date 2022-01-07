; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_do_read_secsi_onechip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_do_read_secsi_onechip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.flchip = type { i64, i32, i32, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_READY = common dso_local global i64 0, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, %struct.flchip*, i32, i64, i32*, i64)* @do_read_secsi_onechip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_read_secsi_onechip(%struct.map_info* %0, %struct.flchip* %1, i32 %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.map_info*, align 8
  %8 = alloca %struct.flchip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %7, align 8
  store %struct.flchip* %1, %struct.flchip** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %25, %6
  %17 = load %struct.flchip*, %struct.flchip** %8, align 8
  %18 = getelementptr inbounds %struct.flchip, %struct.flchip* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.flchip*, %struct.flchip** %8, align 8
  %21 = getelementptr inbounds %struct.flchip, %struct.flchip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FL_READY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %27 = call i32 @set_current_state(i32 %26)
  %28 = load %struct.flchip*, %struct.flchip** %8, align 8
  %29 = getelementptr inbounds %struct.flchip, %struct.flchip* %28, i32 0, i32 2
  %30 = call i32 @add_wait_queue(i32* %29, i32* @wait)
  %31 = load %struct.flchip*, %struct.flchip** %8, align 8
  %32 = getelementptr inbounds %struct.flchip, %struct.flchip* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = call i32 (...) @schedule()
  %35 = load %struct.flchip*, %struct.flchip** %8, align 8
  %36 = getelementptr inbounds %struct.flchip, %struct.flchip* %35, i32 0, i32 2
  %37 = call i32 @remove_wait_queue(i32* %36, i32* @wait)
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.flchip*, %struct.flchip** %8, align 8
  %40 = getelementptr inbounds %struct.flchip, %struct.flchip* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* @FL_READY, align 8
  %47 = load %struct.flchip*, %struct.flchip** %8, align 8
  %48 = getelementptr inbounds %struct.flchip, %struct.flchip* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.map_info*, %struct.map_info** %7, align 8
  %50 = load %struct.flchip*, %struct.flchip** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @otp_enter(%struct.map_info* %49, %struct.flchip* %50, i32 %51, i64 %52)
  %54 = load %struct.map_info*, %struct.map_info** %7, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @map_copy_from(%struct.map_info* %54, i32* %55, i32 %56, i64 %57)
  %59 = load %struct.map_info*, %struct.map_info** %7, align 8
  %60 = load %struct.flchip*, %struct.flchip** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @otp_exit(%struct.map_info* %59, %struct.flchip* %60, i32 %61, i64 %62)
  %64 = load %struct.flchip*, %struct.flchip** %8, align 8
  %65 = getelementptr inbounds %struct.flchip, %struct.flchip* %64, i32 0, i32 2
  %66 = call i32 @wake_up(i32* %65)
  %67 = load %struct.flchip*, %struct.flchip** %8, align 8
  %68 = getelementptr inbounds %struct.flchip, %struct.flchip* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  ret i32 0
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @otp_enter(%struct.map_info*, %struct.flchip*, i32, i64) #1

declare dso_local i32 @map_copy_from(%struct.map_info*, i32*, i32, i64) #1

declare dso_local i32 @otp_exit(%struct.map_info*, %struct.flchip*, i32, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
