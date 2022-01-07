; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_wr_rp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_wr_rp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.mt76_reg_pair = type { i32 }

@MT76_STATE_MCU_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i32, %struct.mt76_reg_pair*, i32)* @mt76u_wr_rp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76u_wr_rp(%struct.mt76_dev* %0, i32 %1, %struct.mt76_reg_pair* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt76_reg_pair*, align 8
  %9 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mt76_reg_pair* %2, %struct.mt76_reg_pair** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* @MT76_STATE_MCU_RUNNING, align 4
  %11 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %11, i32 0, i32 1
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %17 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.mt76_dev*, i32, %struct.mt76_reg_pair*, i32)**
  %21 = load i32 (%struct.mt76_dev*, i32, %struct.mt76_reg_pair*, i32)*, i32 (%struct.mt76_dev*, i32, %struct.mt76_reg_pair*, i32)** %20, align 8
  %22 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 %21(%struct.mt76_dev* %22, i32 %23, %struct.mt76_reg_pair* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %33

27:                                               ; preds = %4
  %28 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mt76u_req_wr_rp(%struct.mt76_dev* %28, i32 %29, %struct.mt76_reg_pair* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %27, %15
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76u_req_wr_rp(%struct.mt76_dev*, i32, %struct.mt76_reg_pair*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
