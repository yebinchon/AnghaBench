; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_ipg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_ipg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i64, i32, i32 }

@GM_SERIAL_MODE = common dso_local global i32 0, align 4
@GM_SMOD_IPG_MSK = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@IPG_DATA_DEF_1000 = common dso_local global i32 0, align 4
@IPG_DATA_DEF_10_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_set_ipg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_set_ipg(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %4 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %5 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %8 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GM_SERIAL_MODE, align 4
  %11 = call i32 @gma_read16(i32 %6, i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @GM_SMOD_IPG_MSK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %17 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SPEED_100, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @IPG_DATA_DEF_1000, align 4
  %23 = call i32 @IPG_DATA_VAL(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @IPG_DATA_DEF_10_100, align 4
  %28 = call i32 @IPG_DATA_VAL(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %33 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %36 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GM_SERIAL_MODE, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @gma_write16(i32 %34, i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @gma_read16(i32, i32, i32) #1

declare dso_local i32 @IPG_DATA_VAL(i32) #1

declare dso_local i32 @gma_write16(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
