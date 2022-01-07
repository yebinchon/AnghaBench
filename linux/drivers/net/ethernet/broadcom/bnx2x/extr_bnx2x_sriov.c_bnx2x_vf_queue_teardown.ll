; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_queue_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_queue_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vf[%d:%d]\0A\00", align 1
@LEADING_IDX = common dso_local global i32 0, align 4
@BNX2X_VF_FILTER_VLAN_MAC = common dso_local global i32 0, align 4
@BNX2X_VF_FILTER_VLAN = common dso_local global i32 0, align 4
@BNX2X_VF_FILTER_MAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"vf[%d:%d] error: rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_queue_teardown(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_virtf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @DP(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LEADING_IDX, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %3
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @bnx2x_vf_rxmode(%struct.bnx2x* %19, %struct.bnx2x_virtf* %20, i32 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %77

26:                                               ; preds = %18
  %27 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %28 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %29 = call i64 @bnx2x_validate_vf_sp_objs(%struct.bnx2x* %27, %struct.bnx2x_virtf* %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %33 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BNX2X_VF_FILTER_VLAN_MAC, align 4
  %36 = call i32 @bnx2x_vf_vlan_mac_clear(%struct.bnx2x* %32, %struct.bnx2x_virtf* %33, i32 %34, i32 0, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %77

40:                                               ; preds = %31
  %41 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %42 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @BNX2X_VF_FILTER_VLAN, align 4
  %45 = call i32 @bnx2x_vf_vlan_mac_clear(%struct.bnx2x* %41, %struct.bnx2x_virtf* %42, i32 %43, i32 0, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %77

49:                                               ; preds = %40
  %50 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %51 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BNX2X_VF_FILTER_MAC, align 4
  %54 = call i32 @bnx2x_vf_vlan_mac_clear(%struct.bnx2x* %50, %struct.bnx2x_virtf* %51, i32 %52, i32 0, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %77

58:                                               ; preds = %49
  %59 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %60 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %61 = call i32 @bnx2x_vf_mcast(%struct.bnx2x* %59, %struct.bnx2x_virtf* %60, i32* null, i32 0, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %77

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %26
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %69 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @bnx2x_vf_queue_destroy(%struct.bnx2x* %68, %struct.bnx2x_virtf* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %85

77:                                               ; preds = %74, %64, %57, %48, %39, %25
  %78 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %75
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_rxmode(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32) #1

declare dso_local i64 @bnx2x_validate_vf_sp_objs(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_vlan_mac_clear(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_vf_mcast(%struct.bnx2x*, %struct.bnx2x_virtf*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_queue_destroy(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
