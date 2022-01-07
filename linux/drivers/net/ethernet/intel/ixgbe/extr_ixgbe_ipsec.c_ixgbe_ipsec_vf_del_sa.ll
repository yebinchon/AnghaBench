; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_vf_del_sa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_vf_del_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.TYPE_2__*, %struct.ixgbe_ipsec* }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_ipsec = type { %struct.tx_sa*, %struct.rx_sa* }
%struct.tx_sa = type { i32, i64, %struct.xfrm_state*, i32 }
%struct.xfrm_state = type { i32 }
%struct.rx_sa = type { i32, i64, %struct.xfrm_state*, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vf %d attempted to delete an SA\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@IXGBE_IPSEC_BASE_TX_INDEX = common dso_local global i64 0, align 8
@IXGBE_IPSEC_BASE_RX_INDEX = common dso_local global i64 0, align 8
@IXGBE_IPSEC_MAX_SA_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"vf %d SA index %d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_RXTXMOD_VF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"vf %d bad Rx SA index %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"vf %d bad Tx SA index %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ipsec_vf_del_sa(%struct.ixgbe_adapter* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_adapter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ixgbe_ipsec*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rx_sa*, align 8
  %13 = alloca %struct.tx_sa*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 1
  %16 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %15, align 8
  store %struct.ixgbe_ipsec* %16, %struct.ixgbe_ipsec** %8, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @drv, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 (i32, i8*, i64, ...) @e_err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %149

34:                                               ; preds = %3
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @IXGBE_IPSEC_BASE_TX_INDEX, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %91

38:                                               ; preds = %34
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @IXGBE_IPSEC_BASE_RX_INDEX, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @IXGBE_IPSEC_MAX_SA_COUNT, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @drv, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 (i32, i8*, i64, ...) @e_err(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %149

52:                                               ; preds = %38
  %53 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %8, align 8
  %54 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %53, i32 0, i32 1
  %55 = load %struct.rx_sa*, %struct.rx_sa** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %55, i64 %56
  store %struct.rx_sa* %57, %struct.rx_sa** %12, align 8
  %58 = load %struct.rx_sa*, %struct.rx_sa** %12, align 8
  %59 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %149

63:                                               ; preds = %52
  %64 = load %struct.rx_sa*, %struct.rx_sa** %12, align 8
  %65 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IXGBE_RXTXMOD_VF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.rx_sa*, %struct.rx_sa** %12, align 8
  %72 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70, %63
  %77 = load i32, i32* @drv, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 (i32, i8*, i64, ...) @e_err(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %149

83:                                               ; preds = %70
  %84 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %8, align 8
  %85 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %84, i32 0, i32 1
  %86 = load %struct.rx_sa*, %struct.rx_sa** %85, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %86, i64 %87
  %89 = getelementptr inbounds %struct.rx_sa, %struct.rx_sa* %88, i32 0, i32 2
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %89, align 8
  store %struct.xfrm_state* %90, %struct.xfrm_state** %9, align 8
  br label %144

91:                                               ; preds = %34
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @IXGBE_IPSEC_BASE_TX_INDEX, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @IXGBE_IPSEC_MAX_SA_COUNT, align 8
  %97 = icmp uge i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32, i32* @drv, align 4
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 (i32, i8*, i64, ...) @e_err(i32 %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %100, i64 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %149

105:                                              ; preds = %91
  %106 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %8, align 8
  %107 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %106, i32 0, i32 0
  %108 = load %struct.tx_sa*, %struct.tx_sa** %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %108, i64 %109
  store %struct.tx_sa* %110, %struct.tx_sa** %13, align 8
  %111 = load %struct.tx_sa*, %struct.tx_sa** %13, align 8
  %112 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %149

116:                                              ; preds = %105
  %117 = load %struct.tx_sa*, %struct.tx_sa** %13, align 8
  %118 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IXGBE_RXTXMOD_VF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.tx_sa*, %struct.tx_sa** %13, align 8
  %125 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123, %116
  %130 = load i32, i32* @drv, align 4
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 (i32, i8*, i64, ...) @e_err(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %131, i64 %132)
  %134 = load i32, i32* @ENOENT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %149

136:                                              ; preds = %123
  %137 = load %struct.ixgbe_ipsec*, %struct.ixgbe_ipsec** %8, align 8
  %138 = getelementptr inbounds %struct.ixgbe_ipsec, %struct.ixgbe_ipsec* %137, i32 0, i32 0
  %139 = load %struct.tx_sa*, %struct.tx_sa** %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %139, i64 %140
  %142 = getelementptr inbounds %struct.tx_sa, %struct.tx_sa* %141, i32 0, i32 2
  %143 = load %struct.xfrm_state*, %struct.xfrm_state** %142, align 8
  store %struct.xfrm_state* %143, %struct.xfrm_state** %9, align 8
  br label %144

144:                                              ; preds = %136, %83
  %145 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %146 = call i32 @ixgbe_ipsec_del_sa(%struct.xfrm_state* %145)
  %147 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %148 = call i32 @kzfree(%struct.xfrm_state* %147)
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %144, %129, %115, %98, %76, %62, %45, %28
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @e_err(i32, i8*, i64, ...) #1

declare dso_local i32 @ixgbe_ipsec_del_sa(%struct.xfrm_state*) #1

declare dso_local i32 @kzfree(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
