; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ca_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_ca.c_mantis_ca_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.mantis_ca* }
%struct.mantis_ca = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Mantis CA exit\00", align 1
@MANTIS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unregistering EN50221 device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mantis_ca_exit(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  %3 = alloca %struct.mantis_ca*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %4 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %5 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %4, i32 0, i32 0
  %6 = load %struct.mantis_ca*, %struct.mantis_ca** %5, align 8
  store %struct.mantis_ca* %6, %struct.mantis_ca** %3, align 8
  %7 = load i32, i32* @MANTIS_DEBUG, align 4
  %8 = call i32 @dprintk(i32 %7, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mantis_ca*, %struct.mantis_ca** %3, align 8
  %10 = icmp ne %struct.mantis_ca* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.mantis_ca*, %struct.mantis_ca** %3, align 8
  %14 = call i32 @mantis_evmgr_exit(%struct.mantis_ca* %13)
  %15 = load i32, i32* @MANTIS_ERROR, align 4
  %16 = call i32 @dprintk(i32 %15, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.mantis_ca*, %struct.mantis_ca** %3, align 8
  %18 = getelementptr inbounds %struct.mantis_ca, %struct.mantis_ca* %17, i32 0, i32 0
  %19 = call i32 @dvb_ca_en50221_release(i32* %18)
  %20 = load %struct.mantis_ca*, %struct.mantis_ca** %3, align 8
  %21 = call i32 @kfree(%struct.mantis_ca* %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @mantis_evmgr_exit(%struct.mantis_ca*) #1

declare dso_local i32 @dvb_ca_en50221_release(i32*) #1

declare dso_local i32 @kfree(%struct.mantis_ca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
