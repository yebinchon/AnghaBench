; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_target_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_target_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32* }
%struct.fc_rport = type { i64 }
%struct.mptfc_rport_info = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*)* @mptfc_target_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptfc_target_destroy(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca %struct.mptfc_rport_info*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %5 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %6 = call %struct.fc_rport* @starget_to_rport(%struct.scsi_target* %5)
  store %struct.fc_rport* %6, %struct.fc_rport** %3, align 8
  %7 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %8 = icmp ne %struct.fc_rport* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %11 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.mptfc_rport_info**
  %14 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %13, align 8
  store %struct.mptfc_rport_info* %14, %struct.mptfc_rport_info** %4, align 8
  %15 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %4, align 8
  %16 = icmp ne %struct.mptfc_rport_info* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %4, align 8
  %19 = getelementptr inbounds %struct.mptfc_rport_info, %struct.mptfc_rport_info* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %17, %9
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local %struct.fc_rport* @starget_to_rport(%struct.scsi_target*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
