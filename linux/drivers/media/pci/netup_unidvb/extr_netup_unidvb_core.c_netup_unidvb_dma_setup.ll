; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/netup_unidvb/extr_netup_unidvb_core.c_netup_unidvb_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/netup_unidvb/extr_netup_unidvb_core.c_netup_unidvb_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netup_unidvb_dev = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netup_unidvb_dev*)* @netup_unidvb_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netup_unidvb_dma_setup(%struct.netup_unidvb_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netup_unidvb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.netup_unidvb_dev* %0, %struct.netup_unidvb_dev** %3, align 8
  %5 = load %struct.netup_unidvb_dev*, %struct.netup_unidvb_dev** %3, align 8
  %6 = call i32 @netup_unidvb_dma_init(%struct.netup_unidvb_dev* %5, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.netup_unidvb_dev*, %struct.netup_unidvb_dev** %3, align 8
  %13 = call i32 @netup_unidvb_dma_init(%struct.netup_unidvb_dev* %12, i32 1)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.netup_unidvb_dev*, %struct.netup_unidvb_dev** %3, align 8
  %18 = call i32 @netup_unidvb_dma_fini(%struct.netup_unidvb_dev* %17, i32 0)
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.netup_unidvb_dev*, %struct.netup_unidvb_dev** %3, align 8
  %22 = getelementptr inbounds %struct.netup_unidvb_dev, %struct.netup_unidvb_dev* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @netup_unidvb_dma_enable(i32* %24, i32 0)
  %26 = load %struct.netup_unidvb_dev*, %struct.netup_unidvb_dev** %3, align 8
  %27 = getelementptr inbounds %struct.netup_unidvb_dev, %struct.netup_unidvb_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @netup_unidvb_dma_enable(i32* %29, i32 0)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %20, %16, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @netup_unidvb_dma_init(%struct.netup_unidvb_dev*, i32) #1

declare dso_local i32 @netup_unidvb_dma_fini(%struct.netup_unidvb_dev*, i32) #1

declare dso_local i32 @netup_unidvb_dma_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
