; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sb_attn_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sb_attn_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_sb_attn_info*, %struct.qed_dev* }
%struct.qed_sb_attn_info = type { i32 }
%struct.qed_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_int_sb_attn_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_int_sb_attn_alloc(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca %struct.qed_sb_attn_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %11 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %10, i32 0, i32 1
  %12 = load %struct.qed_dev*, %struct.qed_dev** %11, align 8
  store %struct.qed_dev* %12, %struct.qed_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.qed_sb_attn_info* @kmalloc(i32 4, i32 %13)
  store %struct.qed_sb_attn_info* %14, %struct.qed_sb_attn_info** %7, align 8
  %15 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %7, align 8
  %16 = icmp ne %struct.qed_sb_attn_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %22 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %26 = call i32 @SB_ATTN_ALIGNED_SIZE(%struct.qed_hwfn* %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dma_alloc_coherent(i32* %24, i32 %26, i32* %8, i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %20
  %32 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %7, align 8
  %33 = call i32 @kfree(%struct.qed_sb_attn_info* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %20
  %37 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %7, align 8
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  store %struct.qed_sb_attn_info* %37, %struct.qed_sb_attn_info** %39, align 8
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %41 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @qed_int_sb_attn_init(%struct.qed_hwfn* %40, %struct.qed_ptt* %41, i8* %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %31, %17
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.qed_sb_attn_info* @kmalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @SB_ATTN_ALIGNED_SIZE(%struct.qed_hwfn*) #1

declare dso_local i32 @kfree(%struct.qed_sb_attn_info*) #1

declare dso_local i32 @qed_int_sb_attn_init(%struct.qed_hwfn*, %struct.qed_ptt*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
