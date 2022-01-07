; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_event_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_event_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct._MPT_SCSI_HOST = type { i32 }

@SPI = common dso_local global i64 0, align 8
@MPI_EVENT_INTEGRATED_RAID = common dso_local global i64 0, align 8
@MPI_EVENT_RAID_RC_DOMAIN_VAL_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @mptspi_event_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptspi_event_process(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._MPT_SCSI_HOST*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = and i32 %13, 255
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct._MPT_SCSI_HOST* @shost_priv(i32 %18)
  store %struct._MPT_SCSI_HOST* %19, %struct._MPT_SCSI_HOST** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPI, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

26:                                               ; preds = %2
  %27 = load %struct._MPT_SCSI_HOST*, %struct._MPT_SCSI_HOST** %7, align 8
  %28 = icmp ne %struct._MPT_SCSI_HOST* %27, null
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @MPI_EVENT_INTEGRATED_RAID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = and i32 %39, 16711680
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @MPI_EVENT_RAID_RC_DOMAIN_VAL_NEEDED, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = and i32 %51, -16777216
  %53 = lshr i32 %52, 24
  store i32 %53, i32* %9, align 4
  %54 = load %struct._MPT_SCSI_HOST*, %struct._MPT_SCSI_HOST** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @mpt_dv_raid(%struct._MPT_SCSI_HOST* %54, i32 %55)
  br label %57

57:                                               ; preds = %45, %33
  br label %58

58:                                               ; preds = %57, %29, %26
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = call i32 @mptscsih_event_process(%struct.TYPE_7__* %59, %struct.TYPE_8__* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct._MPT_SCSI_HOST* @shost_priv(i32) #1

declare dso_local i32 @mpt_dv_raid(%struct._MPT_SCSI_HOST*, i32) #1

declare dso_local i32 @mptscsih_event_process(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
