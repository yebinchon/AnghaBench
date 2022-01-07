; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_vlan_l2_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_vlan_l2_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i64, i32, i32, i64, %struct.ofdpa* }
%struct.ofdpa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@BR_STATE_FORWARDING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error (%d) port VLAN l2 group for pport %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Error (%d) port VLAN l2 group for CPU port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32, i32)* @ofdpa_port_vlan_l2_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_vlan_l2_groups(%struct.ofdpa_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ofdpa*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ofdpa_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %19 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %18, i32 0, i32 4
  %20 = load %struct.ofdpa*, %struct.ofdpa** %19, align 8
  store %struct.ofdpa* %20, %struct.ofdpa** %10, align 8
  %21 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %22 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %32 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %33 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BR_STATE_LEARNING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %4
  %38 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %39 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BR_STATE_FORWARDING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %37, %4
  %44 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %45 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %14, align 8
  %47 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @ofdpa_group_l2_interface(%struct.ofdpa_port* %47, i32 %48, i32 %49, i64 %50, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %57 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load i64, i64* %14, align 8
  %61 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %5, align 4
  br label %120

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %37
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %71 = load i32, i32* %17, align 4
  %72 = call %struct.ofdpa_port* @ofdpa_port_get(%struct.ofdpa* %70, i32 %71)
  store %struct.ofdpa_port* %72, %struct.ofdpa_port** %12, align 8
  %73 = load %struct.ofdpa_port*, %struct.ofdpa_port** %12, align 8
  %74 = icmp ne %struct.ofdpa_port* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ntohs(i32 %76)
  %78 = load %struct.ofdpa_port*, %struct.ofdpa_port** %12, align 8
  %79 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @test_bit(i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %75, %69
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %103

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %96
  store i32 0, i32* %5, align 4
  br label %120

103:                                              ; preds = %99, %93
  store i64 0, i64* %14, align 8
  %104 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i64, i64* %14, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ofdpa_group_l2_interface(%struct.ofdpa_port* %104, i32 %105, i32 %106, i64 %107, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %114 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %5, align 4
  br label %120

119:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %112, %102, %55
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @ofdpa_group_l2_interface(%struct.ofdpa_port*, i32, i32, i64, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.ofdpa_port* @ofdpa_port_get(%struct.ofdpa*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
