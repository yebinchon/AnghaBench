; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_cbs_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_cbs_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_slave = type { i32 }
%struct.cpsw_priv = type { i32* }

@CPSW_FIFO_SHAPERS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_slave*, %struct.cpsw_priv*)* @cpsw_cbs_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_cbs_resume(%struct.cpsw_slave* %0, %struct.cpsw_priv* %1) #0 {
  %3 = alloca %struct.cpsw_slave*, align 8
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpsw_slave* %0, %struct.cpsw_slave** %3, align 8
  store %struct.cpsw_priv* %1, %struct.cpsw_priv** %4, align 8
  %7 = load i32, i32* @CPSW_FIFO_SHAPERS_NUM, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %13 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %27

22:                                               ; preds = %11
  %23 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @cpsw_set_fifo_rlimit(%struct.cpsw_priv* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  ret void
}

declare dso_local i32 @cpsw_set_fifo_rlimit(%struct.cpsw_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
