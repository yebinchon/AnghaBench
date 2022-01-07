; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_free_rxbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_free_rxbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uli526x_board_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"uli526x_free_rxbuffer()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uli526x_board_info*)* @uli526x_free_rxbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_free_rxbuffer(%struct.uli526x_board_info* %0) #0 {
  %2 = alloca %struct.uli526x_board_info*, align 8
  store %struct.uli526x_board_info* %0, %struct.uli526x_board_info** %2, align 8
  %3 = call i32 @ULI526X_DBUG(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %6 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %4
  %10 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %11 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_kfree_skb(i32 %14)
  %16 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %17 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %22 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %21, i32 0, i32 1
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %2, align 8
  %24 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  br label %4

27:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ULI526X_DBUG(i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
