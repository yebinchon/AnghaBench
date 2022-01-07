; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.hclge_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"get mac mode error %d.\0A\00", align 1
@HCLGE_FD_RULE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Get wrong speed ret=%d.\0A\00", align 1
@HNAE3_MAX_TC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"TC num = %d.\0A\00", align 1
@HCLGE_FLAG_TC_BASE_SCH_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_configure(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_cfg, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %8 = call i32 @hclge_get_cfg(%struct.hclge_dev* %7, %struct.hclge_cfg* %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %202

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 16
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 15
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 14
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %35 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ether_addr_copy(i32 %38, i32 %40)
  %42 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 8
  %48 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %51 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %60, i32 0, i32 11
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %63 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %77 = call i64 @hnae3_dev_fd_supported(%struct.hclge_dev* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %19
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  %82 = load i32, i32* @HCLGE_FD_RULE_NONE, align 4
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %84 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %79, %19
  %86 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %89 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %88, i32 0, i32 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @hclge_parse_speed(i32 %87, i32* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %97 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %96, i32 0, i32 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %202

103:                                              ; preds = %85
  %104 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %105 = getelementptr inbounds %struct.hclge_cfg, %struct.hclge_cfg* %4, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @hclge_parse_link_mode(%struct.hclge_dev* %104, i32 %106)
  %108 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %109 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @HNAE3_MAX_TC, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %103
  %114 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %115 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %116, 1
  br i1 %117, label %118, label %129

118:                                              ; preds = %113, %103
  %119 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %120 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %119, i32 0, i32 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %124 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dev_warn(i32* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %128 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %118, %113
  %130 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %131 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %129
  %134 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %135 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %137 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  br label %144

138:                                              ; preds = %129
  %139 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %140 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %143 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %138, %133
  %145 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %146 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %161, %144
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %151 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ult i32 %149, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %157 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @hnae3_set_bit(i32 %158, i32 %159, i32 1)
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %5, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %148

164:                                              ; preds = %148
  %165 = load i32, i32* @HCLGE_FLAG_TC_BASE_SCH_MODE, align 4
  %166 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %167 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 8
  %168 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %169 = call i32 @hclge_init_kdump_kernel_config(%struct.hclge_dev* %168)
  %170 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %171 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %170, i32 0, i32 4
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = call i32 @dev_to_node(i32* %173)
  %175 = call i32 @cpumask_of_node(i32 %174)
  %176 = call i32 @cpumask_weight(i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %164
  %180 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %181 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %180, i32 0, i32 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @PCI_FUNC(i32 %184)
  %186 = load i32, i32* %5, align 4
  %187 = urem i32 %185, %186
  br label %189

188:                                              ; preds = %164
  br label %189

189:                                              ; preds = %188, %179
  %190 = phi i32 [ %187, %179 ], [ 0, %188 ]
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %193 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %192, i32 0, i32 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = call i32 @dev_to_node(i32* %195)
  %197 = call i32 @cpumask_local_spread(i32 %191, i32 %196)
  %198 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %199 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %198, i32 0, i32 3
  %200 = call i32 @cpumask_set_cpu(i32 %197, i32* %199)
  %201 = load i32, i32* %6, align 4
  store i32 %201, i32* %2, align 4
  br label %202

202:                                              ; preds = %189, %95, %11
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i32 @hclge_get_cfg(%struct.hclge_dev*, %struct.hclge_cfg*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i64 @hnae3_dev_fd_supported(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_parse_speed(i32, i32*) #1

declare dso_local i32 @hclge_parse_link_mode(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @hclge_init_kdump_kernel_config(%struct.hclge_dev*) #1

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
