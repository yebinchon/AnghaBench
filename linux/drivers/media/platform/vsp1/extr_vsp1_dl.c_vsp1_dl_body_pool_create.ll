; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_body_pool = type { i64, i32, i32, i64, i64, i64, %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool*, i32, %struct.vsp1_device* }
%struct.vsp1_device = type { i32 }
%struct.vsp1_dl_body = type { i64, i32, i32, i64, i64, i64, %struct.vsp1_dl_body*, %struct.vsp1_dl_body*, i32, %struct.vsp1_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_dl_body_pool* @vsp1_dl_body_pool_create(%struct.vsp1_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vsp1_dl_body_pool*, align 8
  %6 = alloca %struct.vsp1_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.vsp1_dl_body_pool*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vsp1_dl_body*, align 8
  store %struct.vsp1_device* %0, %struct.vsp1_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.vsp1_dl_body_pool* @kzalloc(i32 72, i32 %14)
  store %struct.vsp1_dl_body_pool* %15, %struct.vsp1_dl_body_pool** %10, align 8
  %16 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %17 = icmp ne %struct.vsp1_dl_body_pool* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store %struct.vsp1_dl_body_pool* null, %struct.vsp1_dl_body_pool** %5, align 8
  br label %126

19:                                               ; preds = %4
  %20 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %21 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %22 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %21, i32 0, i32 9
  store %struct.vsp1_device* %20, %struct.vsp1_device** %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %28, %30
  %32 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %33 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.vsp1_dl_body_pool* @kcalloc(i32 %34, i32 72, i32 %35)
  %37 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %38 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %37, i32 0, i32 7
  store %struct.vsp1_dl_body_pool* %36, %struct.vsp1_dl_body_pool** %38, align 8
  %39 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %40 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %39, i32 0, i32 7
  %41 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %40, align 8
  %42 = icmp ne %struct.vsp1_dl_body_pool* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %19
  %44 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %45 = call i32 @kfree(%struct.vsp1_dl_body_pool* %44)
  store %struct.vsp1_dl_body_pool* null, %struct.vsp1_dl_body_pool** %5, align 8
  br label %126

46:                                               ; preds = %19
  %47 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %48 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %51 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %54 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %53, i32 0, i32 5
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i64 @dma_alloc_wc(i32 %49, i64 %52, i64* %54, i32 %55)
  %57 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %58 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %60 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %46
  %64 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %65 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %64, i32 0, i32 7
  %66 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %65, align 8
  %67 = call i32 @kfree(%struct.vsp1_dl_body_pool* %66)
  %68 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %69 = call i32 @kfree(%struct.vsp1_dl_body_pool* %68)
  store %struct.vsp1_dl_body_pool* null, %struct.vsp1_dl_body_pool** %5, align 8
  br label %126

70:                                               ; preds = %46
  %71 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %72 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %71, i32 0, i32 8
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %75 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %74, i32 0, i32 2
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %121, %70
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %77
  %82 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %83 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %82, i32 0, i32 7
  %84 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %84, i64 %86
  %88 = bitcast %struct.vsp1_dl_body_pool* %87 to %struct.vsp1_dl_body*
  store %struct.vsp1_dl_body* %88, %struct.vsp1_dl_body** %13, align 8
  %89 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %90 = bitcast %struct.vsp1_dl_body_pool* %89 to %struct.vsp1_dl_body*
  %91 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %13, align 8
  %92 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %91, i32 0, i32 6
  store %struct.vsp1_dl_body* %90, %struct.vsp1_dl_body** %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %13, align 8
  %95 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %97 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %11, align 8
  %102 = mul i64 %100, %101
  %103 = add i64 %98, %102
  %104 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %13, align 8
  %105 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  %106 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %107 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %11, align 8
  %112 = mul i64 %110, %111
  %113 = add i64 %108, %112
  %114 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %13, align 8
  %115 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %114, i32 0, i32 4
  store i64 %113, i64* %115, align 8
  %116 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %13, align 8
  %117 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %116, i32 0, i32 2
  %118 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  %119 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %118, i32 0, i32 2
  %120 = call i32 @list_add_tail(i32* %117, i32* %119)
  br label %121

121:                                              ; preds = %81
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %77

124:                                              ; preds = %77
  %125 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %10, align 8
  store %struct.vsp1_dl_body_pool* %125, %struct.vsp1_dl_body_pool** %5, align 8
  br label %126

126:                                              ; preds = %124, %63, %43, %18
  %127 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %5, align 8
  ret %struct.vsp1_dl_body_pool* %127
}

declare dso_local %struct.vsp1_dl_body_pool* @kzalloc(i32, i32) #1

declare dso_local %struct.vsp1_dl_body_pool* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vsp1_dl_body_pool*) #1

declare dso_local i64 @dma_alloc_wc(i32, i64, i64*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
