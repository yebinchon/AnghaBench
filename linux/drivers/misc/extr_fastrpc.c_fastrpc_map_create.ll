; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_map_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_map_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fastrpc_user = type { i32, i32, %struct.fastrpc_session_ctx* }
%struct.fastrpc_session_ctx = type { i64, i32 }
%struct.fastrpc_map = type { i32, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_11__*, i32, %struct.fastrpc_user* }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to attach dmabuf\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fastrpc_user*, i32, i32, %struct.fastrpc_map**)* @fastrpc_map_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_map_create(%struct.fastrpc_user* %0, i32 %1, i32 %2, %struct.fastrpc_map** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fastrpc_user*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fastrpc_map**, align 8
  %10 = alloca %struct.fastrpc_session_ctx*, align 8
  %11 = alloca %struct.fastrpc_map*, align 8
  %12 = alloca i32, align 4
  store %struct.fastrpc_user* %0, %struct.fastrpc_user** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fastrpc_map** %3, %struct.fastrpc_map*** %9, align 8
  %13 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %14 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %13, i32 0, i32 2
  %15 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %14, align 8
  store %struct.fastrpc_session_ctx* %15, %struct.fastrpc_session_ctx** %10, align 8
  store %struct.fastrpc_map* null, %struct.fastrpc_map** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.fastrpc_map**, %struct.fastrpc_map*** %9, align 8
  %19 = call i32 @fastrpc_map_find(%struct.fastrpc_user* %16, i32 %17, %struct.fastrpc_map** %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %163

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.fastrpc_map* @kzalloc(i32 64, i32 %23)
  store %struct.fastrpc_map* %24, %struct.fastrpc_map** %11, align 8
  %25 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %26 = icmp ne %struct.fastrpc_map* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %163

30:                                               ; preds = %22
  %31 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %32 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %31, i32 0, i32 6
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %35 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %36 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %35, i32 0, i32 10
  store %struct.fastrpc_user* %34, %struct.fastrpc_user** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %39 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.TYPE_11__* @dma_buf_get(i32 %40)
  %42 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %43 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %42, i32 0, i32 4
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %43, align 8
  %44 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %45 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %44, i32 0, i32 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = call i64 @IS_ERR(%struct.TYPE_11__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %51 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %50, i32 0, i32 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.TYPE_11__* %52)
  store i32 %53, i32* %12, align 4
  br label %159

54:                                               ; preds = %30
  %55 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %56 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %55, i32 0, i32 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %10, align 8
  %59 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.TYPE_11__* @dma_buf_attach(%struct.TYPE_11__* %57, i32 %60)
  %62 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %63 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %62, i32 0, i32 5
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %63, align 8
  %64 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %65 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %64, i32 0, i32 5
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i64 @IS_ERR(%struct.TYPE_11__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %54
  %70 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %10, align 8
  %71 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %75 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %74, i32 0, i32 5
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = call i32 @PTR_ERR(%struct.TYPE_11__* %76)
  store i32 %77, i32* %12, align 4
  br label %154

78:                                               ; preds = %54
  %79 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %80 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %79, i32 0, i32 5
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %83 = call %struct.TYPE_11__* @dma_buf_map_attachment(%struct.TYPE_11__* %81, i32 %82)
  %84 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %85 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %84, i32 0, i32 8
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %85, align 8
  %86 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %87 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %86, i32 0, i32 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = call i64 @IS_ERR(%struct.TYPE_11__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %93 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %92, i32 0, i32 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = call i32 @PTR_ERR(%struct.TYPE_11__* %94)
  store i32 %95, i32* %12, align 4
  br label %146

96:                                               ; preds = %78
  %97 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %98 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %97, i32 0, i32 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sg_dma_address(i32 %101)
  %103 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %104 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %106 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %105, i32 0, i32 2
  %107 = load %struct.fastrpc_session_ctx*, %struct.fastrpc_session_ctx** %106, align 8
  %108 = getelementptr inbounds %struct.fastrpc_session_ctx, %struct.fastrpc_session_ctx* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 %110, 32
  %112 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %113 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %118 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %120 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %119, i32 0, i32 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @sg_virt(i32 %123)
  %125 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %126 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %129 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %131 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %130, i32 0, i32 7
  %132 = call i32 @kref_init(i32* %131)
  %133 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %134 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %133, i32 0, i32 0
  %135 = call i32 @spin_lock(i32* %134)
  %136 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %137 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %136, i32 0, i32 6
  %138 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %139 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %138, i32 0, i32 1
  %140 = call i32 @list_add_tail(i32* %137, i32* %139)
  %141 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %142 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %145 = load %struct.fastrpc_map**, %struct.fastrpc_map*** %9, align 8
  store %struct.fastrpc_map* %144, %struct.fastrpc_map** %145, align 8
  store i32 0, i32* %5, align 4
  br label %163

146:                                              ; preds = %91
  %147 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %148 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %147, i32 0, i32 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %151 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %150, i32 0, i32 5
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = call i32 @dma_buf_detach(%struct.TYPE_11__* %149, %struct.TYPE_11__* %152)
  br label %154

154:                                              ; preds = %146, %69
  %155 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %156 = getelementptr inbounds %struct.fastrpc_map, %struct.fastrpc_map* %155, i32 0, i32 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = call i32 @dma_buf_put(%struct.TYPE_11__* %157)
  br label %159

159:                                              ; preds = %154, %49
  %160 = load %struct.fastrpc_map*, %struct.fastrpc_map** %11, align 8
  %161 = call i32 @kfree(%struct.fastrpc_map* %160)
  %162 = load i32, i32* %12, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %159, %96, %27, %21
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @fastrpc_map_find(%struct.fastrpc_user*, i32, %struct.fastrpc_map**) #1

declare dso_local %struct.fastrpc_map* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.TYPE_11__* @dma_buf_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_11__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @dma_buf_attach(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @dma_buf_map_attachment(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sg_dma_address(i32) #1

declare dso_local i32 @sg_virt(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dma_buf_detach(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @dma_buf_put(%struct.TYPE_11__*) #1

declare dso_local i32 @kfree(%struct.fastrpc_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
