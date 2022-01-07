; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ts_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ts_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.mantis_ca* }
%struct.mantis_ca = type { %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Slot(%d): TS control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32)* @mantis_ts_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_ts_control(%struct.dvb_ca_en50221* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_ca_en50221*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mantis_ca*, align 8
  %6 = alloca %struct.mantis_pci*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %7, i32 0, i32 0
  %9 = load %struct.mantis_ca*, %struct.mantis_ca** %8, align 8
  store %struct.mantis_ca* %9, %struct.mantis_ca** %5, align 8
  %10 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  %11 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %10, i32 0, i32 0
  %12 = load %struct.mantis_pci*, %struct.mantis_pci** %11, align 8
  store %struct.mantis_pci* %12, %struct.mantis_pci** %6, align 8
  %13 = load i32, i32* @MANTIS_DEBUG, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dprintk(i32 %13, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14)
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
