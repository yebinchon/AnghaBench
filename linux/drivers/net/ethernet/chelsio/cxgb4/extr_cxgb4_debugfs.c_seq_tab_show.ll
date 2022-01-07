; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_seq_tab_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_seq_tab_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.seq_tab* }
%struct.seq_tab = type { i32 (%struct.seq_file.0*, i8*, i32)*, i8*, i32 }
%struct.seq_file.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @seq_tab_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_tab_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.seq_tab*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.seq_tab*, %struct.seq_tab** %7, align 8
  store %struct.seq_tab* %8, %struct.seq_tab** %5, align 8
  %9 = load %struct.seq_tab*, %struct.seq_tab** %5, align 8
  %10 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %9, i32 0, i32 0
  %11 = load i32 (%struct.seq_file.0*, i8*, i32)*, i32 (%struct.seq_file.0*, i8*, i32)** %10, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = bitcast %struct.seq_file* %12 to %struct.seq_file.0*
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.seq_tab*, %struct.seq_tab** %5, align 8
  %17 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = ptrtoint i8* %15 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = load %struct.seq_tab*, %struct.seq_tab** %5, align 8
  %23 = getelementptr inbounds %struct.seq_tab, %struct.seq_tab* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = sdiv i64 %21, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 %11(%struct.seq_file.0* %13, i8* %14, i32 %27)
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
