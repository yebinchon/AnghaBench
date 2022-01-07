; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_rc_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_rc_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32 }
%struct.ice_ring_container = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ice_vsi = type { i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ICE_MAX_INTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Invalid value, %s-usecs-high valid values are 0 (disabled), %d-%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"setting %s-usecs-high is not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid container type %d\0A\00", align 1
@ICE_ITR_DYNAMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"%s interrupt throttling cannot be changed if adaptive-%s is enabled\0A\00", align 1
@ICE_ITR_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Invalid value, %s-usecs range is 0-%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Invalid value, %s-usecs must be even\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ethtool_coalesce*, %struct.ice_ring_container*, %struct.ice_vsi*)* @ice_set_rc_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_rc_coalesce(i32 %0, %struct.ethtool_coalesce* %1, %struct.ice_ring_container* %2, %struct.ice_vsi* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ethtool_coalesce*, align 8
  %8 = alloca %struct.ice_ring_container*, align 8
  %9 = alloca %struct.ice_vsi*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ice_pf*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %7, align 8
  store %struct.ice_ring_container* %2, %struct.ice_ring_container** %8, align 8
  store %struct.ice_vsi* %3, %struct.ice_vsi** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 129
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %18, i8** %10, align 8
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 1
  %21 = load %struct.ice_pf*, %struct.ice_pf** %20, align 8
  store %struct.ice_pf* %21, %struct.ice_pf** %13, align 8
  %22 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %23 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %209

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %132 [
    i32 129, label %31
    i32 128, label %112
  ]

31:                                               ; preds = %29
  %32 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %33 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ICE_MAX_INTRL, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %37
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %47 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %45, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %42, %31
  %52 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %53 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %57 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ICE_MAX_INTRL, align 4
  %61 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %54, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %209

64:                                               ; preds = %42, %37
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %69 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %67, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %64
  %77 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %78 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %81 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %79, i32* %85, align 4
  %86 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %87 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %86, i32 0, i32 1
  %88 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %89 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @GLINT_RATE(i32 %94)
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %100 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @ice_intrl_usec_to_reg(i32 %98, i32 %102)
  %104 = call i32 @wr32(%struct.TYPE_8__* %87, i32 %95, i32 %103)
  br label %105

105:                                              ; preds = %76, %64
  %106 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %107 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %11, align 4
  %109 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %110 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %12, align 4
  br label %141

112:                                              ; preds = %29
  %113 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %114 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %119 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %120, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %209

125:                                              ; preds = %112
  %126 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %127 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %11, align 4
  %129 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %130 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %12, align 4
  br label %141

132:                                              ; preds = %29
  %133 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %134 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @dev_dbg(i32* %136, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %209

141:                                              ; preds = %125, %105
  %142 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %143 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ICE_ITR_DYNAMIC, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %144, %146
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %141
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %156 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %10, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %157, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %158, i8* %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %5, align 4
  br label %209

163:                                              ; preds = %151, %141
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @ICE_ITR_MAX, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %169 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = load i32, i32* @ICE_ITR_MAX, align 4
  %173 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %170, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %171, i32 %172)
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %5, align 4
  br label %209

176:                                              ; preds = %163
  %177 = load i32, i32* %12, align 4
  %178 = srem i32 %177, 2
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load %struct.ice_vsi*, %struct.ice_vsi** %9, align 8
  %182 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i8*, i8** %10, align 8
  %185 = call i32 (i32, i8*, i8*, ...) @netdev_info(i32 %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  br label %209

188:                                              ; preds = %176
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load i32, i32* @ICE_ITR_DYNAMIC, align 4
  %193 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %194 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %208

197:                                              ; preds = %188
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %200 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %202 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @ITR_REG_ALIGN(i32 %203)
  %205 = call i32 @ITR_TO_REG(i32 %204)
  %206 = load %struct.ice_ring_container*, %struct.ice_ring_container** %8, align 8
  %207 = getelementptr inbounds %struct.ice_ring_container, %struct.ice_ring_container* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %197, %191
  store i32 0, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %180, %167, %154, %132, %117, %51, %26
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local i32 @netdev_info(i32, i8*, i8*, ...) #1

declare dso_local i32 @wr32(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @GLINT_RATE(i32) #1

declare dso_local i32 @ice_intrl_usec_to_reg(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ITR_TO_REG(i32) #1

declare dso_local i32 @ITR_REG_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
