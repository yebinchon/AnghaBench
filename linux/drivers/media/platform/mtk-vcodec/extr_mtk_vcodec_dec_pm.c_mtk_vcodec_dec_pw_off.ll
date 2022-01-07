; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_pm.c_mtk_vcodec_dec_pw_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec_pm.c_mtk_vcodec_dec_pw_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_pm = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"pm_runtime_put_sync fail %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_vcodec_dec_pw_off(%struct.mtk_vcodec_pm* %0) #0 {
  %2 = alloca %struct.mtk_vcodec_pm*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_vcodec_pm* %0, %struct.mtk_vcodec_pm** %2, align 8
  %4 = load %struct.mtk_vcodec_pm*, %struct.mtk_vcodec_pm** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_vcodec_pm, %struct.mtk_vcodec_pm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pm_runtime_put_sync(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
