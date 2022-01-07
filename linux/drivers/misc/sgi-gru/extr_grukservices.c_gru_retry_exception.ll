; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_retry_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_retry_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_control_block_status = type { i32 }
%struct.control_block_extended_exc_detail = type { i32, i32 }

@EXCEPTION_RETRY_LIMIT = common dso_local global i32 0, align 4
@CBS_IDLE = common dso_local global i64 0, align 8
@CBS_EXCEPTION = common dso_local global i32 0, align 4
@EXCEPTION_RETRY_BITS = common dso_local global i32 0, align 4
@CBR_EXS_ABORT_OCC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gru_retry_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_retry_exception(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gru_control_block_status*, align 8
  %5 = alloca %struct.control_block_extended_exc_detail, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.gru_control_block_status*
  store %struct.gru_control_block_status* %8, %struct.gru_control_block_status** %4, align 8
  %9 = load i32, i32* @EXCEPTION_RETRY_LIMIT, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %1, %45
  %11 = load %struct.gru_control_block_status*, %struct.gru_control_block_status** %4, align 8
  %12 = call i64 @gru_wait_idle_or_exception(%struct.gru_control_block_status* %11)
  %13 = load i64, i64* @CBS_IDLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i64, i64* @CBS_IDLE, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %52

18:                                               ; preds = %10
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @gru_get_cb_message_queue_substatus(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @CBS_EXCEPTION, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @gru_get_cb_exception_detail(i8* %25, %struct.control_block_extended_exc_detail* %5)
  %27 = getelementptr inbounds %struct.control_block_extended_exc_detail, %struct.control_block_extended_exc_detail* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EXCEPTION_RETRY_BITS, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.control_block_extended_exc_detail, %struct.control_block_extended_exc_detail* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CBR_EXS_ABORT_OCC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %24
  br label %50

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %50

45:                                               ; preds = %40
  %46 = load %struct.gru_control_block_status*, %struct.gru_control_block_status** %4, align 8
  %47 = getelementptr inbounds %struct.gru_control_block_status, %struct.gru_control_block_status* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.gru_control_block_status*, %struct.gru_control_block_status** %4, align 8
  %49 = call i32 @gru_flush_cache(%struct.gru_control_block_status* %48)
  br label %10

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @CBS_EXCEPTION, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %22, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @gru_wait_idle_or_exception(%struct.gru_control_block_status*) #1

declare dso_local i64 @gru_get_cb_message_queue_substatus(i8*) #1

declare dso_local i32 @gru_get_cb_exception_detail(i8*, %struct.control_block_extended_exc_detail*) #1

declare dso_local i32 @gru_flush_cache(%struct.gru_control_block_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
