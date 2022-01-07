; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_trust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, i32, %struct.TYPE_4__*, %struct.i40e_vf* }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vf = type { i32, i64 }

@__I40E_VIRTCHNL_OP_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to configure VFs, other operation is pending.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid VF Identifier %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I40E_FLAG_MFP_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Trusted VF not supported in MFP mode.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"VF %u is now %strusted\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"VF %u no longer Trusted, deleting all cloud filters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_ndo_set_vf_trust(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_netdev_priv*, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  %10 = alloca %struct.i40e_vf*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.i40e_netdev_priv* %13, %struct.i40e_netdev_priv** %8, align 8
  %14 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %8, align 8
  %15 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @test_and_set_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %119

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %41 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %112

48:                                               ; preds = %33
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40E_FLAG_MFP_ENABLED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %112

63:                                               ; preds = %48
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 4
  %66 = load %struct.i40e_vf*, %struct.i40e_vf** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %66, i64 %68
  store %struct.i40e_vf* %69, %struct.i40e_vf** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.i40e_vf*, %struct.i40e_vf** %10, align 8
  %72 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %112

76:                                               ; preds = %63
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.i40e_vf*, %struct.i40e_vf** %10, align 8
  %79 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.i40e_vf*, %struct.i40e_vf** %10, align 8
  %81 = call i32 @i40e_vc_disable_vf(%struct.i40e_vf* %80)
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %91 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %86, i8* %90)
  %92 = load %struct.i40e_vf*, %struct.i40e_vf** %10, align 8
  %93 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %76
  %97 = load %struct.i40e_vf*, %struct.i40e_vf** %10, align 8
  %98 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %103 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %105, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  %108 = load %struct.i40e_vf*, %struct.i40e_vf** %10, align 8
  %109 = call i32 @i40e_del_all_cloud_filters(%struct.i40e_vf* %108)
  br label %110

110:                                              ; preds = %101, %96
  br label %111

111:                                              ; preds = %110, %76
  br label %112

112:                                              ; preds = %111, %75, %55, %39
  %113 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %114 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %115 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @clear_bit(i32 %113, i32 %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %25
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i40e_vc_disable_vf(%struct.i40e_vf*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @i40e_del_all_cloud_filters(%struct.i40e_vf*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
