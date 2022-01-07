; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_init_seeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_init_seeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sgiseeq_private = type { i32, i32, i32, i64, %struct.hpc3_ethregs* }
%struct.hpc3_ethregs = type { i8*, i8* }
%struct.sgiseeq_regs = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@TSTAT_INIT_EDLC = common dso_local global i32 0, align 4
@TSTAT_INIT_SEEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sgiseeq_private*, %struct.sgiseeq_regs*)* @init_seeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_seeq(%struct.net_device* %0, %struct.sgiseeq_private* %1, %struct.sgiseeq_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sgiseeq_private*, align 8
  %7 = alloca %struct.sgiseeq_regs*, align 8
  %8 = alloca %struct.hpc3_ethregs*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sgiseeq_private* %1, %struct.sgiseeq_private** %6, align 8
  store %struct.sgiseeq_regs* %2, %struct.sgiseeq_regs** %7, align 8
  %10 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %11 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %10, i32 0, i32 4
  %12 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %11, align 8
  store %struct.hpc3_ethregs* %12, %struct.hpc3_ethregs** %8, align 8
  %13 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %8, align 8
  %14 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %7, align 8
  %15 = call i32 @reset_hpc3_and_seeq(%struct.hpc3_ethregs* %13, %struct.sgiseeq_regs* %14)
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @seeq_init_ring(%struct.net_device* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %65

22:                                               ; preds = %3
  %23 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %24 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load i32, i32* @TSTAT_INIT_EDLC, align 4
  %29 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %7, align 8
  %30 = getelementptr inbounds %struct.sgiseeq_regs, %struct.sgiseeq_regs* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %32 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %7, align 8
  %35 = getelementptr inbounds %struct.sgiseeq_regs, %struct.sgiseeq_regs* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  %38 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %7, align 8
  %39 = getelementptr inbounds %struct.sgiseeq_regs, %struct.sgiseeq_regs* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %46

42:                                               ; preds = %22
  %43 = load i32, i32* @TSTAT_INIT_SEEQ, align 4
  %44 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %7, align 8
  %45 = getelementptr inbounds %struct.sgiseeq_regs, %struct.sgiseeq_regs* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %48 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %49 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @VIRT_TO_DMA(%struct.sgiseeq_private* %47, i32 %50)
  %52 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %8, align 8
  %53 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %55 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %56 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @VIRT_TO_DMA(%struct.sgiseeq_private* %54, i32 %57)
  %59 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %8, align 8
  %60 = getelementptr inbounds %struct.hpc3_ethregs, %struct.hpc3_ethregs* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %6, align 8
  %62 = load %struct.hpc3_ethregs*, %struct.hpc3_ethregs** %8, align 8
  %63 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %7, align 8
  %64 = call i32 @seeq_go(%struct.sgiseeq_private* %61, %struct.hpc3_ethregs* %62, %struct.sgiseeq_regs* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %46, %20
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @reset_hpc3_and_seeq(%struct.hpc3_ethregs*, %struct.sgiseeq_regs*) #1

declare dso_local i32 @seeq_init_ring(%struct.net_device*) #1

declare dso_local i8* @VIRT_TO_DMA(%struct.sgiseeq_private*, i32) #1

declare dso_local i32 @seeq_go(%struct.sgiseeq_private*, %struct.hpc3_ethregs*, %struct.sgiseeq_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
