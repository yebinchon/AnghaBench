; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_node_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dynack.c_ath_dynack_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath_dynack }
%struct.ath_dynack = type { i32, i32, i32 }
%struct.ath_node = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_dynack_node_init(%struct.ath_hw* %0, %struct.ath_node* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_node*, align 8
  %5 = alloca %struct.ath_dynack*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_node* %1, %struct.ath_node** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  store %struct.ath_dynack* %7, %struct.ath_dynack** %5, align 8
  %8 = load %struct.ath_dynack*, %struct.ath_dynack** %5, align 8
  %9 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %12 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ath_dynack*, %struct.ath_dynack** %5, align 8
  %14 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %17 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %16, i32 0, i32 0
  %18 = load %struct.ath_dynack*, %struct.ath_dynack** %5, align 8
  %19 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.ath_dynack*, %struct.ath_dynack** %5, align 8
  %22 = getelementptr inbounds %struct.ath_dynack, %struct.ath_dynack* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
