; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_bpf_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_bpf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i64, %struct.ir_raw_event_ctrl* }
%struct.ir_raw_event_ctrl = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.bpf_prog_array = type { i32 }

@RC_DRIVER_IR_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ir_raw_handler_lock = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BPF_MAX_PROGS = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.bpf_prog*)* @lirc_bpf_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lirc_bpf_attach(%struct.rc_dev* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_prog_array*, align 8
  %7 = alloca %struct.bpf_prog_array*, align 8
  %8 = alloca %struct.ir_raw_event_ctrl*, align 8
  %9 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %10 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RC_DRIVER_IR_RAW, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %66

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock_interruptible(i32* @ir_raw_handler_lock)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %66

24:                                               ; preds = %18
  %25 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 1
  %27 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %26, align 8
  store %struct.ir_raw_event_ctrl* %27, %struct.ir_raw_event_ctrl** %8, align 8
  %28 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %8, align 8
  %29 = icmp ne %struct.ir_raw_event_ctrl* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %63

33:                                               ; preds = %24
  %34 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %8, align 8
  %35 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.bpf_prog_array* @lirc_rcu_dereference(i32 %36)
  store %struct.bpf_prog_array* %37, %struct.bpf_prog_array** %6, align 8
  %38 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %39 = icmp ne %struct.bpf_prog_array* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %42 = call i64 @bpf_prog_array_length(%struct.bpf_prog_array* %41)
  %43 = load i64, i64* @BPF_MAX_PROGS, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @E2BIG, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %63

48:                                               ; preds = %40, %33
  %49 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %50 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %51 = call i32 @bpf_prog_array_copy(%struct.bpf_prog_array* %49, i32* null, %struct.bpf_prog* %50, %struct.bpf_prog_array** %7)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %63

55:                                               ; preds = %48
  %56 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %8, align 8
  %57 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %7, align 8
  %60 = call i32 @rcu_assign_pointer(i32 %58, %struct.bpf_prog_array* %59)
  %61 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %6, align 8
  %62 = call i32 @bpf_prog_array_free(%struct.bpf_prog_array* %61)
  br label %63

63:                                               ; preds = %55, %54, %45, %30
  %64 = call i32 @mutex_unlock(i32* @ir_raw_handler_lock)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %22, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.bpf_prog_array* @lirc_rcu_dereference(i32) #1

declare dso_local i64 @bpf_prog_array_length(%struct.bpf_prog_array*) #1

declare dso_local i32 @bpf_prog_array_copy(%struct.bpf_prog_array*, i32*, %struct.bpf_prog*, %struct.bpf_prog_array**) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bpf_prog_array*) #1

declare dso_local i32 @bpf_prog_array_free(%struct.bpf_prog_array*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
