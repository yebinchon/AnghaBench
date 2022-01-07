; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_alloc_instance_buffer_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_alloc_instance_buffer_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i64, %struct.TYPE_7__, %struct.TYPE_7__, %struct.s5p_mfc_dev* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.s5p_mfc_buf_size_v5* }
%struct.s5p_mfc_buf_size_v5 = type { i32, i32, i32 }

@S5P_MFC_CODEC_H264_DEC = common dso_local global i64 0, align 8
@S5P_MFC_CODEC_H264_ENC = common dso_local global i64 0, align 8
@BANK_L_CTX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate instance buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to allocate shared memory buffer\0A\00", align 1
@MFC_BANK1_ALIGN_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_alloc_instance_buffer_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_alloc_instance_buffer_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_buf_size_v5*, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 3
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %4, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.s5p_mfc_buf_size_v5*, %struct.s5p_mfc_buf_size_v5** %15, align 8
  store %struct.s5p_mfc_buf_size_v5* %16, %struct.s5p_mfc_buf_size_v5** %5, align 8
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @S5P_MFC_CODEC_H264_DEC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @S5P_MFC_CODEC_H264_ENC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22, %1
  %29 = load %struct.s5p_mfc_buf_size_v5*, %struct.s5p_mfc_buf_size_v5** %5, align 8
  %30 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, %struct.s5p_mfc_buf_size_v5* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load %struct.s5p_mfc_buf_size_v5*, %struct.s5p_mfc_buf_size_v5** %5, align 8
  %37 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, %struct.s5p_mfc_buf_size_v5* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %44 = load i64, i64* @BANK_L_CTX, align 8
  %45 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %45, i32 0, i32 2
  %47 = call i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev* %43, i64 %44, %struct.TYPE_7__* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = call i32 @mfc_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %125

53:                                               ; preds = %42
  %54 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @OFFSETA(i32 %57)
  %59 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memset(i32 %65, i32 0, i32 %69)
  %71 = call i32 (...) @wmb()
  %72 = load %struct.s5p_mfc_buf_size_v5*, %struct.s5p_mfc_buf_size_v5** %5, align 8
  %73 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, %struct.s5p_mfc_buf_size_v5* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %79 = load i64, i64* @BANK_L_CTX, align 8
  %80 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %80, i32 0, i32 1
  %82 = call i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev* %78, i64 %79, %struct.TYPE_7__* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %53
  %86 = call i32 @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %88 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %88, i32 0, i32 2
  %90 = call i32 @s5p_mfc_release_priv_buf(%struct.s5p_mfc_dev* %87, %struct.TYPE_7__* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %125

92:                                               ; preds = %53
  %93 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %98 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @BANK_L_CTX, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %96, %102
  %104 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MFC_BANK1_ALIGN_ORDER, align 4
  %112 = shl i32 1, %111
  %113 = sub nsw i32 %112, 1
  %114 = and i32 %110, %113
  %115 = call i32 @BUG_ON(i32 %114)
  %116 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.s5p_mfc_buf_size_v5*, %struct.s5p_mfc_buf_size_v5** %5, align 8
  %121 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, %struct.s5p_mfc_buf_size_v5* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @memset(i32 %119, i32 0, i32 %122)
  %124 = call i32 (...) @wmb()
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %92, %85, %50
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev*, i64, %struct.TYPE_7__*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @OFFSETA(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @s5p_mfc_release_priv_buf(%struct.s5p_mfc_dev*, %struct.TYPE_7__*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
