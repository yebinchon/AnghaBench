; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_qset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }
%struct.skge_element = type { i32 }

@B0_CTST = common dso_local global i32 0, align 4
@CS_BUS_CLOCK = common dso_local global i32 0, align 4
@CS_BUS_SLOT_SZ = common dso_local global i32 0, align 4
@Q_CSR = common dso_local global i32 0, align 4
@CSR_CLR_RESET = common dso_local global i32 0, align 4
@Q_F = common dso_local global i32 0, align 4
@Q_DA_H = common dso_local global i32 0, align 4
@Q_DA_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*, i32, %struct.skge_element*)* @skge_qset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_qset(%struct.skge_port* %0, i32 %1, %struct.skge_element* %2) #0 {
  %4 = alloca %struct.skge_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skge_element*, align 8
  %7 = alloca %struct.skge_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.skge_element* %2, %struct.skge_element** %6, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %11 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %10, i32 0, i32 2
  %12 = load %struct.skge_hw*, %struct.skge_hw** %11, align 8
  store %struct.skge_hw* %12, %struct.skge_hw** %7, align 8
  store i32 1536, i32* %8, align 4
  %13 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.skge_element*, %struct.skge_element** %6, align 8
  %17 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %20 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  %23 = add nsw i32 %15, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %25 = load i32, i32* @B0_CTST, align 4
  %26 = call i32 @skge_read16(%struct.skge_hw* %24, i32 %25)
  %27 = load i32, i32* @CS_BUS_CLOCK, align 4
  %28 = load i32, i32* @CS_BUS_SLOT_SZ, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %3
  %36 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @Q_CSR, align 4
  %39 = call i32 @Q_ADDR(i32 %37, i32 %38)
  %40 = load i32, i32* @CSR_CLR_RESET, align 4
  %41 = call i32 @skge_write32(%struct.skge_hw* %36, i32 %39, i32 %40)
  %42 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @Q_F, align 4
  %45 = call i32 @Q_ADDR(i32 %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @skge_write32(%struct.skge_hw* %42, i32 %45, i32 %46)
  %48 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @Q_DA_H, align 4
  %51 = call i32 @Q_ADDR(i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, 32
  %54 = call i32 @skge_write32(%struct.skge_hw* %48, i32 %51, i32 %53)
  %55 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @Q_DA_L, align 4
  %58 = call i32 @Q_ADDR(i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @skge_write32(%struct.skge_hw* %55, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @skge_read16(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
