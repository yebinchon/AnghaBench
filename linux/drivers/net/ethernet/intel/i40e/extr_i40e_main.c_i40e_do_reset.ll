; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.TYPE_2__*, %struct.i40e_vsi**, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_vsi = type { i32 }

@__I40E_GLOBAL_RESET_REQUESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"GlobalR requested\0A\00", align 1
@I40E_GLGEN_RTRIG = common dso_local global i32 0, align 4
@I40E_GLGEN_RTRIG_GLOBR_MASK = common dso_local global i32 0, align 4
@__I40E_CORE_RESET_REQUESTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"CoreR requested\0A\00", align 1
@I40E_GLGEN_RTRIG_CORER_MASK = common dso_local global i32 0, align 4
@I40E_PF_RESET_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"PFR requested\0A\00", align 1
@I40E_FLAG_DISABLE_FW_LLDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"FW LLDP is disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"FW LLDP is enabled\0A\00", align 1
@__I40E_REINIT_REQUESTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"VSI reinit requested\0A\00", align 1
@__I40E_VSI_REINIT_REQUESTED = common dso_local global i32 0, align 4
@__I40E_DOWN_REQUESTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"VSI down requested\0A\00", align 1
@__I40E_VSI_DOWN_REQUESTED = common dso_local global i32 0, align 4
@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"bad reset request 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_do_reset(%struct.i40e_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_vsi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = call i32 (...) @in_interrupt()
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @__I40E_GLOBAL_RESET_REQUESTED, align 4
  %16 = call i32 @BIT_ULL(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 4
  %27 = load i32, i32* @I40E_GLGEN_RTRIG, align 4
  %28 = call i32 @rd32(i32* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @I40E_GLGEN_RTRIG_GLOBR_MASK, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 4
  %34 = load i32, i32* @I40E_GLGEN_RTRIG, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @wr32(i32* %33, i32 %34, i32 %35)
  br label %199

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @__I40E_CORE_RESET_REQUESTED, align 4
  %40 = call i32 @BIT_ULL(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 4
  %51 = load i32, i32* @I40E_GLGEN_RTRIG, align 4
  %52 = call i32 @rd32(i32* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @I40E_GLGEN_RTRIG_CORER_MASK, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 4
  %58 = load i32, i32* @I40E_GLGEN_RTRIG, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @wr32(i32* %57, i32 %58, i32 %59)
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 4
  %63 = call i32 @i40e_flush(i32* %62)
  br label %198

64:                                               ; preds = %37
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @I40E_PF_RESET_FLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %64
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @i40e_handle_reset_warning(%struct.i40e_pf* %75, i32 %76)
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @I40E_FLAG_DISABLE_FW_LLDP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)
  %90 = call i32 (i32*, i8*, ...) @dev_info(i32* %81, i8* %89)
  br label %197

91:                                               ; preds = %64
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @__I40E_REINIT_REQUESTED, align 4
  %94 = call i32 @BIT_ULL(i32 %93)
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %91
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %99 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 (i32*, i8*, ...) @dev_info(i32* %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %136, %97
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %103
  %110 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %111 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %110, i32 0, i32 3
  %112 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %112, i64 %114
  %116 = load %struct.i40e_vsi*, %struct.i40e_vsi** %115, align 8
  store %struct.i40e_vsi* %116, %struct.i40e_vsi** %9, align 8
  %117 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %118 = icmp ne %struct.i40e_vsi* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %109
  %120 = load i32, i32* @__I40E_VSI_REINIT_REQUESTED, align 4
  %121 = load %struct.i40e_vsi*, %struct.i40e_vsi** %9, align 8
  %122 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @test_and_clear_bit(i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %128 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %127, i32 0, i32 3
  %129 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %129, i64 %131
  %133 = load %struct.i40e_vsi*, %struct.i40e_vsi** %132, align 8
  %134 = call i32 @i40e_vsi_reinit_locked(%struct.i40e_vsi* %133)
  br label %135

135:                                              ; preds = %126, %119, %109
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %103

139:                                              ; preds = %103
  br label %196

140:                                              ; preds = %91
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @__I40E_DOWN_REQUESTED, align 4
  %143 = call i32 @BIT_ULL(i32 %142)
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %188

146:                                              ; preds = %140
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %148 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = call i32 (i32*, i8*, ...) @dev_info(i32* %150, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %184, %146
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %155 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %187

158:                                              ; preds = %152
  %159 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %160 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %159, i32 0, i32 3
  %161 = load %struct.i40e_vsi**, %struct.i40e_vsi*** %160, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.i40e_vsi*, %struct.i40e_vsi** %161, i64 %163
  %165 = load %struct.i40e_vsi*, %struct.i40e_vsi** %164, align 8
  store %struct.i40e_vsi* %165, %struct.i40e_vsi** %11, align 8
  %166 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %167 = icmp ne %struct.i40e_vsi* %166, null
  br i1 %167, label %168, label %183

168:                                              ; preds = %158
  %169 = load i32, i32* @__I40E_VSI_DOWN_REQUESTED, align 4
  %170 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %171 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @test_and_clear_bit(i32 %169, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %168
  %176 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %177 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %178 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @set_bit(i32 %176, i32 %179)
  %181 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %182 = call i32 @i40e_down(%struct.i40e_vsi* %181)
  br label %183

183:                                              ; preds = %175, %168, %158
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  br label %152

187:                                              ; preds = %152
  br label %195

188:                                              ; preds = %140
  %189 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %190 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %189, i32 0, i32 2
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %5, align 4
  %194 = call i32 (i32*, i8*, ...) @dev_info(i32* %192, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %188, %187
  br label %196

196:                                              ; preds = %195, %139
  br label %197

197:                                              ; preds = %196, %69
  br label %198

198:                                              ; preds = %197, %43
  br label %199

199:                                              ; preds = %198, %19
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @rd32(i32*, i32) #1

declare dso_local i32 @wr32(i32*, i32, i32) #1

declare dso_local i32 @i40e_flush(i32*) #1

declare dso_local i32 @i40e_handle_reset_warning(%struct.i40e_pf*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @i40e_vsi_reinit_locked(%struct.i40e_vsi*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @i40e_down(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
