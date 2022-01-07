; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_878_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dvb-bt8xx.c_dvb_bt8xx_878_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt878 = type { i32 }
%struct.pci_dev = type { i32 }

@bt878_num = common dso_local global i32 0, align 4
@bt878 = common dso_local global %struct.bt878* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bt878* (i32, %struct.pci_dev*)* @dvb_bt8xx_878_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bt878* @dvb_bt8xx_878_match(i32 %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.bt878*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @bt878_num, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load %struct.bt878*, %struct.bt878** @bt878, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bt878, %struct.bt878* %12, i64 %14
  %16 = getelementptr inbounds %struct.bt878, %struct.bt878* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = call i64 @is_pci_slot_eq(i32 %17, %struct.pci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.bt878*, %struct.bt878** @bt878, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.bt878, %struct.bt878* %22, i64 %24
  store %struct.bt878* %25, %struct.bt878** %3, align 8
  br label %31

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

30:                                               ; preds = %7
  store %struct.bt878* null, %struct.bt878** %3, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.bt878*, %struct.bt878** %3, align 8
  ret %struct.bt878* %32
}

declare dso_local i64 @is_pci_slot_eq(i32, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
