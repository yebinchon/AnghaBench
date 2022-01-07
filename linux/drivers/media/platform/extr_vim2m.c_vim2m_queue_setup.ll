; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vim2m_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.vim2m_ctx = type { i32 }
%struct.vim2m_q_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MEM2MEM_VID_MEM_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: get %d buffer(s) of size %d each.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @vim2m_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vim2m_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.vim2m_ctx*, align 8
  %13 = alloca %struct.vim2m_q_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %17 = call %struct.vim2m_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %16)
  store %struct.vim2m_ctx* %17, %struct.vim2m_ctx** %12, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %12, align 8
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %22 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.vim2m_q_data* @get_q_data(%struct.vim2m_ctx* %20, i32 %23)
  store %struct.vim2m_q_data* %24, %struct.vim2m_q_data** %13, align 8
  %25 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %13, align 8
  %26 = icmp ne %struct.vim2m_q_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %87

30:                                               ; preds = %5
  %31 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %13, align 8
  %32 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %13, align 8
  %35 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.vim2m_q_data*, %struct.vim2m_q_data** %13, align 8
  %39 = getelementptr inbounds %struct.vim2m_q_data, %struct.vim2m_q_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = ashr i32 %43, 3
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %51, %30
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = mul i32 %46, %47
  %49 = load i32, i32* @MEM2MEM_VID_MEM_LIMIT, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %15, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %15, align 4
  br label %45

54:                                               ; preds = %45
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %66
  %71 = phi i32 [ %68, %66 ], [ 0, %69 ]
  store i32 %71, i32* %6, align 4
  br label %87

72:                                               ; preds = %54
  %73 = load i32*, i32** %9, align 8
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %12, align 8
  %78 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %81 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @type_name(i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @dprintk(i32 %79, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %72, %70, %27
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.vim2m_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.vim2m_q_data* @get_q_data(%struct.vim2m_ctx*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @type_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
