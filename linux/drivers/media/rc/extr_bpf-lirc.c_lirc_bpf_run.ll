; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_bpf_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_bpf_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ir_raw_event_ctrl* }
%struct.ir_raw_event_ctrl = type { i32, i64 }

@BPF_PROG_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lirc_bpf_run(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event_ctrl*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 0
  %8 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %7, align 8
  store %struct.ir_raw_event_ctrl* %8, %struct.ir_raw_event_ctrl** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %5, align 8
  %18 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ir_raw_event_ctrl*, %struct.ir_raw_event_ctrl** %5, align 8
  %21 = getelementptr inbounds %struct.ir_raw_event_ctrl, %struct.ir_raw_event_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* @BPF_PROG_RUN, align 4
  %23 = call i32 @BPF_PROG_RUN_ARRAY(i64 %19, i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @BPF_PROG_RUN_ARRAY(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
