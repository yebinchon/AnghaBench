; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_br_relo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_emit_br_relo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32, i32*, i32 }

@BR_UNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BUG: branch defer out of bounds %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@BR_EV_PIP_COND = common dso_local global i32 0, align 4
@BR_EV_PIP_UNCOND = common dso_local global i32 0, align 4
@BR_CSS_NONE = common dso_local global i32 0, align 4
@OP_RELO_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32, i32)* @emit_br_relo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_br_relo(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nfp_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @BR_UNC, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %5
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %23 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %54

24:                                               ; preds = %14, %5
  %25 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BR_UNC, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @BR_EV_PIP_COND, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @BR_EV_PIP_UNCOND, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* @BR_CSS_NONE, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @__emit_br(%struct.nfp_prog* %25, i32 %26, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @OP_RELO_TYPE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @FIELD_PREP(i32 %40, i32 %41)
  %43 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %44 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.nfp_prog*, %struct.nfp_prog** %6, align 8
  %47 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %42
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %34, %17
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @__emit_br(%struct.nfp_prog*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
