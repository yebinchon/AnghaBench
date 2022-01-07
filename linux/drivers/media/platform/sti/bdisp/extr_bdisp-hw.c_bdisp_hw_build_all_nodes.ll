; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_build_all_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_build_all_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_ctx = type { %struct.TYPE_8__**, %struct.TYPE_7__, i64*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.bdisp_op_cfg = type { i32 }

@MAX_NB_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"node %d is null\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_VERTICAL_STRIDES = common dso_local global i32 0, align 4
@BDISP_RGB = common dso_local global i32 0, align 4
@BDISP_Y = common dso_local global i32 0, align 4
@BDISP_CBCR = common dso_local global i32 0, align 4
@MAX_SRC_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdisp_ctx*)* @bdisp_hw_build_all_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_hw_build_all_nodes(%struct.bdisp_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bdisp_ctx*, align 8
  %4 = alloca %struct.bdisp_op_cfg, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAX_NB_NODE, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %15, i64 %17
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %12
  %22 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %150

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %37 = call i64 @bdisp_hw_get_op_cfg(%struct.bdisp_ctx* %36, %struct.bdisp_op_cfg* %4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %150

42:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %137, %42
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MAX_VERTICAL_STRIDES, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %140

47:                                               ; preds = %43
  %48 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %49 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @BDISP_RGB, align 4
  br label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @BDISP_Y, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @bdisp_hw_build_node(%struct.bdisp_ctx* %48, %struct.bdisp_op_cfg* %4, %struct.TYPE_8__* %55, i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %79, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i64 %76, i64* %85, align 8
  br label %86

86:                                               ; preds = %69, %63
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %4, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %122

92:                                               ; preds = %86
  %93 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %94 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %96, i64 %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* @BDISP_CBCR, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @bdisp_hw_build_node(%struct.bdisp_ctx* %93, %struct.bdisp_op_cfg* %4, %struct.TYPE_8__* %100, i32 %101, i32 %102)
  %104 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %113, i64 %116
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i64 %110, i64* %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %92, %86
  %123 = load i64, i64* @MAX_SRC_WIDTH, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %130 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sge i32 %128, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %140

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %5, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %43

140:                                              ; preds = %135, %43
  %141 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %3, align 8
  %142 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sub i32 %144, 1
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %143, i64 %146
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %140, %39, %21
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @bdisp_hw_get_op_cfg(%struct.bdisp_ctx*, %struct.bdisp_op_cfg*) #1

declare dso_local i32 @bdisp_hw_build_node(%struct.bdisp_ctx*, %struct.bdisp_op_cfg*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
