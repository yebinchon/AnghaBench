; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vf_vlan_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vf_vlan_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_vlan_filter_vf_cfg_cmd = type { i32, i64*, i32, i32 }
%struct.hclge_desc = type { i64, i32 }

@HCLGE_OPC_VLAN_FILTER_VF_CFG = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Send vf vlan command fail, ret =%d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"vf vlan table is full, vf vlan filter is disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Add vf vlan filter fail, ret =%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Kill vf vlan filter fail, ret =%d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HCLGE_MAX_VF_BYTES = common dso_local global i64 0, align 8
@HCLGE_VF_VLAN_DEL_NO_FOUND = common dso_local global i32 0, align 4
@HCLGE_VF_VLAN_NO_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32, i32, i32)* @hclge_set_vf_vlan_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vf_vlan_common(%struct.hclge_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hclge_vlan_filter_vf_cfg_cmd*, align 8
  %13 = alloca %struct.hclge_vlan_filter_vf_cfg_cmd*, align 8
  %14 = alloca [2 x %struct.hclge_desc], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %158

28:                                               ; preds = %24, %5
  %29 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %14, i64 0, i64 0
  %30 = load i32, i32* @HCLGE_OPC_VLAN_FILTER_VF_CFG, align 4
  %31 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %29, i32 %30, i32 0)
  %32 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %14, i64 0, i64 1
  %33 = load i32, i32* @HCLGE_OPC_VLAN_FILTER_VF_CFG, align 4
  %34 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %32, i32 %33, i32 0)
  %35 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %36 = call i32 @cpu_to_le16(i32 %35)
  %37 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %14, i64 0, i64 0
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sdiv i32 %41, 8
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %16, align 8
  %44 = load i32, i32* %8, align 4
  %45 = srem i32 %44, 8
  %46 = shl i32 1, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %15, align 8
  %48 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %14, i64 0, i64 0
  %49 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 16
  %51 = inttoptr i64 %50 to %struct.hclge_vlan_filter_vf_cfg_cmd*
  store %struct.hclge_vlan_filter_vf_cfg_cmd* %51, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %52 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %14, i64 0, i64 1
  %53 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 16
  %55 = inttoptr i64 %54 to %struct.hclge_vlan_filter_vf_cfg_cmd*
  store %struct.hclge_vlan_filter_vf_cfg_cmd* %55, %struct.hclge_vlan_filter_vf_cfg_cmd** %13, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @cpu_to_le16(i32 %56)
  %58 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %59 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %62 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp ult i64 %63, 16
  br i1 %64, label %65, label %72

65:                                               ; preds = %28
  %66 = load i64, i64* %15, align 8
  %67 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %68 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64 %66, i64* %71, align 8
  br label %80

72:                                               ; preds = %28
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %13, align 8
  %75 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = sub i64 %77, 16
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %73, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %65
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 2
  %83 = getelementptr inbounds [2 x %struct.hclge_desc], [2 x %struct.hclge_desc]* %14, i64 0, i64 0
  %84 = call i32 @hclge_cmd_send(i32* %82, %struct.hclge_desc* %83, i32 2)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %89 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %6, align 4
  br label %158

95:                                               ; preds = %80
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %134, label %98

98:                                               ; preds = %95
  %99 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %100 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %105 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %103, %98
  store i32 0, i32* %6, align 4
  br label %158

109:                                              ; preds = %103
  %110 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %111 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %117 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @set_bit(i32 %115, i32 %118)
  %120 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %121 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = call i32 @dev_warn(i32* %123, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %158

125:                                              ; preds = %109
  %126 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %127 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %131 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  br label %155

134:                                              ; preds = %95
  %135 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %136 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %158

140:                                              ; preds = %134
  %141 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %142 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %158

146:                                              ; preds = %140
  %147 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %148 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %147, i32 0, i32 0
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load %struct.hclge_vlan_filter_vf_cfg_cmd*, %struct.hclge_vlan_filter_vf_cfg_cmd** %12, align 8
  %152 = getelementptr inbounds %struct.hclge_vlan_filter_vf_cfg_cmd, %struct.hclge_vlan_filter_vf_cfg_cmd* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @dev_err(i32* %150, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %146, %125
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %155, %145, %139, %114, %108, %87, %27
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
