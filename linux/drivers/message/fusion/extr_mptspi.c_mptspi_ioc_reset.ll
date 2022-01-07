; ModuleID = '/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_ioc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/message/fusion/extr_mptspi.c_mptspi_ioc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct._MPT_SCSI_HOST = type { i32 }

@SPI = common dso_local global i64 0, align 8
@MPT_IOC_POST_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @mptspi_ioc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptspi_ioc_reset(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._MPT_SCSI_HOST*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @mptscsih_ioc_reset(%struct.TYPE_4__* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPI, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MPT_IOC_POST_RESET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call %struct._MPT_SCSI_HOST* @shost_priv(i64 %33)
  store %struct._MPT_SCSI_HOST* %34, %struct._MPT_SCSI_HOST** %7, align 8
  %35 = load %struct._MPT_SCSI_HOST*, %struct._MPT_SCSI_HOST** %7, align 8
  %36 = call i32 @mptspi_dv_renegotiate(%struct._MPT_SCSI_HOST* %35)
  br label %37

37:                                               ; preds = %30, %25, %21
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mptscsih_ioc_reset(%struct.TYPE_4__*, i32) #1

declare dso_local %struct._MPT_SCSI_HOST* @shost_priv(i64) #1

declare dso_local i32 @mptspi_dv_renegotiate(%struct._MPT_SCSI_HOST*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
