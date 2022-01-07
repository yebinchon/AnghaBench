; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_set_tmac_template.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_init.c_mt7603_set_tmac_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_TXD3_REM_TX_COUNT = common dso_local global i32 0, align 4
@MT_TXD5_SW_POWER_MGMT = common dso_local global i32 0, align 4
@MT_CLIENT_BASE_PHYS_ADDR = common dso_local global i32 0, align 4
@MT_CLIENT_TMAC_INFO_TEMPLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_set_tmac_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_set_tmac_template(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca [5 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %6 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* @MT_TXD3_REM_TX_COUNT, align 4
  %9 = call i32 @FIELD_PREP(i32 %8, i32 15)
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* @MT_TXD5_SW_POWER_MGMT, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = getelementptr inbounds i32, i32* %6, i64 5
  br label %15

15:                                               ; preds = %15, %1
  %16 = phi i32* [ %13, %1 ], [ %17, %15 ]
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = icmp eq i32* %17, %14
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %21 = load i32, i32* @MT_CLIENT_BASE_PHYS_ADDR, align 4
  %22 = call i32 @mt7603_reg_map(%struct.mt7603_dev* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @MT_CLIENT_TMAC_INFO_TEMPLATE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %42, %19
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 4, %34
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mt76_wr(%struct.mt7603_dev* %32, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %26

45:                                               ; preds = %26
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt7603_reg_map(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
