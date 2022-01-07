; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, i32, i32 }

@ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC = common dso_local global i32 0, align 4
@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error (%d) port ctrl vlan add\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Error (%d) port VLAN l2 groups\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Error (%d) port VLAN l2 flood group\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Error (%d) port VLAN table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32)* @ofdpa_port_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_vlan(%struct.ofdpa_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofdpa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_TERMINATION_MAC, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %18 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @htons(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = call i32 @htons(i32 65535)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @ofdpa_port_vid_to_vlan(%struct.ofdpa_port* %29, i32 %30, i32* %13)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %3
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %38 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @test_bit(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %135

43:                                               ; preds = %34, %3
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ntohs(i32 %47)
  %49 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %50 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @test_bit(i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %135

55:                                               ; preds = %46, %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ntohs(i32 %57)
  %59 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %60 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @change_bit(i32 %58, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %56
  %66 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ofdpa_port_ctrl_vlan_add(%struct.ofdpa_port* %66, i32 %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %74 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @netdev_err(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %125

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %56
  %80 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ofdpa_port_vlan_l2_groups(%struct.ofdpa_port* %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %89 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @netdev_err(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %126

93:                                               ; preds = %79
  %94 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @ofdpa_port_vlan_flood_group(%struct.ofdpa_port* %94, i32 %95, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %102 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @netdev_err(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %127

106:                                              ; preds = %93
  %107 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @ofdpa_flow_tbl_vlan(%struct.ofdpa_port* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %106
  %119 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %120 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @netdev_err(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %106
  store i32 0, i32* %4, align 4
  br label %135

125:                                              ; preds = %72
  br label %126

126:                                              ; preds = %125, %87
  br label %127

127:                                              ; preds = %126, %100
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @ntohs(i32 %128)
  %130 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %131 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @change_bit(i32 %129, i32 %132)
  %134 = load i32, i32* %15, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %127, %124, %54, %42
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ofdpa_port_vid_to_vlan(%struct.ofdpa_port*, i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @change_bit(i32, i32) #1

declare dso_local i32 @ofdpa_port_ctrl_vlan_add(%struct.ofdpa_port*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @ofdpa_port_vlan_l2_groups(%struct.ofdpa_port*, i32, i32, i32) #1

declare dso_local i32 @ofdpa_port_vlan_flood_group(%struct.ofdpa_port*, i32, i32) #1

declare dso_local i32 @ofdpa_flow_tbl_vlan(%struct.ofdpa_port*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
