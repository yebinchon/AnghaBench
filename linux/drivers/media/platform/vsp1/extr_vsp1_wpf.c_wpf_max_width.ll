; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_max_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_max_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_rwpf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_entity*, %struct.vsp1_pipeline*)* @wpf_max_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpf_max_width(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1) #0 {
  %3 = alloca %struct.vsp1_entity*, align 8
  %4 = alloca %struct.vsp1_pipeline*, align 8
  %5 = alloca %struct.vsp1_rwpf*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %3, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %4, align 8
  %6 = load %struct.vsp1_entity*, %struct.vsp1_entity** %3, align 8
  %7 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %6, i32 0, i32 0
  %8 = call %struct.vsp1_rwpf* @to_rwpf(i32* %7)
  store %struct.vsp1_rwpf* %8, %struct.vsp1_rwpf** %5, align 8
  %9 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %5, align 8
  %10 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %5, align 8
  %17 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ 256, %14 ], [ %18, %15 ]
  ret i32 %20
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
