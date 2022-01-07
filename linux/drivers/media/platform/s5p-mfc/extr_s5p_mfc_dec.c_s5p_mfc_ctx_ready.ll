; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_ctx_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_ctx_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i64, i64, i64, i64 }

@MFCINST_GOT_INST = common dso_local global i64 0, align 8
@MFCINST_RUNNING = common dso_local global i64 0, align 8
@MFCINST_FINISHING = common dso_local global i64 0, align 8
@MFCINST_HEAD_PARSED = common dso_local global i64 0, align 8
@QUEUE_BUFS_MMAPED = common dso_local global i64 0, align 8
@MFCINST_RES_CHANGE_INIT = common dso_local global i64 0, align 8
@MFCINST_RES_CHANGE_FLUSH = common dso_local global i64 0, align 8
@MFCINST_RES_CHANGE_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"ctx is not ready\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_ctx_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_ctx_ready(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %4 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %5 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp sge i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MFCINST_GOT_INST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %103

15:                                               ; preds = %8, %1
  %16 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MFCINST_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %103

35:                                               ; preds = %26, %20, %15
  %36 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MFCINST_FINISHING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %103

50:                                               ; preds = %41, %35
  %51 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 1
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MFCINST_HEAD_PARSED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QUEUE_BUFS_MMAPED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 1, i32* %2, align 4
  br label %103

68:                                               ; preds = %61, %55, %50
  %69 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MFCINST_RES_CHANGE_INIT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MFCINST_RES_CHANGE_FLUSH, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74, %68
  %81 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 1, i32* %2, align 4
  br label %103

89:                                               ; preds = %80, %74
  %90 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MFCINST_RES_CHANGE_END, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sge i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %2, align 4
  br label %103

101:                                              ; preds = %95, %89
  %102 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %100, %88, %67, %49, %34, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @mfc_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
