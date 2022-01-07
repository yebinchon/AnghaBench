; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_alloc_dec_temp_buffers_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_alloc_dec_temp_buffers_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.TYPE_6__, %struct.s5p_mfc_dev* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.s5p_mfc_buf_size_v5* }
%struct.s5p_mfc_buf_size_v5 = type { i32 }

@BANK_L_CTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate temporary buffer\0A\00", align 1
@MFC_BANK1_ALIGN_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*)* @s5p_mfc_alloc_dec_temp_buffers_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_alloc_dec_temp_buffers_v5(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.s5p_mfc_dev*, align 8
  %5 = alloca %struct.s5p_mfc_buf_size_v5*, align 8
  %6 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %7 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %7, i32 0, i32 1
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  store %struct.s5p_mfc_dev* %9, %struct.s5p_mfc_dev** %4, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.s5p_mfc_buf_size_v5*, %struct.s5p_mfc_buf_size_v5** %15, align 8
  store %struct.s5p_mfc_buf_size_v5* %16, %struct.s5p_mfc_buf_size_v5** %5, align 8
  %17 = load %struct.s5p_mfc_buf_size_v5*, %struct.s5p_mfc_buf_size_v5** %5, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_buf_size_v5, %struct.s5p_mfc_buf_size_v5* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %4, align 8
  %24 = load i32, i32* @BANK_L_CTX, align 4
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 0
  %27 = call i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev* %23, i32 %24, %struct.TYPE_6__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = call i32 @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %1
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MFC_BANK1_ALIGN_ORDER, align 4
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %37, %40
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memset(i32 %46, i32 0, i32 %50)
  %52 = call i32 (...) @wmb()
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %33, %30
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
