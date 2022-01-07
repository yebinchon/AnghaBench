; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_tweak_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_base.c_genwqe_tweak_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"FIRs masked due to bitstream %016llx.%016llx\0A\00", align 1
@IO_APP_SEC_LEM_DEBUG_OVR = common dso_local global i32 0, align 4
@IO_APP_ERR_ACT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genwqe_dev*)* @genwqe_tweak_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genwqe_tweak_hardware(%struct.genwqe_dev* %0) #0 {
  %2 = alloca %struct.genwqe_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %2, align 8
  %4 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %5 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %4, i32 0, i32 2
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %8 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = and i64 %10, 1048560
  %12 = icmp uge i64 %11, 204800
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %15 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, 1048560
  %19 = icmp ule i64 %18, 209488
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %24 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %27 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %31 = load i32, i32* @IO_APP_SEC_LEM_DEBUG_OVR, align 4
  %32 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %30, i32 %31, i32 -1)
  %33 = load %struct.genwqe_dev*, %struct.genwqe_dev** %2, align 8
  %34 = load i32, i32* @IO_APP_ERR_ACT_MASK, align 4
  %35 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %20, %13, %1
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @__genwqe_writeq(%struct.genwqe_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
