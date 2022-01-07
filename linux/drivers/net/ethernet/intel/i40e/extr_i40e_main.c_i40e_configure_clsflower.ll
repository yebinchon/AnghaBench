; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_clsflower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_clsflower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf*, i32 }
%struct.i40e_pf = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.flow_cls_offload = type { i32, i32 }
%struct.i40e_cloud_filter = type { i32, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid traffic class\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Flow Director Sideband filters exists, turn ntuple off to configure cloud filters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Disable Flow Director Sideband, configuring Cloud filters via tc-flower\0A\00", align 1
@I40E_FLAG_FD_SB_TO_CLOUD_FILTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to add cloud filter, err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.flow_cls_offload*)* @i40e_configure_clsflower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_configure_clsflower(%struct.i40e_vsi* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_cloud_filter*, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  %10 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %11 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %14 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @tc_classid_to_hwtc(i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  store %struct.i40e_cloud_filter* null, %struct.i40e_cloud_filter** %7, align 8
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %17, i32 0, i32 0
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  store %struct.i40e_pf* %19, %struct.i40e_pf** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 0
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %24, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %174

32:                                               ; preds = %2
  %33 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @test_bit(i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @test_bit(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39, %32
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %174

49:                                               ; preds = %39
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %51 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 5
  %57 = call i32 @hlist_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %61 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %60, i32 0, i32 0
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %61, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %174

69:                                               ; preds = %54
  %70 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %71 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %70, i32 0, i32 0
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %71, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %69
  %79 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %80 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %79, i32 0, i32 0
  %81 = load %struct.i40e_pf*, %struct.i40e_pf** %80, align 8
  %82 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %89 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %88, i32 0, i32 0
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %89, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %87
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @I40E_FLAG_FD_SB_TO_CLOUD_FILTER, align 4
  %95 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %96 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %95, i32 0, i32 0
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %96, align 8
  %98 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %78, %69
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call %struct.i40e_cloud_filter* @kzalloc(i32 24, i32 %102)
  store %struct.i40e_cloud_filter* %103, %struct.i40e_cloud_filter** %7, align 8
  %104 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %105 = icmp ne %struct.i40e_cloud_filter* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %174

109:                                              ; preds = %101
  %110 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %111 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %114 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %116 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %117 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %118 = call i32 @i40e_parse_cls_flower(%struct.i40e_vsi* %115, %struct.flow_cls_offload* %116, %struct.i40e_cloud_filter* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %170

122:                                              ; preds = %109
  %123 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %126 = call i32 @i40e_handle_tclass(%struct.i40e_vsi* %123, i32 %124, %struct.i40e_cloud_filter* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %170

130:                                              ; preds = %122
  %131 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %132 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %137 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %138 = call i32 @i40e_add_del_cloud_filter_big_buf(%struct.i40e_vsi* %136, %struct.i40e_cloud_filter* %137, i32 1)
  store i32 %138, i32* %9, align 4
  br label %143

139:                                              ; preds = %130
  %140 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %141 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %142 = call i32 @i40e_add_del_cloud_filter(%struct.i40e_vsi* %140, %struct.i40e_cloud_filter* %141, i32 1)
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %148 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %147, i32 0, i32 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %152 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %151, i32 0, i32 3
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @i40e_stat_str(i32* %152, i32 %153)
  %155 = call i32 (i32*, i8*, ...) @dev_err(i32* %150, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %170

156:                                              ; preds = %143
  %157 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %158 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %157, i32 0, i32 0
  %159 = call i32 @INIT_HLIST_NODE(i32* %158)
  %160 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %161 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %160, i32 0, i32 0
  %162 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %163 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %162, i32 0, i32 2
  %164 = call i32 @hlist_add_head(i32* %161, i32* %163)
  %165 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %166 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %3, align 4
  br label %174

170:                                              ; preds = %146, %129, %121
  %171 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %7, align 8
  %172 = call i32 @kfree(%struct.i40e_cloud_filter* %171)
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %170, %156, %106, %59, %46, %22
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @tc_classid_to_hwtc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local %struct.i40e_cloud_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @i40e_parse_cls_flower(%struct.i40e_vsi*, %struct.flow_cls_offload*, %struct.i40e_cloud_filter*) #1

declare dso_local i32 @i40e_handle_tclass(%struct.i40e_vsi*, i32, %struct.i40e_cloud_filter*) #1

declare dso_local i32 @i40e_add_del_cloud_filter_big_buf(%struct.i40e_vsi*, %struct.i40e_cloud_filter*, i32) #1

declare dso_local i32 @i40e_add_del_cloud_filter(%struct.i40e_vsi*, %struct.i40e_cloud_filter*, i32) #1

declare dso_local i32 @i40e_stat_str(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.i40e_cloud_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
