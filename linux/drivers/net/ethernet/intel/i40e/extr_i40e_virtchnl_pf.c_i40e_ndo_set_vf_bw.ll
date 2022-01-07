; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_ndo_set_vf_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.TYPE_4__*, %struct.i40e_vsi**, %struct.i40e_vf* }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_vsi = type { i32 }
%struct.i40e_vf = type { i64, i32, i32 }

@__I40E_VIRTCHNL_OP_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to configure VFs, other operation is pending.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Invalid min tx rate (%d) (greater than 0) specified for VF %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"VF %d still in reset. Try again.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_ndo_set_vf_bw(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_netdev_priv*, align 8
  %11 = alloca %struct.i40e_pf*, align 8
  %12 = alloca %struct.i40e_vsi*, align 8
  %13 = alloca %struct.i40e_vf*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.i40e_netdev_priv* %16, %struct.i40e_netdev_priv** %10, align 8
  %17 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %10, align 8
  %18 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %20, align 8
  store %struct.i40e_pf* %21, %struct.i40e_pf** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @test_and_set_bit(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %106

36:                                               ; preds = %4
  %37 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @i40e_validate_vf(%struct.i40e_pf* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %99

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %14, align 4
  br label %99

56:                                               ; preds = %43
  %57 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %58 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %57, i32 0, i32 3
  %59 = load %struct.i40e_vf*, %struct.i40e_vf** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %59, i64 %61
  store %struct.i40e_vf* %62, %struct.i40e_vf** %13, align 8
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %64 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %63, i32 0, i32 2
  %65 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %64, align 8
  %66 = load %struct.i40e_vf*, %struct.i40e_vf** %13, align 8
  %67 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %65, i64 %68
  %70 = load %struct.i40e_vsi*, %struct.i40e_vsi** %69, align 8
  store %struct.i40e_vsi* %70, %struct.i40e_vsi** %12, align 8
  %71 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %72 = load %struct.i40e_vf*, %struct.i40e_vf** %13, align 8
  %73 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %72, i32 0, i32 2
  %74 = call i32 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %56
  %77 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %78 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %14, align 4
  br label %99

85:                                               ; preds = %56
  %86 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %87 = load %struct.i40e_vsi*, %struct.i40e_vsi** %12, align 8
  %88 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @i40e_set_bw_limit(%struct.i40e_vsi* %86, i32 %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %99

95:                                               ; preds = %85
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.i40e_vf*, %struct.i40e_vf** %13, align 8
  %98 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %94, %76, %46, %42
  %100 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %101 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %102 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @clear_bit(i32 %100, i32 %103)
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %99, %28
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i40e_validate_vf(%struct.i40e_pf*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_set_bw_limit(%struct.i40e_vsi*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
