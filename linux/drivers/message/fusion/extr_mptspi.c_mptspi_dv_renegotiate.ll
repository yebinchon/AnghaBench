; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_dv_renegotiate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_dv_renegotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MPT_SCSI_HOST = type { i32 }
%struct.work_queue_wrapper = type { i32, %struct._MPT_SCSI_HOST* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@mptspi_dv_renegotiate_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._MPT_SCSI_HOST*)* @mptspi_dv_renegotiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptspi_dv_renegotiate(%struct._MPT_SCSI_HOST* %0) #0 {
  %2 = alloca %struct._MPT_SCSI_HOST*, align 8
  %3 = alloca %struct.work_queue_wrapper*, align 8
  store %struct._MPT_SCSI_HOST* %0, %struct._MPT_SCSI_HOST** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.work_queue_wrapper* @kmalloc(i32 16, i32 %4)
  store %struct.work_queue_wrapper* %5, %struct.work_queue_wrapper** %3, align 8
  %6 = load %struct.work_queue_wrapper*, %struct.work_queue_wrapper** %3, align 8
  %7 = icmp ne %struct.work_queue_wrapper* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.work_queue_wrapper*, %struct.work_queue_wrapper** %3, align 8
  %11 = getelementptr inbounds %struct.work_queue_wrapper, %struct.work_queue_wrapper* %10, i32 0, i32 0
  %12 = load i32, i32* @mptspi_dv_renegotiate_work, align 4
  %13 = call i32 @INIT_WORK(i32* %11, i32 %12)
  %14 = load %struct._MPT_SCSI_HOST*, %struct._MPT_SCSI_HOST** %2, align 8
  %15 = load %struct.work_queue_wrapper*, %struct.work_queue_wrapper** %3, align 8
  %16 = getelementptr inbounds %struct.work_queue_wrapper, %struct.work_queue_wrapper* %15, i32 0, i32 1
  store %struct._MPT_SCSI_HOST* %14, %struct._MPT_SCSI_HOST** %16, align 8
  %17 = load %struct.work_queue_wrapper*, %struct.work_queue_wrapper** %3, align 8
  %18 = getelementptr inbounds %struct.work_queue_wrapper, %struct.work_queue_wrapper* %17, i32 0, i32 0
  %19 = call i32 @schedule_work(i32* %18)
  br label %20

20:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.work_queue_wrapper* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
