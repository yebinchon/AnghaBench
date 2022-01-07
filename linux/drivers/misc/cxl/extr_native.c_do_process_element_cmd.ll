; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_do_process_element_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_do_process_element_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.cxl_context = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@CXL_TIMEOUT = common dso_local global i64 0, align 8
@CXL_PSL_LLCMD_An = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WARNING: Process Element Command timed out!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"WARNING: Device link down, aborting Process Element Command!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cxl: Error adding process element to AFU\0A\00", align 1
@CXL_SPA_SW_CMD_MASK = common dso_local global i64 0, align 8
@CXL_SPA_SW_STATE_MASK = common dso_local global i64 0, align 8
@CXL_SPA_SW_LINK_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_context*, i64, i64)* @do_process_element_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_process_element_cmd(%struct.cxl_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cxl_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @HZ, align 8
  %12 = load i64, i64* @CXL_TIMEOUT, align 8
  %13 = mul i64 %11, %12
  %14 = add i64 %10, %13
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @trace_cxl_llcmd(%struct.cxl_context* %15, i64 %16)
  %18 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %19 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @cpu_to_be32(i64 %27)
  %29 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %30 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = call i32 (...) @smp_wmb()
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %36 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %34, %37
  %39 = call i32 @cpu_to_be64(i64 %38)
  %40 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %41 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32 %39, i32* %46, align 4
  %47 = call i32 (...) @smp_mb()
  %48 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %49 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* @CXL_PSL_LLCMD_An, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %54 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %52, %55
  %57 = call i32 @cxl_p1n_write(%struct.TYPE_8__* %50, i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %3, %124
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @time_after_eq(i64 %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %65 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = call i32 @dev_warn(i32* %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %127

71:                                               ; preds = %58
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cxl_ops, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %73, align 8
  %75 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %76 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %81 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 %74(i32 %79, %struct.TYPE_8__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %71
  %86 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %87 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = call i32 @dev_warn(i32* %89, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %9, align 4
  br label %127

93:                                               ; preds = %71
  %94 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %95 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @be64_to_cpup(i32* %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = icmp eq i64 %102, -1
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %127

106:                                              ; preds = %93
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @CXL_SPA_SW_CMD_MASK, align 8
  %109 = load i64, i64* @CXL_SPA_SW_STATE_MASK, align 8
  %110 = or i64 %108, %109
  %111 = load i64, i64* @CXL_SPA_SW_LINK_MASK, align 8
  %112 = or i64 %110, %111
  %113 = and i64 %107, %112
  %114 = load i64, i64* %5, align 8
  %115 = load i64, i64* %5, align 8
  %116 = lshr i64 %115, 16
  %117 = or i64 %114, %116
  %118 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %119 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %117, %120
  %122 = icmp eq i64 %113, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %106
  br label %126

124:                                              ; preds = %106
  %125 = call i32 (...) @schedule()
  br label %58

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126, %104, %85, %63
  %128 = load %struct.cxl_context*, %struct.cxl_context** %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @trace_cxl_llcmd_done(%struct.cxl_context* %128, i64 %129, i32 %130)
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local i32 @trace_cxl_llcmd(%struct.cxl_context*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @cxl_p1n_write(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @be64_to_cpup(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @trace_cxl_llcmd_done(%struct.cxl_context*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
