; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_vlan_flood_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_vlan_flood_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32, i32, i32, %struct.ofdpa* }
%struct.ofdpa = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error (%d) port VLAN l2 flood group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32)* @ofdpa_port_vlan_flood_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_vlan_flood_group(%struct.ofdpa_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofdpa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofdpa_port*, align 8
  %9 = alloca %struct.ofdpa*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %17 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %16, i32 0, i32 3
  %18 = load %struct.ofdpa*, %struct.ofdpa** %17, align 8
  store %struct.ofdpa* %18, %struct.ofdpa** %9, align 8
  %19 = load %struct.ofdpa*, %struct.ofdpa** %9, align 8
  %20 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ROCKER_GROUP_L2_FLOOD(i32 %24, i32 0)
  store i32 %25, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kcalloc(i32 %26, i32 4, i32 %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %98

34:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %70, %34
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %73

39:                                               ; preds = %35
  %40 = load %struct.ofdpa*, %struct.ofdpa** %9, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call %struct.ofdpa_port* @ofdpa_port_get(%struct.ofdpa* %40, i32 %41)
  store %struct.ofdpa_port* %42, %struct.ofdpa_port** %8, align 8
  %43 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %44 = icmp ne %struct.ofdpa_port* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %70

46:                                               ; preds = %39
  %47 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %48 = call i32 @ofdpa_port_is_bridged(%struct.ofdpa_port* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %70

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ntohs(i32 %52)
  %54 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %55 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @test_bit(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %62 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ROCKER_GROUP_L2_INTERFACE(i32 %60, i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %13, align 8
  %68 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %51
  br label %70

70:                                               ; preds = %69, %50, %45
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %35

73:                                               ; preds = %35
  %74 = load i64, i64* %13, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %94

77:                                               ; preds = %73
  %78 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %13, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @ofdpa_group_l2_flood(%struct.ofdpa_port* %78, i32 %79, i32 %80, i64 %81, i32* %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %89 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @netdev_err(i32 %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %77
  br label %94

94:                                               ; preds = %93, %76
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %31
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @ROCKER_GROUP_L2_FLOOD(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.ofdpa_port* @ofdpa_port_get(%struct.ofdpa*, i32) #1

declare dso_local i32 @ofdpa_port_is_bridged(%struct.ofdpa_port*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ROCKER_GROUP_L2_INTERFACE(i32, i32) #1

declare dso_local i32 @ofdpa_group_l2_flood(%struct.ofdpa_port*, i32, i32, i64, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
