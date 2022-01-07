; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_mac_vlan_cmd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_get_mac_vlan_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"cmdq execute failed for get_mac_vlan_cmd_status,status=%d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HCLGE_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@HCLGE_ADD_UC_OVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"add mac addr failed for uc_overflow.\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@HCLGE_ADD_MC_OVERFLOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"add mac addr failed for mc_overflow.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"add mac addr failed for undefined, code=%u.\0A\00", align 1
@HCLGE_MAC_VLAN_REMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"remove mac addr failed for miss.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"remove mac addr failed for undefined, code=%u.\0A\00", align 1
@HCLGE_MAC_VLAN_LKUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"lookup mac addr failed for miss.\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"lookup mac addr failed for undefined, code=%u.\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"unknown opcode for get_mac_vlan_cmd_status, opcode=%d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, i32, i32, i32)* @hclge_get_mac_vlan_cmd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_mac_vlan_cmd_status(%struct.hclge_vport* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_dev*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %12 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %11, i32 0, i32 0
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  store %struct.hclge_dev* %13, %struct.hclge_dev** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %140

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @HCLGE_MAC_VLAN_ADD, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29
  store i32 0, i32* %5, align 4
  br label %140

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HCLGE_ADD_UC_OVERFLOW, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %140

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @HCLGE_ADD_MC_OVERFLOW, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %140

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %64 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %140

71:                                               ; preds = %25
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @HCLGE_MAC_VLAN_REMOVE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %140

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %84 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %140

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %93 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %140

100:                                              ; preds = %71
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @HCLGE_MAC_VLAN_LKUP, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %140

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %113 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @dev_dbg(i32* %115, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %117 = load i32, i32* @ENOENT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %140

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %122 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %140

129:                                              ; preds = %100
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %133 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %9, align 4
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %131, %120, %111, %107, %91, %82, %78, %62, %52, %40, %35, %16
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
