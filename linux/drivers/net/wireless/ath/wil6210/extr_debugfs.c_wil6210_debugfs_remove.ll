; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil6210_debugfs_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil6210_debugfs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil6210_debugfs_remove(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %4 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %5 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @debugfs_remove_recursive(i32* %6)
  %8 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %9 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %8, i32 0, i32 3
  store i32* null, i32** %9, align 8
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %11 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kfree(i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %31, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %23 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %36 = call i32 @wil_pmc_free(%struct.wil6210_priv* %35, i32 0)
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wil_pmc_free(%struct.wil6210_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
