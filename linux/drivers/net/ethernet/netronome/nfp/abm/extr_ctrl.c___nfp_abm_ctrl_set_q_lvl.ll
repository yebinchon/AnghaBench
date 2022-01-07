; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c___nfp_abm_ctrl_set_q_lvl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c___nfp_abm_ctrl_set_q_lvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nfp_cpp* }
%struct.nfp_cpp = type { i32 }

@NFP_QLVL_STRIDE = common dso_local global i32 0, align 4
@NFP_QLVL_THRS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"RED offload setting level failed on subqueue %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nfp_abm_ctrl_set_q_lvl(%struct.nfp_abm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_abm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_cpp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_abm* %0, %struct.nfp_abm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.nfp_abm*, %struct.nfp_abm** %5, align 8
  %12 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nfp_cpp*, %struct.nfp_cpp** %14, align 8
  store %struct.nfp_cpp* %15, %struct.nfp_cpp** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.nfp_abm*, %struct.nfp_abm** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__clear_bit(i32 %16, i32 %19)
  %21 = load %struct.nfp_abm*, %struct.nfp_abm** %5, align 8
  %22 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NFP_QLVL_STRIDE, align 4
  %34 = mul i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @NFP_QLVL_THRS, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load %struct.nfp_cpp*, %struct.nfp_cpp** %8, align 8
  %39 = load %struct.nfp_abm*, %struct.nfp_abm** %5, align 8
  %40 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @__nfp_rtsym_writel(%struct.nfp_cpp* %38, i32 %41, i32 4, i32 0, i64 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.nfp_cpp*, %struct.nfp_cpp** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @nfp_err(%struct.nfp_cpp* %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %31
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.nfp_abm*, %struct.nfp_abm** %5, align 8
  %55 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %47, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @__nfp_rtsym_writel(%struct.nfp_cpp*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @nfp_err(%struct.nfp_cpp*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
