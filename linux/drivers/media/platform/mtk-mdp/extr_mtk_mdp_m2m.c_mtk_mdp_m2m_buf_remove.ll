; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_buf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_m2m.c_mtk_mdp_m2m_buf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mtk_mdp_ctx*, i32)* @mtk_mdp_m2m_buf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mtk_mdp_m2m_buf_remove(%struct.mtk_mdp_ctx* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtk_mdp_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @v4l2_m2m_src_buf_remove(i32 %12)
  store i8* %13, i8** %3, align 8
  br label %19

14:                                               ; preds = %2
  %15 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @v4l2_m2m_dst_buf_remove(i32 %17)
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i8* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local i8* @v4l2_m2m_dst_buf_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
