; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_target_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptfc.c_mptfc_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.fc_rport = type { i64 }
%struct.mptfc_rport_info = type { %struct.scsi_target*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @mptfc_target_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptfc_target_alloc(%struct.scsi_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.fc_rport*, align 8
  %6 = alloca %struct.mptfc_rport_info*, align 8
  %7 = alloca i32, align 4
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.TYPE_6__* @kzalloc(i32 8, i32 %8)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %17, i32 0, i32 0
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %18, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %22 = call %struct.fc_rport* @starget_to_rport(%struct.scsi_target* %21)
  store %struct.fc_rport* %22, %struct.fc_rport** %5, align 8
  %23 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %24 = icmp ne %struct.fc_rport* %23, null
  br i1 %24, label %25, label %50

25:                                               ; preds = %15
  %26 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %27 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.mptfc_rport_info**
  %30 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %29, align 8
  store %struct.mptfc_rport_info* %30, %struct.mptfc_rport_info** %6, align 8
  %31 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %6, align 8
  %32 = icmp ne %struct.mptfc_rport_info* %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %6, align 8
  %35 = getelementptr inbounds %struct.mptfc_rport_info, %struct.mptfc_rport_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %6, align 8
  %41 = getelementptr inbounds %struct.mptfc_rport_info, %struct.mptfc_rport_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %47 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %6, align 8
  %48 = getelementptr inbounds %struct.mptfc_rport_info, %struct.mptfc_rport_info* %47, i32 0, i32 0
  store %struct.scsi_target* %46, %struct.scsi_target** %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %33, %25
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = call i32 @kfree(%struct.TYPE_6__* %54)
  %56 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %56, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %57, align 8
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local %struct.fc_rport* @starget_to_rport(%struct.scsi_target*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
