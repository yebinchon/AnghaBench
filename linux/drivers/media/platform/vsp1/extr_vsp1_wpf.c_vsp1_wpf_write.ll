; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_vsp1_wpf_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_vsp1_wpf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_rwpf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vsp1_dl_body = type { i32 }

@VI6_WPF_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_rwpf*, %struct.vsp1_dl_body*, i64, i64)* @vsp1_wpf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_wpf_write(%struct.vsp1_rwpf* %0, %struct.vsp1_dl_body* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vsp1_rwpf*, align 8
  %6 = alloca %struct.vsp1_dl_body*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vsp1_rwpf* %0, %struct.vsp1_rwpf** %5, align 8
  store %struct.vsp1_dl_body* %1, %struct.vsp1_dl_body** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %5, align 8
  %12 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VI6_WPF_OFFSET, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %10, %17
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %9, i64 %18, i64 %19)
  ret void
}

declare dso_local i32 @vsp1_dl_body_write(%struct.vsp1_dl_body*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
