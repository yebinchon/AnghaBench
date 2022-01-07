; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_sfe4001_check_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_sfe4001_check_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@P1_IN = common dso_local global i32 0, align 4
@P1_AFE_PWD_LBN = common dso_local global i32 0, align 4
@P1_DSP_PWD25_LBN = common dso_local global i32 0, align 4
@PHY_MODE_OFF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @sfe4001_check_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe4001_check_hw(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.falcon_nic_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 1
  %8 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %7, align 8
  store %struct.falcon_nic_data* %8, %struct.falcon_nic_data** %4, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %10 = call i64 @EF4_WORKAROUND_7884(%struct.ef4_nic* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %4, align 8
  %14 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %53

18:                                               ; preds = %12, %1
  %19 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %20 = call %struct.TYPE_2__* @falcon_board(%struct.ef4_nic* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @P1_IN, align 4
  %24 = call i32 @i2c_smbus_read_byte_data(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @P1_AFE_PWD_LBN, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* @P1_DSP_PWD25_LBN, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %53

37:                                               ; preds = %27, %18
  %38 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %39 = call i32 @sfe4001_poweroff(%struct.ef4_nic* %38)
  %40 = load i32, i32* @PHY_MODE_OFF, align 4
  %41 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %42 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  br label %51

48:                                               ; preds = %37
  %49 = load i32, i32* @ERANGE, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %36, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @EF4_WORKAROUND_7884(%struct.ef4_nic*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local %struct.TYPE_2__* @falcon_board(%struct.ef4_nic*) #1

declare dso_local i32 @sfe4001_poweroff(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
