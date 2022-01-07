; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fwding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fwding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i64, i32, i32, i32 }

@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error (%d) port VLAN l2 group for pport %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32)* @ofdpa_port_fwding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_fwding(%struct.ofdpa_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %12 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BR_STATE_LEARNING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %18 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %16, %2
  %27 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %28 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %30

30:                                               ; preds = %64, %26
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @VLAN_N_VID, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %37 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @test_bit(i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %64

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @htons(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ofdpa_vlan_id_is_internal(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ofdpa_group_l2_interface(%struct.ofdpa_port* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %57 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @netdev_err(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %30

67:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ofdpa_vlan_id_is_internal(i32) #1

declare dso_local i32 @ofdpa_group_l2_interface(%struct.ofdpa_port*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
