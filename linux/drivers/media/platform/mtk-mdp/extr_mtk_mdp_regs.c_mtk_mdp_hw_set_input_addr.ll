; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_input_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-mdp/extr_mtk_mdp_regs.c_mtk_mdp_hw_set_input_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_mdp_ctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mdp_buffer }
%struct.mdp_buffer = type { i64* }
%struct.mtk_mdp_addr = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_mdp_hw_set_input_addr(%struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_addr* %1) #0 {
  %3 = alloca %struct.mtk_mdp_ctx*, align 8
  %4 = alloca %struct.mtk_mdp_addr*, align 8
  %5 = alloca %struct.mdp_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.mtk_mdp_ctx* %0, %struct.mtk_mdp_ctx** %3, align 8
  store %struct.mtk_mdp_addr* %1, %struct.mtk_mdp_addr** %4, align 8
  %7 = load %struct.mtk_mdp_ctx*, %struct.mtk_mdp_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_mdp_ctx, %struct.mtk_mdp_ctx* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.mdp_buffer* %11, %struct.mdp_buffer** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %33, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mtk_mdp_addr*, %struct.mtk_mdp_addr** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_mdp_addr, %struct.mtk_mdp_addr* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i64* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %12
  %20 = load %struct.mtk_mdp_addr*, %struct.mtk_mdp_addr** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_mdp_addr, %struct.mtk_mdp_addr* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mdp_buffer*, %struct.mdp_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.mdp_buffer, %struct.mdp_buffer* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 %26, i64* %32, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %12

36:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
