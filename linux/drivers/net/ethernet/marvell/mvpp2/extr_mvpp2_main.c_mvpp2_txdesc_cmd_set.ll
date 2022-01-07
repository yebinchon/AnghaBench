; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txdesc_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txdesc_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mvpp2_tx_desc = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@MVPP21 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_tx_desc*, i32)* @mvpp2_txdesc_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_txdesc_cmd_set(%struct.mvpp2_port* %0, %struct.mvpp2_tx_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.mvpp2_tx_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.mvpp2_tx_desc* %1, %struct.mvpp2_tx_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MVPP21, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %5, align 8
  %18 = getelementptr inbounds %struct.mvpp2_tx_desc, %struct.mvpp2_tx_desc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %5, align 8
  %24 = getelementptr inbounds %struct.mvpp2_tx_desc, %struct.mvpp2_tx_desc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  br label %26

26:                                               ; preds = %20, %14
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
