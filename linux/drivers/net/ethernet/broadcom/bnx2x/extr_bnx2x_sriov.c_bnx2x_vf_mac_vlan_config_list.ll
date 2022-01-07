; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_mac_vlan_config_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_mac_vlan_config_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vf_mac_vlan_filters = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vf[%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Managed only %d/%d filters - rolling back\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_mac_vlan_config_list(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mac_vlan_filters* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.bnx2x_virtf*, align 8
  %9 = alloca %struct.bnx2x_vf_mac_vlan_filters*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %8, align 8
  store %struct.bnx2x_vf_mac_vlan_filters* %2, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %16 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DP(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %20 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %21 = call i32 @bnx2x_validate_vf_sp_objs(%struct.bnx2x* %19, %struct.bnx2x_virtf* %20, i32 1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %114

26:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %30 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %35 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %38 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @bnx2x_vf_mac_vlan_config(%struct.bnx2x* %34, %struct.bnx2x_virtf* %35, i32 %36, %struct.TYPE_2__* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %52

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %27

52:                                               ; preds = %47, %27
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %55 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %110

58:                                               ; preds = %52
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %61 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %79, %78, %58
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %13, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %109

68:                                               ; preds = %64
  %69 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %70 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  br label %64

79:                                               ; preds = %68
  %80 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %81 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %92 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  %98 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %99 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %102 = getelementptr inbounds %struct.bnx2x_vf_mac_vlan_filters, %struct.bnx2x_vf_mac_vlan_filters* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @bnx2x_vf_mac_vlan_config(%struct.bnx2x* %98, %struct.bnx2x_virtf* %99, i32 %100, %struct.TYPE_2__* %106, i32 %107)
  br label %64

109:                                              ; preds = %64
  br label %110

110:                                              ; preds = %109, %52
  %111 = load %struct.bnx2x_vf_mac_vlan_filters*, %struct.bnx2x_vf_mac_vlan_filters** %9, align 8
  %112 = call i32 @kfree(%struct.bnx2x_vf_mac_vlan_filters* %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %23
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_validate_vf_sp_objs(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_mac_vlan_config(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.bnx2x_vf_mac_vlan_filters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
