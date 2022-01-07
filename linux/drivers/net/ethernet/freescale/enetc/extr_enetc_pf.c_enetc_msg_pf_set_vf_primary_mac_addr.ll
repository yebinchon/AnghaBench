; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_msg_pf_set_vf_primary_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_msg_pf_set_vf_primary_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_pf = type { %struct.TYPE_8__*, %struct.enetc_msg_swbd*, %struct.enetc_vf_state* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.enetc_msg_swbd = type { i64 }
%struct.enetc_vf_state = type { i32 }
%struct.enetc_msg_cmd_set_primary_mac = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64 }

@ENETC_MSG_CMD_MNG_ADD = common dso_local global i64 0, align 8
@ENETC_MSG_CMD_STATUS_FAIL = common dso_local global i64 0, align 8
@ENETC_VF_FLAG_PF_SET_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Attempt to override PF set mac addr for VF%d\0A\00", align 1
@ENETC_MSG_CMD_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.enetc_pf*, i32)* @enetc_msg_pf_set_vf_primary_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enetc_msg_pf_set_vf_primary_mac_addr(%struct.enetc_pf* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.enetc_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.enetc_vf_state*, align 8
  %7 = alloca %struct.enetc_msg_swbd*, align 8
  %8 = alloca %struct.enetc_msg_cmd_set_primary_mac*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.enetc_pf* %0, %struct.enetc_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %13 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %12, i32 0, i32 2
  %14 = load %struct.enetc_vf_state*, %struct.enetc_vf_state** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.enetc_vf_state, %struct.enetc_vf_state* %14, i64 %16
  store %struct.enetc_vf_state* %17, %struct.enetc_vf_state** %6, align 8
  %18 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %19 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %18, i32 0, i32 1
  %20 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %20, i64 %22
  store %struct.enetc_msg_swbd* %23, %struct.enetc_msg_swbd** %7, align 8
  %24 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %25 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store %struct.device* %29, %struct.device** %9, align 8
  %30 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %7, align 8
  %31 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.enetc_msg_cmd_set_primary_mac*
  store %struct.enetc_msg_cmd_set_primary_mac* %33, %struct.enetc_msg_cmd_set_primary_mac** %8, align 8
  %34 = load %struct.enetc_msg_cmd_set_primary_mac*, %struct.enetc_msg_cmd_set_primary_mac** %8, align 8
  %35 = getelementptr inbounds %struct.enetc_msg_cmd_set_primary_mac, %struct.enetc_msg_cmd_set_primary_mac* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @ENETC_MSG_CMD_MNG_ADD, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i64, i64* @ENETC_MSG_CMD_STATUS_FAIL, align 8
  store i64 %42, i64* %3, align 8
  br label %69

43:                                               ; preds = %2
  %44 = load %struct.enetc_msg_cmd_set_primary_mac*, %struct.enetc_msg_cmd_set_primary_mac** %8, align 8
  %45 = getelementptr inbounds %struct.enetc_msg_cmd_set_primary_mac, %struct.enetc_msg_cmd_set_primary_mac* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %11, align 8
  %48 = load %struct.enetc_vf_state*, %struct.enetc_vf_state** %6, align 8
  %49 = getelementptr inbounds %struct.enetc_vf_state, %struct.enetc_vf_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ENETC_VF_FLAG_PF_SET_MAC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.device*, %struct.device** %9, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dev_warn(%struct.device* %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %67

58:                                               ; preds = %43
  %59 = load %struct.enetc_pf*, %struct.enetc_pf** %4, align 8
  %60 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @enetc_pf_set_primary_mac_addr(i32* %62, i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %58, %54
  %68 = load i64, i64* @ENETC_MSG_CMD_STATUS_OK, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %41
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @enetc_pf_set_primary_mac_addr(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
