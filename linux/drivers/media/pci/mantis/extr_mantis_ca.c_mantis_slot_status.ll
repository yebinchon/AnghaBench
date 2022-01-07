; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.mantis_ca* }
%struct.mantis_ca = type { i64, %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Slot(%d): Poll Slot status\00", align 1
@MODULE_INSERTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"CA Module present and ready\00", align 1
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"CA Module not present or not ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @mantis_slot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_slot_status(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mantis_ca*, align 8
  %9 = alloca %struct.mantis_pci*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %10, i32 0, i32 0
  %12 = load %struct.mantis_ca*, %struct.mantis_ca** %11, align 8
  store %struct.mantis_ca* %12, %struct.mantis_ca** %8, align 8
  %13 = load %struct.mantis_ca*, %struct.mantis_ca** %8, align 8
  %14 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %13, i32 0, i32 1
  %15 = load %struct.mantis_pci*, %struct.mantis_pci** %14, align 8
  store %struct.mantis_pci* %15, %struct.mantis_pci** %9, align 8
  %16 = load i32, i32* @MANTIS_DEBUG, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %16, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mantis_ca*, %struct.mantis_ca** %8, align 8
  %20 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MODULE_INSERTED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @MANTIS_DEBUG, align 4
  %26 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %25, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %28 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @MANTIS_DEBUG, align 4
  %32 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %31, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
