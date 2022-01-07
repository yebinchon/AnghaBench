; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_xsl_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_xsl_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_link = type { %struct.spa* }
%struct.spa = type { %struct.TYPE_5__, i32, %struct.ocxl_process_element* }
%struct.TYPE_5__ = type { i32, %struct.pe_data, i64, i64, i64 }
%struct.pe_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocxl_process_element = type { i32 }

@SPA_PE_MASK = common dso_local global i64 0, align 8
@SPA_XSL_TF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Invalid xsl interrupt fault register %#llx\0A\00", align 1
@ADDRESS_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unknown mm context for xsl interrupt\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Unresolved OpenCAPI xsl fault in kernel context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xsl_fault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsl_fault_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ocxl_link*, align 8
  %7 = alloca %struct.spa*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pe_data*, align 8
  %12 = alloca %struct.ocxl_process_element*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ocxl_link*
  store %struct.ocxl_link* %16, %struct.ocxl_link** %6, align 8
  %17 = load %struct.ocxl_link*, %struct.ocxl_link** %6, align 8
  %18 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %17, i32 0, i32 0
  %19 = load %struct.spa*, %struct.spa** %18, align 8
  store %struct.spa* %19, %struct.spa** %7, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.spa*, %struct.spa** %7, align 8
  %21 = call i32 @read_irq(%struct.spa* %20, i64* %8, i64* %9, i64* %10)
  %22 = load %struct.spa*, %struct.spa** %7, align 8
  %23 = getelementptr inbounds %struct.spa, %struct.spa* %22, i32 0, i32 2
  %24 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @trace_ocxl_fault(%struct.ocxl_process_element* %24, i64 %25, i64 %26, i64 %27, i32 -1)
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @SPA_PE_MASK, align 8
  %31 = icmp sgt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.spa*, %struct.spa** %7, align 8
  %35 = getelementptr inbounds %struct.spa, %struct.spa* %34, i32 0, i32 2
  %36 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %36, i64 %37
  store %struct.ocxl_process_element* %38, %struct.ocxl_process_element** %12, align 8
  %39 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %12, align 8
  %40 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be32_to_cpu(i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @SPA_XSL_TF, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %2
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load %struct.spa*, %struct.spa** %7, align 8
  %51 = load i32, i32* @ADDRESS_ERROR, align 4
  %52 = call i32 @ack_irq(%struct.spa* %50, i32 %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %131

54:                                               ; preds = %2
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load %struct.spa*, %struct.spa** %7, align 8
  %57 = getelementptr inbounds %struct.spa, %struct.spa* %56, i32 0, i32 1
  %58 = load i64, i64* %10, align 8
  %59 = call %struct.pe_data* @radix_tree_lookup(i32* %57, i64 %58)
  store %struct.pe_data* %59, %struct.pe_data** %11, align 8
  %60 = load %struct.pe_data*, %struct.pe_data** %11, align 8
  %61 = icmp ne %struct.pe_data* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %54
  %63 = call i32 (...) @rcu_read_unlock()
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.spa*, %struct.spa** %7, align 8
  %66 = load i32, i32* @ADDRESS_ERROR, align 4
  %67 = call i32 @ack_irq(%struct.spa* %65, i32 %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %131

69:                                               ; preds = %54
  %70 = load %struct.pe_data*, %struct.pe_data** %11, align 8
  %71 = getelementptr inbounds %struct.pe_data, %struct.pe_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = icmp ne %struct.TYPE_6__* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = call i32 (...) @rcu_read_unlock()
  %76 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.spa*, %struct.spa** %7, align 8
  %78 = load i32, i32* @ADDRESS_ERROR, align 4
  %79 = call i32 @ack_irq(%struct.spa* %77, i32 %78)
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %131

81:                                               ; preds = %69
  %82 = load %struct.pe_data*, %struct.pe_data** %11, align 8
  %83 = getelementptr inbounds %struct.pe_data, %struct.pe_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @WARN_ON(i32 %90)
  %92 = load %struct.pe_data*, %struct.pe_data** %11, align 8
  %93 = getelementptr inbounds %struct.pe_data, %struct.pe_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = call i64 @mmget_not_zero(%struct.TYPE_6__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %81
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.spa*, %struct.spa** %7, align 8
  %100 = getelementptr inbounds %struct.spa, %struct.spa* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  store i64 %98, i64* %101, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load %struct.spa*, %struct.spa** %7, align 8
  %104 = getelementptr inbounds %struct.spa, %struct.spa* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  store i64 %102, i64* %105, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.spa*, %struct.spa** %7, align 8
  %108 = getelementptr inbounds %struct.spa, %struct.spa* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  store i64 %106, i64* %109, align 8
  %110 = load %struct.spa*, %struct.spa** %7, align 8
  %111 = getelementptr inbounds %struct.spa, %struct.spa* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load %struct.pe_data*, %struct.pe_data** %11, align 8
  %114 = bitcast %struct.pe_data* %112 to i8*
  %115 = bitcast %struct.pe_data* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 8, i1 false)
  store i32 1, i32* %14, align 4
  br label %116

116:                                              ; preds = %97, %81
  %117 = call i32 (...) @rcu_read_unlock()
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.spa*, %struct.spa** %7, align 8
  %122 = getelementptr inbounds %struct.spa, %struct.spa* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = call i32 @schedule_work(i32* %123)
  br label %129

125:                                              ; preds = %116
  %126 = load %struct.spa*, %struct.spa** %7, align 8
  %127 = load i32, i32* @ADDRESS_ERROR, align 4
  %128 = call i32 @ack_irq(%struct.spa* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %74, %62, %47
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @read_irq(%struct.spa*, i64*, i64*, i64*) #1

declare dso_local i32 @trace_ocxl_fault(%struct.ocxl_process_element*, i64, i64, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

declare dso_local i32 @ack_irq(%struct.spa*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pe_data* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @mmget_not_zero(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
