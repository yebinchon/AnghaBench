; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s: can't get MMIO memory @ 0x%llx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_dev*)* @get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_resources(%struct.cx23885_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  %4 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %5 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @pci_resource_start(i32 %6, i32 0)
  %8 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pci_resource_len(i32 %10, i32 0)
  %12 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %13 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @request_mem_region(i64 %7, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %20 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %23 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @pci_resource_start(i32 %24, i32 0)
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @request_mem_region(i64, i32, i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
