; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_deny_binding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_deny_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct._MPT_SCSI_HOST = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @mptspi_deny_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptspi_deny_binding(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct._MPT_SCSI_HOST*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %4 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_4__* @dev_to_shost(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct._MPT_SCSI_HOST*
  store %struct._MPT_SCSI_HOST* %11, %struct._MPT_SCSI_HOST** %3, align 8
  %12 = load %struct._MPT_SCSI_HOST*, %struct._MPT_SCSI_HOST** %3, align 8
  %13 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @mptspi_is_raid(%struct._MPT_SCSI_HOST* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %18, %1
  %24 = phi i1 [ false, %1 ], [ %22, %18 ]
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  ret i32 %26
}

declare dso_local %struct.TYPE_4__* @dev_to_shost(i32) #1

declare dso_local i64 @mptspi_is_raid(%struct._MPT_SCSI_HOST*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
