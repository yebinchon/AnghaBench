; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_sw_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_sw_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@ICE_BLK_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*)* @ice_init_sw_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_init_sw_db(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ICE_BLK_COUNT, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ice_init_sw_xlt1_db(%struct.ice_hw* %9, i32 %11)
  %13 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @ice_init_sw_xlt2_db(%struct.ice_hw* %13, i32 %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i64, i64* %3, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %3, align 8
  br label %4

20:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ice_init_sw_xlt1_db(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_init_sw_xlt2_db(%struct.ice_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
