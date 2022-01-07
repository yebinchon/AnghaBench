; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fib_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fib_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i64, i32 }
%struct.fib_info = type { i32 }
%struct.fib_nh = type { i64, i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ROCKER_OF_DPA_TABLE_ID_ACL_POLICY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error (%d) IPv4 route %pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32, %struct.fib_info*, i32, i32)* @ofdpa_port_fib_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_fib_ipv4(%struct.ofdpa_port* %0, i32 %1, i32 %2, %struct.fib_info* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ofdpa_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fib_nh*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.fib_info* %3, %struct.fib_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load i32, i32* @ETH_P_IP, align 4
  %26 = call i32 @htons(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @inet_make_mask(i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %30 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %17, align 4
  %32 = load %struct.fib_info*, %struct.fib_info** %11, align 8
  %33 = getelementptr inbounds %struct.fib_info, %struct.fib_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_ACL_POLICY, align 4
  store i32 %35, i32* %19, align 4
  %36 = load %struct.fib_info*, %struct.fib_info** %11, align 8
  %37 = call %struct.fib_nh* @fib_info_nh(%struct.fib_info* %36, i32 0)
  store %struct.fib_nh* %37, %struct.fib_nh** %14, align 8
  %38 = load %struct.fib_nh*, %struct.fib_nh** %14, align 8
  %39 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %42 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %21, align 4
  %46 = load %struct.fib_nh*, %struct.fib_nh** %14, align 8
  %47 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %6
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.fib_nh*, %struct.fib_nh** %14, align 8
  %62 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ofdpa_port_ipv4_nh(%struct.ofdpa_port* %59, i32 %60, i32 %63, i32* %23)
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* %24, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %24, align 4
  store i32 %68, i32* %7, align 4
  br label %96

69:                                               ; preds = %58
  %70 = load i32, i32* %23, align 4
  %71 = call i32 @ROCKER_GROUP_L3_UNICAST(i32 %70)
  store i32 %71, i32* %20, align 4
  br label %75

72:                                               ; preds = %55, %6
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @ROCKER_GROUP_L2_INTERFACE(i32 %73, i32 0)
  store i32 %74, i32* %20, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load %struct.fib_info*, %struct.fib_info** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @ofdpa_flow_tbl_ucast4_routing(%struct.ofdpa_port* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, %struct.fib_info* %83, i32 %84)
  store i32 %85, i32* %24, align 4
  %86 = load i32, i32* %24, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %75
  %89 = load %struct.ofdpa_port*, %struct.ofdpa_port** %8, align 8
  %90 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @netdev_err(i64 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %92, i32* %9)
  br label %94

94:                                               ; preds = %88, %75
  %95 = load i32, i32* %24, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %67
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @inet_make_mask(i32) #1

declare dso_local %struct.fib_nh* @fib_info_nh(%struct.fib_info*, i32) #1

declare dso_local i32 @ofdpa_port_ipv4_nh(%struct.ofdpa_port*, i32, i32, i32*) #1

declare dso_local i32 @ROCKER_GROUP_L3_UNICAST(i32) #1

declare dso_local i32 @ROCKER_GROUP_L2_INTERFACE(i32, i32) #1

declare dso_local i32 @ofdpa_flow_tbl_ucast4_routing(%struct.ofdpa_port*, i32, i32, i32, i32, i32, i32, %struct.fib_info*, i32) #1

declare dso_local i32 @netdev_err(i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
