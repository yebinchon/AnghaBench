; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_create_maps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_create_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fastrpc_invoke_ctx = type { i32, i32*, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error Creating map %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fastrpc_invoke_ctx*)* @fastrpc_create_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_create_maps(%struct.fastrpc_invoke_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fastrpc_invoke_ctx*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fastrpc_invoke_ctx* %0, %struct.fastrpc_invoke_ctx** %3, align 8
  %7 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %100, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %103

20:                                               ; preds = %14
  %21 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %104

33:                                               ; preds = %20
  %34 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %33
  %44 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53, %43, %33
  br label %100

64:                                               ; preds = %53
  %65 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %68, i32 0, i32 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.fastrpc_invoke_ctx*, %struct.fastrpc_invoke_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.fastrpc_invoke_ctx, %struct.fastrpc_invoke_ctx* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @fastrpc_map_create(%struct.TYPE_6__* %67, i32 %75, i64 %83, i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %64
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %104

99:                                               ; preds = %64
  br label %100

100:                                              ; preds = %99, %63
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %14

103:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %93, %30
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @fastrpc_map_create(%struct.TYPE_6__*, i32, i64, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
