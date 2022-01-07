; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_alloc_instance_buffer_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_alloc_instance_buffer_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, %struct.TYPE_6__, %struct.s5p_mfc_dev* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.s5p_mfc_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.s5p_mfc_buf_size_v6* }
%struct.s5p_mfc_buf_size_v6 = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Codec type(%d) should be checked!\0A\00", align 1
@BANK_L_CTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to allocate instance buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_alloc_instance_buffer_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_alloc_instance_buffer_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_buf_size_v6*, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 2
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %4, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %15, align 8
  store %struct.s5p_mfc_buf_size_v6* %16, %struct.s5p_mfc_buf_size_v6** %5, align 8
  %17 = call i32 (...) @mfc_debug_enter()
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %56 [
    i32 140, label %21
    i32 138, label %21
    i32 137, label %21
    i32 134, label %28
    i32 142, label %28
    i32 132, label %28
    i32 131, label %28
    i32 135, label %28
    i32 130, label %28
    i32 128, label %28
    i32 139, label %35
    i32 136, label %42
    i32 133, label %49
    i32 141, label %49
    i32 129, label %49
  ]

21:                                               ; preds = %1, %1, %1
  %22 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %5, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, %struct.s5p_mfc_buf_size_v6* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %64

28:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %29 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %5, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, %struct.s5p_mfc_buf_size_v6* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %64

35:                                               ; preds = %1
  %36 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %5, align 8
  %37 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, %struct.s5p_mfc_buf_size_v6* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %64

42:                                               ; preds = %1
  %43 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %5, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, %struct.s5p_mfc_buf_size_v6* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %64

49:                                               ; preds = %1, %1, %1
  %50 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %5, align 8
  %51 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, %struct.s5p_mfc_buf_size_v6* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %54 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %64

56:                                               ; preds = %1
  %57 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  %60 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %56, %49, %42, %35, %28, %21
  %65 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %66 = load i32, i32* @BANK_L_CTX, align 4
  %67 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %67, i32 0, i32 1
  %69 = call i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev* %65, i32 %66, %struct.TYPE_6__* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %87

75:                                               ; preds = %64
  %76 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @memset(i32 %79, i32 0, i32 %83)
  %85 = call i32 (...) @wmb()
  %86 = call i32 (...) @mfc_debug_leave()
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %75, %72
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
