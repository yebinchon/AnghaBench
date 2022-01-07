; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_stop_trace_psl9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_stop_trace_psl9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@CXL_PSL9_TRACEID_MAX = common dso_local global i32 0, align 4
@CXL_PSL9_CTCCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cxl: Traceid-%d trace_state=0x%0llX\0A\00", align 1
@CXL_PSL9_TRACESTATE_FIN = common dso_local global i32 0, align 4
@CXL_PSL9_TRACECFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl*)* @cxl_stop_trace_psl9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_stop_trace_psl9(%struct.cxl* %0) #0 {
  %2 = alloca %struct.cxl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.cxl* %0, %struct.cxl** %2, align 8
  %7 = load %struct.cxl*, %struct.cxl** %2, align 8
  %8 = getelementptr inbounds %struct.cxl, %struct.cxl* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %6, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @CXL_PSL9_TRACEID_MAX, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.cxl*, %struct.cxl** %2, align 8
  %18 = load i32, i32* @CXL_PSL9_CTCCFG, align 4
  %19 = call i32 @cxl_p1_read(%struct.cxl* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 2
  %22 = sub nsw i32 62, %21
  %23 = zext i32 %22 to i64
  %24 = shl i64 3, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sub nsw i32 62, %30
  %32 = ashr i32 %28, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @CXL_PSL9_TRACESTATE_FIN, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %16
  %42 = load %struct.cxl*, %struct.cxl** %2, align 8
  %43 = load i32, i32* @CXL_PSL9_TRACECFG, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = or i64 -8935141660703064064, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @cxl_p1_write(%struct.cxl* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %41, %16
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %12

53:                                               ; preds = %12
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @cxl_p1_read(%struct.cxl*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
