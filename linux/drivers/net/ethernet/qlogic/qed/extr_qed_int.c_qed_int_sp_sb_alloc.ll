; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sp_sb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sp_sb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_sb_sp_info*, %struct.TYPE_3__* }
%struct.qed_sb_sp_info = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_ptt = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_SP_SB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_int_sp_sb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_int_sp_sb_alloc(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_sb_sp_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.qed_sb_sp_info* @kmalloc(i32 8, i32 %9)
  store %struct.qed_sb_sp_info* %10, %struct.qed_sb_sp_info** %6, align 8
  %11 = load %struct.qed_sb_sp_info*, %struct.qed_sb_sp_info** %6, align 8
  %12 = icmp ne %struct.qed_sb_sp_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = call i32 @SB_ALIGNED_SIZE(%struct.qed_hwfn* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @dma_alloc_coherent(i32* %22, i32 %24, i32* %7, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = load %struct.qed_sb_sp_info*, %struct.qed_sb_sp_info** %6, align 8
  %31 = call i32 @kfree(%struct.qed_sb_sp_info* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %16
  %35 = load %struct.qed_sb_sp_info*, %struct.qed_sb_sp_info** %6, align 8
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %37 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %36, i32 0, i32 0
  store %struct.qed_sb_sp_info* %35, %struct.qed_sb_sp_info** %37, align 8
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %40 = load %struct.qed_sb_sp_info*, %struct.qed_sb_sp_info** %6, align 8
  %41 = getelementptr inbounds %struct.qed_sb_sp_info, %struct.qed_sb_sp_info* %40, i32 0, i32 1
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @QED_SP_SB_ID, align 4
  %45 = call i32 @qed_int_sb_init(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32* %41, i8* %42, i32 %43, i32 %44)
  %46 = load %struct.qed_sb_sp_info*, %struct.qed_sb_sp_info** %6, align 8
  %47 = getelementptr inbounds %struct.qed_sb_sp_info, %struct.qed_sb_sp_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %34, %29, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.qed_sb_sp_info* @kmalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @SB_ALIGNED_SIZE(%struct.qed_hwfn*) #1

declare dso_local i32 @kfree(%struct.qed_sb_sp_info*) #1

declare dso_local i32 @qed_int_sb_init(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i8*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
