; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_prog_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_nfp_prog_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"instruction limit reached (%u NFP instructions)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32)* @nfp_prog_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_prog_push(%struct.nfp_prog* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_prog*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = udiv i64 %8, 4
  %10 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %11 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  %22 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  br label %38

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %27 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %30 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32 %25, i32* %33, align 4
  %34 = load %struct.nfp_prog*, %struct.nfp_prog** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_prog, %struct.nfp_prog* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
