; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_msg_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_msg_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i64, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_msg_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_msg_task(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 1
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %7
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @igb_check_for_rst(%struct.e1000_hw* %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @igb_vf_reset_event(%struct.igb_adapter* %19, i64 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @igb_check_for_msg(%struct.e1000_hw* %23, i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @igb_rcv_msg_from_vf(%struct.igb_adapter* %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @igb_check_for_ack(%struct.e1000_hw* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @igb_rcv_ack_from_vf(%struct.igb_adapter* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %7

44:                                               ; preds = %7
  ret void
}

declare dso_local i32 @igb_check_for_rst(%struct.e1000_hw*, i64) #1

declare dso_local i32 @igb_vf_reset_event(%struct.igb_adapter*, i64) #1

declare dso_local i32 @igb_check_for_msg(%struct.e1000_hw*, i64) #1

declare dso_local i32 @igb_rcv_msg_from_vf(%struct.igb_adapter*, i64) #1

declare dso_local i32 @igb_check_for_ack(%struct.e1000_hw*, i64) #1

declare dso_local i32 @igb_rcv_ack_from_vf(%struct.igb_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
