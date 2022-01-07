; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_free_vf_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_free_vf_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i32, i32, i32, i32, %struct.TYPE_3__*, i64, i64, i64, %struct.i40e_pf* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.i40e_pf = type { %struct.i40e_hw, i32*, i32 }
%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@I40E_DEFAULT_QUEUES_PER_VF = common dso_local global i64 0, align 8
@I40E_VFINT_DYN_CTLN_CLEARPBA_MASK = common dso_local global i32 0, align 4
@I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK = common dso_local global i32 0, align 4
@I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK = common dso_local global i32 0, align 4
@I40E_VF_STATE_MC_PROMISC = common dso_local global i32 0, align 4
@I40E_VF_STATE_UC_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_free_vf_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_free_vf_res(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %10 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %10, i32 0, i32 9
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  store %struct.i40e_pf* %12, %struct.i40e_pf** %3, align 8
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  store %struct.i40e_hw* %14, %struct.i40e_hw** %4, align 8
  %15 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %16 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %16, i32 0, i32 4
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @I40E_DEFAULT_QUEUES_PER_VF, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  br label %36

36:                                               ; preds = %24, %1
  %37 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %46 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i40e_vsi_release(i32 %50)
  %52 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %53 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %55 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %54, i32 0, i32 8
  store i64 0, i64* %55, align 8
  %56 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %57 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %41, %36
  %59 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %115

63:                                               ; preds = %58
  %64 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %65 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %64, i32 0, i32 5
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %111, %71
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %75 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %86 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %85, i32 0, i32 5
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %84, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @i40e_vsi_release(i32 %94)
  br label %96

96:                                               ; preds = %81, %78
  %97 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %98 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %97, i32 0, i32 5
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %105 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %104, i32 0, i32 5
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %96
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %72

114:                                              ; preds = %72
  br label %115

115:                                              ; preds = %114, %63, %58
  %116 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %117 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %151, %115
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %154

125:                                              ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 0, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %130 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @I40E_VFINT_DYN_CTL0(i32 %131)
  store i32 %132, i32* %5, align 4
  br label %144

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %137 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %135, %138
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, 1
  %142 = add nsw i32 %139, %141
  %143 = call i32 @I40E_VFINT_DYN_CTLN(i32 %142)
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %133, %128
  %145 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @I40E_VFINT_DYN_CTLN_CLEARPBA_MASK, align 4
  %148 = call i32 @wr32(%struct.i40e_hw* %145, i32 %146, i32 %147)
  %149 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %150 = call i32 @i40e_flush(%struct.i40e_hw* %149)
  br label %151

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %121

154:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %188, %154
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %191

159:                                              ; preds = %155
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 0, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %164 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @I40E_VPINT_LNKLST0(i32 %165)
  store i32 %166, i32* %5, align 4
  br label %178

167:                                              ; preds = %159
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %168, 1
  %170 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %171 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 %169, %172
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, 1
  %176 = add nsw i32 %173, %175
  %177 = call i32 @I40E_VPINT_LNKLSTN(i32 %176)
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %167, %162
  %179 = load i32, i32* @I40E_VPINT_LNKLSTN_FIRSTQ_TYPE_MASK, align 4
  %180 = load i32, i32* @I40E_VPINT_LNKLSTN_FIRSTQ_INDX_MASK, align 4
  %181 = or i32 %179, %180
  store i32 %181, i32* %6, align 4
  %182 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @wr32(%struct.i40e_hw* %182, i32 %183, i32 %184)
  %186 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %187 = call i32 @i40e_flush(%struct.i40e_hw* %186)
  br label %188

188:                                              ; preds = %178
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %155

191:                                              ; preds = %155
  %192 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %193 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %192, i32 0, i32 0
  store i64 0, i64* %193, align 8
  %194 = load i32, i32* @I40E_VF_STATE_MC_PROMISC, align 4
  %195 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %196 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %195, i32 0, i32 4
  %197 = call i32 @clear_bit(i32 %194, i32* %196)
  %198 = load i32, i32* @I40E_VF_STATE_UC_PROMISC, align 4
  %199 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %200 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %199, i32 0, i32 4
  %201 = call i32 @clear_bit(i32 %198, i32* %200)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @i40e_vsi_release(i32) #1

declare dso_local i32 @I40E_VFINT_DYN_CTL0(i32) #1

declare dso_local i32 @I40E_VFINT_DYN_CTLN(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @I40E_VPINT_LNKLST0(i32) #1

declare dso_local i32 @I40E_VPINT_LNKLSTN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
