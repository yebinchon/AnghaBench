; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_is_tx_slot_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_is_tx_slot_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xge_raw_desc = type { i32 }

@E = common dso_local global i32 0, align 4
@PKT_SIZE = common dso_local global i32 0, align 4
@SLOT_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xge_raw_desc*)* @is_tx_slot_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_tx_slot_available(%struct.xge_raw_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xge_raw_desc*, align 8
  store %struct.xge_raw_desc* %0, %struct.xge_raw_desc** %3, align 8
  %4 = load i32, i32* @E, align 4
  %5 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %3, align 8
  %6 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le64_to_cpu(i32 %7)
  %9 = call i64 @GET_BITS(i32 %4, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @PKT_SIZE, align 4
  %13 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %3, align 8
  %14 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le64_to_cpu(i32 %15)
  %17 = call i64 @GET_BITS(i32 %12, i32 %16)
  %18 = load i64, i64* @SLOT_EMPTY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @GET_BITS(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
