; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_entry_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_entry_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.mvpp2* }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_prs_vid_entry_remove(%struct.mvpp2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 0
  %9 = load %struct.mvpp2*, %struct.mvpp2** %8, align 8
  store %struct.mvpp2* %9, %struct.mvpp2** %5, align 8
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @mvpp2_prs_vid_range_find(%struct.mvpp2_port* %10, i32 %11, i32 4095)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mvpp2_prs_hw_inv(%struct.mvpp2* %17, i32 %18)
  %20 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %21 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @mvpp2_prs_vid_range_find(%struct.mvpp2_port*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_inv(%struct.mvpp2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
