; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_alloc_dev_context_buffer_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_alloc_dev_context_buffer_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.s5p_mfc_buf_size_v6* }
%struct.s5p_mfc_buf_size_v6 = type { i32 }

@BANK_L_CTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate device context buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_alloc_dev_context_buffer_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_alloc_dev_context_buffer_v6(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_buf_size_v6*, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %6 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %11, align 8
  store %struct.s5p_mfc_buf_size_v6* %12, %struct.s5p_mfc_buf_size_v6** %4, align 8
  %13 = call i32 (...) @mfc_debug_enter()
  %14 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, %struct.s5p_mfc_buf_size_v6* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %21 = load i32, i32* @BANK_L_CTX, align 4
  %22 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %22, i32 0, i32 0
  %24 = call i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev* %20, i32 %21, %struct.TYPE_6__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = call i32 @mfc_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %41

30:                                               ; preds = %1
  %31 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.s5p_mfc_buf_size_v6*, %struct.s5p_mfc_buf_size_v6** %4, align 8
  %36 = getelementptr inbounds %struct.s5p_mfc_buf_size_v6, %struct.s5p_mfc_buf_size_v6* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memset(i32 %34, i32 0, i32 %37)
  %39 = call i32 (...) @wmb()
  %40 = call i32 (...) @mfc_debug_leave()
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %30, %27
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @s5p_mfc_alloc_priv_buf(%struct.s5p_mfc_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
