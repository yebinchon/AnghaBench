; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_reset_all_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_reset_all_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.TYPE_2__*, %struct.ice_vf*, %struct.ice_vsi**, i32, %struct.ice_hw }
%struct.TYPE_2__ = type { i32 }
%struct.ice_vf = type { i64, i64, i32, i32 }
%struct.ice_vsi = type { i32, i32 }
%struct.ice_hw = type { i32 }

@__ICE_VF_DIS = common dso_local global i32 0, align 4
@ICE_VF_STATE_QS_ENA = common dso_local global i32 0, align 4
@ICE_VF_RESET = common dso_local global i32 0, align 4
@VPGEN_VFRSTAT_VFRD_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"VF reset check timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to free MSIX resources used by SR-IOV\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_reset_all_vfs(%struct.ice_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca %struct.ice_vf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_vsi*, align 8
  %11 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %13 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %12, i32 0, i32 5
  store %struct.ice_hw* %13, %struct.ice_hw** %6, align 8
  %14 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %15 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %186

19:                                               ; preds = %2
  %20 = load i32, i32* @__ICE_VF_DIS, align 4
  %21 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @test_and_set_bit(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %186

27:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %31 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 2
  %37 = load %struct.ice_vf*, %struct.ice_vf** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %37, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ice_trigger_vf_reset(%struct.ice_vf* %40, i32 %41, i32 1)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %28

46:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %89, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %50 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %47
  %54 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %55 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %54, i32 0, i32 2
  %56 = load %struct.ice_vf*, %struct.ice_vf** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %56, i64 %58
  store %struct.ice_vf* %59, %struct.ice_vf** %7, align 8
  %60 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 3
  %62 = load %struct.ice_vsi**, %struct.ice_vsi*** %61, align 8
  %63 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %64 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %62, i64 %65
  %67 = load %struct.ice_vsi*, %struct.ice_vsi** %66, align 8
  store %struct.ice_vsi* %67, %struct.ice_vsi** %10, align 8
  %68 = load i32, i32* @ICE_VF_STATE_QS_ENA, align 4
  %69 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %70 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @test_bit(i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %53
  %75 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %76 = call i32 @ice_dis_vf_qs(%struct.ice_vf* %75)
  br label %77

77:                                               ; preds = %74, %53
  %78 = load %struct.ice_vsi*, %struct.ice_vsi** %10, align 8
  %79 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ice_vsi*, %struct.ice_vsi** %10, align 8
  %82 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @ICE_VF_RESET, align 4
  %85 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %86 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ice_dis_vsi_txq(i32 %80, i32 %83, i32 0, i32 0, i32* null, i32* null, i32* null, i32 %84, i32 %87, i32* null)
  br label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %47

92:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %134, %92
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 10
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %99 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br label %102

102:                                              ; preds = %96, %93
  %103 = phi i1 [ false, %93 ], [ %101, %96 ]
  br i1 %103, label %104, label %137

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %130, %104
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %108 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %113 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %112, i32 0, i32 2
  %114 = load %struct.ice_vf*, %struct.ice_vf** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %114, i64 %116
  store %struct.ice_vf* %117, %struct.ice_vf** %7, align 8
  %118 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %119 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %120 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @VPGEN_VFRSTAT(i32 %121)
  %123 = call i32 @rd32(%struct.ice_hw* %118, i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @VPGEN_VFRSTAT_VFRD_M, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %111
  %129 = call i32 @usleep_range(i32 10, i32 20)
  br label %133

130:                                              ; preds = %111
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %105

133:                                              ; preds = %128, %105
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %93

137:                                              ; preds = %102
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %140 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %145 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = call i32 @dev_warn(i32* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %143, %137
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %167, %149
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %153 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %150
  %157 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %158 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %157, i32 0, i32 2
  %159 = load %struct.ice_vf*, %struct.ice_vf** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %159, i64 %161
  store %struct.ice_vf* %162, %struct.ice_vf** %7, align 8
  %163 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %164 = call i32 @ice_free_vf_res(%struct.ice_vf* %163)
  %165 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %166 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %150

170:                                              ; preds = %150
  %171 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %172 = call i64 @ice_sriov_free_msix_res(%struct.ice_pf* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %176 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = call i32 @dev_err(i32* %178, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %180

180:                                              ; preds = %174, %170
  %181 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %182 = call i32 @ice_config_res_vfs(%struct.ice_pf* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %186

185:                                              ; preds = %180
  store i32 1, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %184, %26, %18
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @ice_trigger_vf_reset(%struct.ice_vf*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_dis_vf_qs(%struct.ice_vf*) #1

declare dso_local i32 @ice_dis_vsi_txq(i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @VPGEN_VFRSTAT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ice_free_vf_res(%struct.ice_vf*) #1

declare dso_local i64 @ice_sriov_free_msix_res(%struct.ice_pf*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @ice_config_res_vfs(%struct.ice_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
