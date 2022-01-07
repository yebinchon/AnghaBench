; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_attach_afu_directed_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_attach_afu_directed_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.cxl_context = type { %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_16__, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i8*, %struct.TYPE_12__, i64, i8*, i64 }
%struct.TYPE_17__ = type { i8*, i8*, %struct.TYPE_14__, i64, i8*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8*, i64, i64 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_16__ = type { i32*, i32* }

@SPRN_LPID = common dso_local global i32 0, align 4
@SPRN_SDR1 = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_11__* null, align 8
@cxl_ops = common dso_local global %struct.TYPE_20__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_attach_afu_directed_psl8(%struct.cxl_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %11 = call i32 @cxl_assign_psn_space(%struct.cxl_context* %10)
  %12 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %13 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @SPRN_LPID, align 4
  %17 = call i64 @mfspr(i32 %16)
  %18 = call i8* @cpu_to_be32(i64 %17)
  %19 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %20 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %19, i32 0, i32 1
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  store i8* %18, i8** %22, align 8
  %23 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %24 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %23, i32 0, i32 1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @SPRN_SDR1, align 4
  %28 = call i64 @mfspr(i32 %27)
  %29 = call i8* @cpu_to_be64(i64 %28)
  %30 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %31 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %30, i32 0, i32 1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i8* %29, i8** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %39 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %45 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %44, i32 0, i32 1
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i8* @cpu_to_be32(i64 %49)
  %51 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %52 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %51, i32 0, i32 1
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  store i8* %50, i8** %55, align 8
  %56 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %57 = call i64 @calculate_sr(%struct.cxl_context* %56)
  %58 = call i8* @cpu_to_be64(i64 %57)
  %59 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %60 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  store i8* %58, i8** %62, align 8
  %63 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %64 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %63, i32 0, i32 1
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %69 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %76 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %75, i32 0, i32 1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @cxl_prefault(%struct.cxl_context* %82, i64 %83)
  %85 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %86 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @cpu_to_be64(i64 %87)
  %89 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %90 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %89, i32 0, i32 1
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  store i8* %88, i8** %95, align 8
  %96 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %97 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @cpu_to_be64(i64 %98)
  %100 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %101 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %100, i32 0, i32 1
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i8* %99, i8** %106, align 8
  %107 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %108 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %43
  %115 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %116 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %115, i32 0, i32 0
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %123 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %121, i32* %126, align 4
  %127 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %128 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %114, %43
  %133 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %134 = call i32 @update_ivtes_directed(%struct.cxl_context* %133)
  %135 = load i64, i64* %7, align 8
  %136 = call i8* @cpu_to_be64(i64 %135)
  %137 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %138 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %137, i32 0, i32 1
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  store i8* %136, i8** %141, align 8
  %142 = load i64, i64* %6, align 8
  %143 = call i8* @cpu_to_be64(i64 %142)
  %144 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %145 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %144, i32 0, i32 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  store i8* %143, i8** %148, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cxl_ops, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %150, align 8
  %152 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %153 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %152, i32 0, i32 0
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = call i32 %151(%struct.TYPE_19__* %154)
  store i32 %155, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %132
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %4, align 4
  br label %162

159:                                              ; preds = %132
  %160 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %161 = call i32 @add_process_element(%struct.cxl_context* %160)
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %159, %157
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @cxl_assign_psn_space(%struct.cxl_context*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i64 @calculate_sr(%struct.cxl_context*) #1

declare dso_local i32 @cxl_prefault(%struct.cxl_context*, i64) #1

declare dso_local i32 @update_ivtes_directed(%struct.cxl_context*) #1

declare dso_local i32 @add_process_element(%struct.cxl_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
