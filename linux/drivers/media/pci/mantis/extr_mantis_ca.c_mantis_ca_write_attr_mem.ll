; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ca_write_attr_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ca_write_attr_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.mantis_ca* }
%struct.mantis_ca = type { %struct.mantis_pci* }
%struct.mantis_pci = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Slot(%d): Request Attribute Mem Write\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32)* @mantis_ca_write_attr_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mantis_ca_write_attr_mem(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mantis_ca*, align 8
  %11 = alloca %struct.mantis_pci*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %12, i32 0, i32 0
  %14 = load %struct.mantis_ca*, %struct.mantis_ca** %13, align 8
  store %struct.mantis_ca* %14, %struct.mantis_ca** %10, align 8
  %15 = load %struct.mantis_ca*, %struct.mantis_ca** %10, align 8
  %16 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %15, i32 0, i32 0
  %17 = load %struct.mantis_pci*, %struct.mantis_pci** %16, align 8
  store %struct.mantis_pci* %17, %struct.mantis_pci** %11, align 8
  %18 = load i32, i32* @MANTIS_DEBUG, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dprintk(i32 %18, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %31

26:                                               ; preds = %4
  %27 = load %struct.mantis_ca*, %struct.mantis_ca** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mantis_hif_write_mem(%struct.mantis_ca* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

declare dso_local i32 @mantis_hif_write_mem(%struct.mantis_ca*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
