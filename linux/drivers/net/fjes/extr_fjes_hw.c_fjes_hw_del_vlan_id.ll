; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_del_vlan_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_del_vlan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epbuf_handler = type { %union.ep_buffer_info* }
%union.ep_buffer_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@EP_BUFFER_SUPPORT_VLAN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fjes_hw_del_vlan_id(%struct.epbuf_handler* %0, i64 %1) #0 {
  %3 = alloca %struct.epbuf_handler*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.ep_buffer_info*, align 8
  %6 = alloca i32, align 4
  store %struct.epbuf_handler* %0, %struct.epbuf_handler** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.epbuf_handler*, %struct.epbuf_handler** %3, align 8
  %8 = getelementptr inbounds %struct.epbuf_handler, %struct.epbuf_handler* %7, i32 0, i32 0
  %9 = load %union.ep_buffer_info*, %union.ep_buffer_info** %8, align 8
  store %union.ep_buffer_info* %9, %union.ep_buffer_info** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 0, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @EP_BUFFER_SUPPORT_VLAN_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = load %union.ep_buffer_info*, %union.ep_buffer_info** %5, align 8
  %20 = bitcast %union.ep_buffer_info* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %18, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load %union.ep_buffer_info*, %union.ep_buffer_info** %5, align 8
  %30 = bitcast %union.ep_buffer_info* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
