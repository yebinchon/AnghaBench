; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_save_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_save_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_ctx = type { %struct.TYPE_4__*, i32, i32, i32, i32, %struct.bdisp_node** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bdisp_request, %struct.bdisp_node** }
%struct.bdisp_request = type { i32, i32, i32, i32, i32 }
%struct.bdisp_node = type { i32 }

@MAX_NB_NODE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdisp_ctx*)* @bdisp_hw_save_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdisp_hw_save_request(%struct.bdisp_ctx* %0) #0 {
  %2 = alloca %struct.bdisp_ctx*, align 8
  %3 = alloca %struct.bdisp_node**, align 8
  %4 = alloca %struct.bdisp_request*, align 8
  %5 = alloca %struct.bdisp_node**, align 8
  %6 = alloca i32, align 4
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %2, align 8
  %7 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.bdisp_node**, %struct.bdisp_node*** %11, align 8
  store %struct.bdisp_node** %12, %struct.bdisp_node*** %3, align 8
  %13 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.bdisp_request* %17, %struct.bdisp_request** %4, align 8
  %18 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %18, i32 0, i32 5
  %20 = load %struct.bdisp_node**, %struct.bdisp_node*** %19, align 8
  store %struct.bdisp_node** %20, %struct.bdisp_node*** %5, align 8
  %21 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bdisp_request*, %struct.bdisp_request** %4, align 8
  %25 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %27 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bdisp_request*, %struct.bdisp_request** %4, align 8
  %30 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bdisp_request*, %struct.bdisp_request** %4, align 8
  %35 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %37 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bdisp_request*, %struct.bdisp_request** %4, align 8
  %40 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bdisp_request*, %struct.bdisp_request** %4, align 8
  %42 = getelementptr inbounds %struct.bdisp_request, %struct.bdisp_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %89, %1
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MAX_NB_NODE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %92

49:                                               ; preds = %45
  %50 = load %struct.bdisp_node**, %struct.bdisp_node*** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %50, i64 %52
  %54 = load %struct.bdisp_node*, %struct.bdisp_node** %53, align 8
  %55 = icmp ne %struct.bdisp_node* %54, null
  br i1 %55, label %76, label %56

56:                                               ; preds = %49
  %57 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.bdisp_node* @devm_kzalloc(i32 %61, i32 4, i32 %62)
  %64 = load %struct.bdisp_node**, %struct.bdisp_node*** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %64, i64 %66
  store %struct.bdisp_node* %63, %struct.bdisp_node** %67, align 8
  %68 = load %struct.bdisp_node**, %struct.bdisp_node*** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %68, i64 %70
  %72 = load %struct.bdisp_node*, %struct.bdisp_node** %71, align 8
  %73 = icmp ne %struct.bdisp_node* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %56
  br label %92

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75, %49
  %77 = load %struct.bdisp_node**, %struct.bdisp_node*** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %77, i64 %79
  %81 = load %struct.bdisp_node*, %struct.bdisp_node** %80, align 8
  %82 = load %struct.bdisp_node**, %struct.bdisp_node*** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bdisp_node*, %struct.bdisp_node** %82, i64 %84
  %86 = load %struct.bdisp_node*, %struct.bdisp_node** %85, align 8
  %87 = bitcast %struct.bdisp_node* %81 to i8*
  %88 = bitcast %struct.bdisp_node* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 4, i1 false)
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %45

92:                                               ; preds = %74, %45
  ret void
}

declare dso_local %struct.bdisp_node* @devm_kzalloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
