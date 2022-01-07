; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_qcmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_qcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_cmnd = type { i32, %struct.TYPE_4__*, i32 (%struct.scsi_cmnd*)* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct._MPT_SCSI_HOST = type { i32* }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @mptspi_qcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptspi_qcmd(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct._MPT_SCSI_HOST*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %10 = call %struct._MPT_SCSI_HOST* @shost_priv(%struct.Scsi_Host* %9)
  store %struct._MPT_SCSI_HOST* %10, %struct._MPT_SCSI_HOST** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %7, align 8
  %16 = load %struct._MPT_SCSI_HOST*, %struct._MPT_SCSI_HOST** %6, align 8
  %17 = getelementptr inbounds %struct._MPT_SCSI_HOST, %struct._MPT_SCSI_HOST* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @DID_NO_CONNECT, align 4
  %28 = shl i32 %27, 16
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 2
  %33 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %32, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = call i32 %33(%struct.scsi_cmnd* %34)
  store i32 0, i32* %3, align 4
  br label %77

36:                                               ; preds = %21
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @mptscsih_is_phys_disk(i32* %44, i32 0, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load i32, i32* @DID_NO_CONNECT, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 2
  %59 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %58, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = call i32 %59(%struct.scsi_cmnd* %60)
  store i32 0, i32* %3, align 4
  br label %77

62:                                               ; preds = %43, %36
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i32 @scsi_target(%struct.TYPE_4__* %65)
  %67 = call i64 @spi_dv_pending(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %72 = call i32 @scsi_print_command(%struct.scsi_cmnd* %71)
  %73 = call i32 @ddvprintk(i32* %70, i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %76 = call i32 @mptscsih_qcmd(%struct.scsi_cmnd* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %52, %26
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct._MPT_SCSI_HOST* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @mptscsih_is_phys_disk(i32*, i32, i32) #1

declare dso_local i64 @spi_dv_pending(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_4__*) #1

declare dso_local i32 @ddvprintk(i32*, i32) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @mptscsih_qcmd(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
