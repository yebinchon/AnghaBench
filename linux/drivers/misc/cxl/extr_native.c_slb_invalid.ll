; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_slb_invalid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_slb_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.cxl*, i32*)* }
%struct.cxl = type { i32 }
%struct.cxl_context = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.cxl* }
%struct.TYPE_8__ = type { i32 }

@CXL_PSL_LBISEL = common dso_local global i32 0, align 4
@CXL_PSL_SLBIA = common dso_local global i32 0, align 4
@CXL_TLB_SLB_IQ_LPIDPID = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_10__* null, align 8
@CXL_TLB_SLB_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl_context*)* @slb_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slb_invalid(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %5 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %6 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %5, i32 0, i32 1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load %struct.cxl*, %struct.cxl** %8, align 8
  store %struct.cxl* %9, %struct.cxl** %3, align 8
  %10 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %11 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = call i32 @mutex_is_locked(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.cxl*, %struct.cxl** %3, align 8
  %22 = load i32, i32* @CXL_PSL_LBISEL, align 4
  %23 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %24 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  %30 = shl i32 %29, 32
  %31 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %32 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = or i32 %30, %36
  %38 = call i32 @cxl_p1_write(%struct.cxl* %21, i32 %22, i32 %37)
  %39 = load %struct.cxl*, %struct.cxl** %3, align 8
  %40 = load i32, i32* @CXL_PSL_SLBIA, align 4
  %41 = load i32, i32* @CXL_TLB_SLB_IQ_LPIDPID, align 4
  %42 = call i32 @cxl_p1_write(%struct.cxl* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %1, %60
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cxl_ops, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32 (%struct.cxl*, i32*)*, i32 (%struct.cxl*, i32*)** %45, align 8
  %47 = load %struct.cxl*, %struct.cxl** %3, align 8
  %48 = call i32 %46(%struct.cxl* %47, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  br label %62

51:                                               ; preds = %43
  %52 = load %struct.cxl*, %struct.cxl** %3, align 8
  %53 = load i32, i32* @CXL_PSL_SLBIA, align 4
  %54 = call i32 @cxl_p1_read(%struct.cxl* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CXL_TLB_SLB_P, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  br label %62

60:                                               ; preds = %51
  %61 = call i32 (...) @cpu_relax()
  br label %43

62:                                               ; preds = %59, %50
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cxl_p1_read(%struct.cxl*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
