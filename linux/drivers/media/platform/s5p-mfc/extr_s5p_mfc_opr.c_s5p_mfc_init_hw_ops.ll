; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_init_hw_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_init_hw_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i32 }

@s5p_mfc_ops = common dso_local global i32 0, align 4
@S5P_FIMV_ERR_WARNINGS_START_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_ERR_WARNINGS_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_mfc_init_hw_ops(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %2, align 8
  %3 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %4 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call i32 (...) @s5p_mfc_init_hw_ops_v6()
  store i32 %7, i32* @s5p_mfc_ops, align 4
  %8 = load i32, i32* @S5P_FIMV_ERR_WARNINGS_START_V6, align 4
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  br label %16

11:                                               ; preds = %1
  %12 = call i32 (...) @s5p_mfc_init_hw_ops_v5()
  store i32 %12, i32* @s5p_mfc_ops, align 4
  %13 = load i32, i32* @S5P_FIMV_ERR_WARNINGS_START, align 4
  %14 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %15 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %11, %6
  %17 = load i32, i32* @s5p_mfc_ops, align 4
  %18 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_init_hw_ops_v6(...) #1

declare dso_local i32 @s5p_mfc_init_hw_ops_v5(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
