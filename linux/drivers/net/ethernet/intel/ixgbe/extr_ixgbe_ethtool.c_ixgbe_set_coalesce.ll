; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_q_vector** }
%struct.ixgbe_q_vector = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IXGBE_MAX_EITR = common dso_local global i32 0, align 4
@IXGBE_20K_ITR = common dso_local global i32 0, align 4
@IXGBE_12K_ITR = common dso_local global i32 0, align 4
@IXGBE_100K_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ixgbe_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_q_vector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.ixgbe_adapter* %14, %struct.ixgbe_adapter** %6, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 3
  %17 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %16, align 8
  %18 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %17, i64 0
  %19 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %18, align 8
  %20 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %2
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 3
  %27 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %26, align 8
  %28 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %27, i64 0
  %29 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %28, align 8
  %30 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %24
  %35 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %231

42:                                               ; preds = %34
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  br label %50

46:                                               ; preds = %24, %2
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %55 = ashr i32 %54, 2
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %62 = ashr i32 %61, 2
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57, %50
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %231

67:                                               ; preds = %57
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 2
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %85

79:                                               ; preds = %67
  %80 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @IXGBE_20K_ITR, align 4
  store i32 %91, i32* %10, align 4
  br label %96

92:                                               ; preds = %85
  %93 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %94 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %92, %90
  %97 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %98 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 2
  %106 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %107 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %114

108:                                              ; preds = %96
  %109 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %116 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @IXGBE_12K_ITR, align 4
  store i32 %120, i32* %9, align 4
  br label %125

121:                                              ; preds = %114
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %121, %119
  %126 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %126, i32 0, i32 3
  %128 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %127, align 8
  %129 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %128, i64 0
  %130 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %129, align 8
  %131 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %125
  %136 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %137 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %136, i32 0, i32 3
  %138 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %137, align 8
  %139 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %138, i64 0
  %140 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %139, align 8
  %141 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %135
  %146 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %147 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %150 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %135, %125
  %152 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %153 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %156, label %171

156:                                              ; preds = %151
  %157 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %158 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IXGBE_100K_ITR, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %156
  %163 = load i32, i32* %11, align 4
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %169, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @IXGBE_100K_ITR, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165, %162
  store i32 1, i32* %12, align 4
  br label %170

170:                                              ; preds = %169, %165
  br label %180

171:                                              ; preds = %156, %151
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @IXGBE_100K_ITR, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 1, i32* %12, align 4
  br label %179

179:                                              ; preds = %178, %174, %171
  br label %180

180:                                              ; preds = %179, %170
  %181 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %182 = call i32 @ixgbe_update_rsc(%struct.ixgbe_adapter* %181)
  %183 = load i32, i32* %12, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %185

185:                                              ; preds = %221, %180
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %188 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %224

191:                                              ; preds = %185
  %192 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %193 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %192, i32 0, i32 3
  %194 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %194, i64 %196
  %198 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %197, align 8
  store %struct.ixgbe_q_vector* %198, %struct.ixgbe_q_vector** %7, align 8
  %199 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %200 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %191
  %205 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %206 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %213 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %218

214:                                              ; preds = %204, %191
  %215 = load i32, i32* %10, align 4
  %216 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %217 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %214, %210
  %219 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %220 = call i32 @ixgbe_write_eitr(%struct.ixgbe_q_vector* %219)
  br label %221

221:                                              ; preds = %218
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %8, align 4
  br label %185

224:                                              ; preds = %185
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.net_device*, %struct.net_device** %4, align 8
  %229 = call i32 @ixgbe_do_reset(%struct.net_device* %228)
  br label %230

230:                                              ; preds = %227, %224
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %64, %39
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_update_rsc(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_write_eitr(%struct.ixgbe_q_vector*) #1

declare dso_local i32 @ixgbe_do_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
