; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_reset_all_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_reset_all_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.i40e_vf*, i32*, %struct.TYPE_2__*, %struct.i40e_hw }
%struct.i40e_vf = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@__I40E_VF_DISABLE = common dso_local global i32 0, align 4
@I40E_VPGEN_VFRSTAT_VFRD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"VF reset check timeout on VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_reset_all_vfs(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_vf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 5
  store %struct.i40e_hw* %12, %struct.i40e_hw** %6, align 8
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %215

18:                                               ; preds = %2
  %19 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_and_set_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %215

26:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 2
  %36 = load %struct.i40e_vf*, %struct.i40e_vf** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %36, i64 %38
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @i40e_trigger_vf_reset(%struct.i40e_vf* %39, i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %27

45:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %87, %45
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i1 [ false, %46 ], [ %54, %49 ]
  br i1 %56, label %57, label %90

57:                                               ; preds = %55
  %58 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %59

59:                                               ; preds = %83, %57
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %59
  %66 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %67 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %66, i32 0, i32 2
  %68 = load %struct.i40e_vf*, %struct.i40e_vf** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %68, i64 %70
  store %struct.i40e_vf* %71, %struct.i40e_vf** %7, align 8
  %72 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %73 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  %74 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @I40E_VPGEN_VFRSTAT(i32 %75)
  %77 = call i32 @rd32(%struct.i40e_hw* %72, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @I40E_VPGEN_VFRSTAT_VFRD_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %65
  br label %86

83:                                               ; preds = %65
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %59

86:                                               ; preds = %82, %59
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %46

90:                                               ; preds = %55
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %98 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %103 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %107 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %106, i32 0, i32 2
  %108 = load %struct.i40e_vf*, %struct.i40e_vf** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %108, i64 %110
  %112 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %101, %95
  %116 = call i32 @usleep_range(i32 10000, i32 20000)
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %149, %115
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %120 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %152

123:                                              ; preds = %117
  %124 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %125 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %124, i32 0, i32 2
  %126 = load %struct.i40e_vf*, %struct.i40e_vf** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %126, i64 %128
  %130 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %149

134:                                              ; preds = %123
  %135 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %136 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %139 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %138, i32 0, i32 2
  %140 = load %struct.i40e_vf*, %struct.i40e_vf** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %140, i64 %142
  %144 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32, i32* %137, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @i40e_vsi_stop_rings_no_wait(i32 %147)
  br label %149

149:                                              ; preds = %134, %133
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %117

152:                                              ; preds = %117
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %185, %152
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %156 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %188

159:                                              ; preds = %153
  %160 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %161 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %160, i32 0, i32 2
  %162 = load %struct.i40e_vf*, %struct.i40e_vf** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %162, i64 %164
  %166 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %159
  br label %185

170:                                              ; preds = %159
  %171 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %172 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %171, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %175 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %174, i32 0, i32 2
  %176 = load %struct.i40e_vf*, %struct.i40e_vf** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %176, i64 %178
  %180 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i32, i32* %173, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @i40e_vsi_wait_queues_disabled(i32 %183)
  br label %185

185:                                              ; preds = %170, %169
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %153

188:                                              ; preds = %153
  %189 = call i32 @mdelay(i32 50)
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %204, %188
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %193 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %190
  %197 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %198 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %197, i32 0, i32 2
  %199 = load %struct.i40e_vf*, %struct.i40e_vf** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %199, i64 %201
  %203 = call i32 @i40e_cleanup_reset_vf(%struct.i40e_vf* %202)
  br label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  br label %190

207:                                              ; preds = %190
  %208 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %209 = call i32 @i40e_flush(%struct.i40e_hw* %208)
  %210 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %211 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %212 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @clear_bit(i32 %210, i32 %213)
  store i32 1, i32* %3, align 4
  br label %215

215:                                              ; preds = %207, %25, %17
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @i40e_trigger_vf_reset(%struct.i40e_vf*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPGEN_VFRSTAT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i40e_vsi_stop_rings_no_wait(i32) #1

declare dso_local i32 @i40e_vsi_wait_queues_disabled(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @i40e_cleanup_reset_vf(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
