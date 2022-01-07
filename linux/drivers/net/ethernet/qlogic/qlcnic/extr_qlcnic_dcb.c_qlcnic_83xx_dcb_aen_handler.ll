; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_83xx_dcb_aen_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_83xx_dcb_aen_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { i32, i32, i32 }

@QLCNIC_DCB_AEN_MODE = common dso_local global i32 0, align 4
@BIT_8 = common dso_local global i32 0, align 4
@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_dcb*, i8*)* @qlcnic_83xx_dcb_aen_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_dcb_aen_handler(%struct.qlcnic_dcb* %0, i8* %1) #0 {
  %3 = alloca %struct.qlcnic_dcb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* @QLCNIC_DCB_AEN_MODE, align 4
  %9 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %9, i32 0, i32 2
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %37

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BIT_8, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %22 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %22, i32 0, i32 2
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  br label %30

25:                                               ; preds = %14
  %26 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %27 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %28 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %27, i32 0, i32 2
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %32 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %35 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %34, i32 0, i32 0
  %36 = call i32 @queue_delayed_work(i32 %33, i32* %35, i32 0)
  br label %37

37:                                               ; preds = %30, %13
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
