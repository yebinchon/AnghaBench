; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptscsih.c_mptscsih_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptscsih.c_mptscsih_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.scsi_target = type { %struct.TYPE_7__* }

@SPI = common dso_local global i64 0, align 8
@MPT_TARGET_FLAGS_Q_YES = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@MPT_ULTRA160 = common dso_local global i64 0, align 8
@MPT_SCSI_CMD_PER_DEV_HIGH = common dso_local global i32 0, align 4
@MPT_SCSI_CMD_PER_DEV_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptscsih_change_queue_depth(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.scsi_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_8__* @shost_priv(i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %18 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %17)
  store %struct.scsi_target* %18, %struct.scsi_target** %7, align 8
  %19 = load %struct.scsi_target*, %struct.scsi_target** %7, align 8
  %20 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SPI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MPT_TARGET_FLAGS_Q_YES, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TYPE_DISK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MPT_ULTRA160, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @MPT_SCSI_CMD_PER_DEV_HIGH, align 4
  store i32 %48, i32* %8, align 4
  br label %51

49:                                               ; preds = %41, %35
  %50 = load i32, i32* @MPT_SCSI_CMD_PER_DEV_LOW, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %34
  br label %59

53:                                               ; preds = %2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %53, %52
  %60 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %61 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %72, i32 %73)
  ret i32 %74
}

declare dso_local %struct.TYPE_8__* @shost_priv(i32) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
