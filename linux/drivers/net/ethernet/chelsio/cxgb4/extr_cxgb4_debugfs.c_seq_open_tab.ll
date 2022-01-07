; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_seq_open_tab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_seq_open_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_tab = type { i32 (%struct.seq_file*, i8*, i32)*, i32, i32, i32 }
%struct.seq_file = type opaque
%struct.file = type { i32 }
%struct.seq_file.0 = type opaque

@seq_tab_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.seq_tab* @seq_open_tab(%struct.file* %0, i32 %1, i32 %2, i32 %3, i32 (%struct.seq_file.0*, i8*, i32)* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.seq_file.0*, i8*, i32)*, align 8
  %11 = alloca %struct.seq_tab*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 (%struct.seq_file.0*, i8*, i32)* %4, i32 (%struct.seq_file.0*, i8*, i32)** %10, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = add i64 24, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.seq_tab* @__seq_open_private(%struct.file* %12, i32* @seq_tab_ops, i32 %18)
  store %struct.seq_tab* %19, %struct.seq_tab** %11, align 8
  %20 = load %struct.seq_tab*, %struct.seq_tab** %11, align 8
  %21 = icmp ne %struct.seq_tab* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %5
  %23 = load i32 (%struct.seq_file.0*, i8*, i32)*, i32 (%struct.seq_file.0*, i8*, i32)** %10, align 8
  %24 = bitcast i32 (%struct.seq_file.0*, i8*, i32)* %23 to i32 (%struct.seq_file*, i8*, i32)*
  %25 = load %struct.seq_tab*, %struct.seq_tab** %11, align 8
  %26 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %25, i32 0, i32 0
  store i32 (%struct.seq_file*, i8*, i32)* %24, i32 (%struct.seq_file*, i8*, i32)** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.seq_tab*, %struct.seq_tab** %11, align 8
  %29 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.seq_tab*, %struct.seq_tab** %11, align 8
  %32 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.seq_tab*, %struct.seq_tab** %11, align 8
  %37 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %22, %5
  %39 = load %struct.seq_tab*, %struct.seq_tab** %11, align 8
  ret %struct.seq_tab* %39
}

declare dso_local %struct.seq_tab* @__seq_open_private(%struct.file*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
