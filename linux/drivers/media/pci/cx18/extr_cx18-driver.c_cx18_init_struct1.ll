; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_struct1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-driver.c_cx18_init_struct1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, i32, %struct.TYPE_24__, i32, i32, i32, i32, %struct.TYPE_25__, i32, i32, %struct.TYPE_26__, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, i32* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_34__*, %struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_28__*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32* }

@CX2341X_PORT_MEMORY = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_TS = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_SLICED_VBI = common dso_local global i32 0, align 4
@cx18_cxhdl_ops = common dso_local global i32 0, align 4
@cx18_api_func = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*)* @cx18_init_struct1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_init_struct1(%struct.cx18* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  %5 = load %struct.cx18*, %struct.cx18** %3, align 8
  %6 = getelementptr inbounds %struct.cx18, %struct.cx18* %5, i32 0, i32 16
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pci_resource_start(i32 %7, i32 0)
  %9 = load %struct.cx18*, %struct.cx18** %3, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 17
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cx18*, %struct.cx18** %3, align 8
  %12 = getelementptr inbounds %struct.cx18, %struct.cx18* %11, i32 0, i32 15
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.cx18*, %struct.cx18** %3, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 14
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.cx18*, %struct.cx18** %3, align 8
  %18 = getelementptr inbounds %struct.cx18, %struct.cx18* %17, i32 0, i32 13
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.cx18*, %struct.cx18** %3, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 12
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.cx18*, %struct.cx18** %3, align 8
  %24 = call i32 @cx18_create_in_workq(%struct.cx18* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %167

29:                                               ; preds = %1
  %30 = load %struct.cx18*, %struct.cx18** %3, align 8
  %31 = call i32 @cx18_init_in_work_orders(%struct.cx18* %30)
  %32 = load %struct.cx18*, %struct.cx18** %3, align 8
  %33 = getelementptr inbounds %struct.cx18, %struct.cx18* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @CX2341X_PORT_MEMORY, align 4
  %35 = load %struct.cx18*, %struct.cx18** %3, align 8
  %36 = getelementptr inbounds %struct.cx18, %struct.cx18* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 10
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @CX2341X_CAP_HAS_TS, align 4
  %39 = load i32, i32* @CX2341X_CAP_HAS_SLICED_VBI, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.cx18*, %struct.cx18** %3, align 8
  %42 = getelementptr inbounds %struct.cx18, %struct.cx18* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.cx18*, %struct.cx18** %3, align 8
  %45 = getelementptr inbounds %struct.cx18, %struct.cx18* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 9
  store i32* @cx18_cxhdl_ops, i32** %46, align 8
  %47 = load i32, i32* @cx18_api_func, align 4
  %48 = load %struct.cx18*, %struct.cx18** %3, align 8
  %49 = getelementptr inbounds %struct.cx18, %struct.cx18* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 8
  store i32 %47, i32* %50, align 8
  %51 = load %struct.cx18*, %struct.cx18** %3, align 8
  %52 = getelementptr inbounds %struct.cx18, %struct.cx18* %51, i32 0, i32 11
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load %struct.cx18*, %struct.cx18** %3, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 7
  store i32* %55, i32** %58, align 8
  %59 = load %struct.cx18*, %struct.cx18** %3, align 8
  %60 = getelementptr inbounds %struct.cx18, %struct.cx18* %59, i32 0, i32 7
  %61 = call i32 @cx2341x_handler_init(%struct.TYPE_25__* %60, i32 50)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %29
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %167

66:                                               ; preds = %29
  %67 = load %struct.cx18*, %struct.cx18** %3, align 8
  %68 = getelementptr inbounds %struct.cx18, %struct.cx18* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 6
  %70 = load %struct.cx18*, %struct.cx18** %3, align 8
  %71 = getelementptr inbounds %struct.cx18, %struct.cx18* %70, i32 0, i32 10
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 8
  %73 = load %struct.cx18*, %struct.cx18** %3, align 8
  %74 = getelementptr inbounds %struct.cx18, %struct.cx18* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cx18*, %struct.cx18** %3, align 8
  %81 = getelementptr inbounds %struct.cx18, %struct.cx18* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 4
  %82 = load %struct.cx18*, %struct.cx18** %3, align 8
  %83 = getelementptr inbounds %struct.cx18, %struct.cx18* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cx18*, %struct.cx18** %3, align 8
  %90 = getelementptr inbounds %struct.cx18, %struct.cx18* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cx18*, %struct.cx18** %3, align 8
  %92 = getelementptr inbounds %struct.cx18, %struct.cx18* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cx18*, %struct.cx18** %3, align 8
  %99 = getelementptr inbounds %struct.cx18, %struct.cx18* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 1
  %106 = or i32 %97, %105
  %107 = load %struct.cx18*, %struct.cx18** %3, align 8
  %108 = getelementptr inbounds %struct.cx18, %struct.cx18* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 2
  %115 = or i32 %106, %114
  %116 = load %struct.cx18*, %struct.cx18** %3, align 8
  %117 = getelementptr inbounds %struct.cx18, %struct.cx18* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.cx18*, %struct.cx18** %3, align 8
  %119 = getelementptr inbounds %struct.cx18, %struct.cx18* %118, i32 0, i32 6
  %120 = call i32 @init_waitqueue_head(i32* %119)
  %121 = load %struct.cx18*, %struct.cx18** %3, align 8
  %122 = getelementptr inbounds %struct.cx18, %struct.cx18* %121, i32 0, i32 5
  %123 = call i32 @init_waitqueue_head(i32* %122)
  %124 = load %struct.cx18*, %struct.cx18** %3, align 8
  %125 = getelementptr inbounds %struct.cx18, %struct.cx18* %124, i32 0, i32 4
  %126 = call i32 @init_waitqueue_head(i32* %125)
  %127 = load %struct.cx18*, %struct.cx18** %3, align 8
  %128 = getelementptr inbounds %struct.cx18, %struct.cx18* %127, i32 0, i32 3
  %129 = call i32 @init_waitqueue_head(i32* %128)
  %130 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %131 = load %struct.cx18*, %struct.cx18** %3, align 8
  %132 = getelementptr inbounds %struct.cx18, %struct.cx18* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 4
  %135 = load %struct.cx18*, %struct.cx18** %3, align 8
  %136 = getelementptr inbounds %struct.cx18, %struct.cx18* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load %struct.cx18*, %struct.cx18** %3, align 8
  %141 = getelementptr inbounds %struct.cx18, %struct.cx18* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 3
  store i32* %139, i32** %142, align 8
  %143 = load %struct.cx18*, %struct.cx18** %3, align 8
  %144 = getelementptr inbounds %struct.cx18, %struct.cx18* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = call i32 @INIT_LIST_HEAD(i32* %146)
  %148 = load %struct.cx18*, %struct.cx18** %3, align 8
  %149 = getelementptr inbounds %struct.cx18, %struct.cx18* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 1
  %152 = call i32 @INIT_LIST_HEAD(i32* %151)
  %153 = load %struct.cx18*, %struct.cx18** %3, align 8
  %154 = getelementptr inbounds %struct.cx18, %struct.cx18* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = call i32 @INIT_LIST_HEAD(i32* %156)
  %158 = load %struct.cx18*, %struct.cx18** %3, align 8
  %159 = getelementptr inbounds %struct.cx18, %struct.cx18* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load %struct.cx18*, %struct.cx18** %3, align 8
  %163 = getelementptr inbounds %struct.cx18, %struct.cx18* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = call i32 @list_add(i32* %161, i32* %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %66, %64, %27
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @cx18_create_in_workq(%struct.cx18*) #1

declare dso_local i32 @cx18_init_in_work_orders(%struct.cx18*) #1

declare dso_local i32 @cx2341x_handler_init(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
