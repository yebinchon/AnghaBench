; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fastrpc_user = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.device = type { i32 }
%struct.fastrpc_buf = type { i32, i64, i32, i32*, %struct.device*, %struct.fastrpc_user*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fastrpc_user*, %struct.device*, i32, %struct.fastrpc_buf**)* @fastrpc_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_buf_alloc(%struct.fastrpc_user* %0, %struct.device* %1, i32 %2, %struct.fastrpc_buf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fastrpc_user*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fastrpc_buf**, align 8
  %10 = alloca %struct.fastrpc_buf*, align 8
  store %struct.fastrpc_user* %0, %struct.fastrpc_user** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fastrpc_buf** %3, %struct.fastrpc_buf*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fastrpc_buf* @kzalloc(i32 56, i32 %11)
  store %struct.fastrpc_buf* %12, %struct.fastrpc_buf** %10, align 8
  %13 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %14 = icmp ne %struct.fastrpc_buf* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %89

18:                                               ; preds = %4
  %19 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %20 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %19, i32 0, i32 6
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %23 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %22, i32 0, i32 2
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %26 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %27 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %26, i32 0, i32 5
  store %struct.fastrpc_user* %25, %struct.fastrpc_user** %27, align 8
  %28 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %29 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %31 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %34 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %37 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %36, i32 0, i32 4
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %40 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %43 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %42, i32 0, i32 1
  %44 = bitcast i64* %43 to i32*
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32* @dma_alloc_coherent(%struct.device* %38, i32 %41, i32* %44, i32 %45)
  %47 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %48 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  %49 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %50 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %18
  %54 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %55 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %54, i32 0, i32 2
  %56 = call i32 @mutex_destroy(i32* %55)
  %57 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %58 = call i32 @kfree(%struct.fastrpc_buf* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %89

61:                                               ; preds = %18
  %62 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %63 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp ne %struct.TYPE_2__* %64, null
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %68 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.fastrpc_user*, %struct.fastrpc_user** %6, align 8
  %75 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 32
  %81 = sext i32 %80 to i64
  %82 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %83 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  br label %86

86:                                               ; preds = %73, %66, %61
  %87 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  %88 = load %struct.fastrpc_buf**, %struct.fastrpc_buf*** %9, align 8
  store %struct.fastrpc_buf* %87, %struct.fastrpc_buf** %88, align 8
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %53, %15
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.fastrpc_buf* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.fastrpc_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
