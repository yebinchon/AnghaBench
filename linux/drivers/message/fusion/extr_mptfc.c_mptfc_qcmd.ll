; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_qcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_qcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mptfc_rport_info = type { i32 }
%struct.fc_rport = type { i64 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @mptfc_qcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptfc_qcmd(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.mptfc_rport_info*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @scsi_target(%struct.TYPE_4__* %12)
  %14 = call %struct.fc_rport* @starget_to_rport(i32 %13)
  store %struct.fc_rport* %14, %struct.fc_rport** %7, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @DID_NO_CONNECT, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %33, align 8
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = call i32 %34(%struct.scsi_cmnd* %35)
  store i32 0, i32* %3, align 4
  br label %77

37:                                               ; preds = %22
  %38 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %39 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 1
  %49 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %48, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %51 = call i32 %49(%struct.scsi_cmnd* %50)
  store i32 0, i32* %3, align 4
  br label %77

52:                                               ; preds = %37
  %53 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %54 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.mptfc_rport_info**
  %57 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %56, align 8
  store %struct.mptfc_rport_info* %57, %struct.mptfc_rport_info** %6, align 8
  %58 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %6, align 8
  %59 = icmp ne %struct.mptfc_rport_info* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load i32, i32* @DID_IMM_RETRY, align 4
  %66 = shl i32 %65, 16
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %69, i32 0, i32 1
  %71 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %70, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = call i32 %71(%struct.scsi_cmnd* %72)
  store i32 0, i32* %3, align 4
  br label %77

74:                                               ; preds = %52
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %76 = call i32 @mptscsih_qcmd(%struct.scsi_cmnd* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %64, %43, %27
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_4__*) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mptscsih_qcmd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
