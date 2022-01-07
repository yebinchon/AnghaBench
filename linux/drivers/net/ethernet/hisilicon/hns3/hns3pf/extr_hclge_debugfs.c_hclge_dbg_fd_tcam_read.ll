; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_fd_tcam_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_debugfs.c_hclge_dbg_fd_tcam_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_fd_tcam_config_1_cmd = type { i32, i64, i32, i32 }
%struct.hclge_fd_tcam_config_2_cmd = type { i64 }
%struct.hclge_fd_tcam_config_3_cmd = type { i64 }
%struct.hclge_desc = type { i64, i32 }

@HCLGE_OPC_FD_TCAM_OP = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c" read result tcam key %s(%u):\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, i32, i32, i32)* @hclge_dbg_fd_tcam_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_dbg_fd_tcam_read(%struct.hclge_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hclge_fd_tcam_config_1_cmd*, align 8
  %10 = alloca %struct.hclge_fd_tcam_config_2_cmd*, align 8
  %11 = alloca %struct.hclge_fd_tcam_config_3_cmd*, align 8
  %12 = alloca [3 x %struct.hclge_desc], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 0
  %17 = load i32, i32* @HCLGE_OPC_FD_TCAM_OP, align 4
  %18 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %16, i32 %17, i32 1)
  %19 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 0
  %22 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 1
  %26 = load i32, i32* @HCLGE_OPC_FD_TCAM_OP, align 4
  %27 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %25, i32 %26, i32 1)
  %28 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 1
  %31 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 2
  %35 = load i32, i32* @HCLGE_OPC_FD_TCAM_OP, align 4
  %36 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %34, i32 %35, i32 1)
  %37 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 0
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 16
  %40 = inttoptr i64 %39 to %struct.hclge_fd_tcam_config_1_cmd*
  store %struct.hclge_fd_tcam_config_1_cmd* %40, %struct.hclge_fd_tcam_config_1_cmd** %9, align 8
  %41 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 1
  %42 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 16
  %44 = inttoptr i64 %43 to %struct.hclge_fd_tcam_config_2_cmd*
  store %struct.hclge_fd_tcam_config_2_cmd* %44, %struct.hclge_fd_tcam_config_2_cmd** %10, align 8
  %45 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 2
  %46 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 16
  %48 = inttoptr i64 %47 to %struct.hclge_fd_tcam_config_3_cmd*
  store %struct.hclge_fd_tcam_config_3_cmd* %48, %struct.hclge_fd_tcam_config_3_cmd** %11, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %9, align 8
  %51 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %9, align 8
  %57 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %9, align 8
  %61 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %63 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %62, i32 0, i32 1
  %64 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %12, i64 0, i64 0
  %65 = call i32 @hclge_cmd_send(i32* %63, %struct.hclge_desc* %64, i32 3)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %4
  br label %145

69:                                               ; preds = %4
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %77, i32 %78)
  %80 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %9, align 8
  %81 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %98, %69
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %89 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %15, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %15, align 8
  %94 = load i32, i32* %92, align 4
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %84

101:                                              ; preds = %84
  %102 = load %struct.hclge_fd_tcam_config_2_cmd*, %struct.hclge_fd_tcam_config_2_cmd** %10, align 8
  %103 = getelementptr inbounds %struct.hclge_fd_tcam_config_2_cmd, %struct.hclge_fd_tcam_config_2_cmd* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %120, %101
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 6
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %111 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %15, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %15, align 8
  %116 = load i32, i32* %114, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %106

123:                                              ; preds = %106
  %124 = load %struct.hclge_fd_tcam_config_3_cmd*, %struct.hclge_fd_tcam_config_3_cmd** %11, align 8
  %125 = getelementptr inbounds %struct.hclge_fd_tcam_config_3_cmd, %struct.hclge_fd_tcam_config_3_cmd* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %142, %123
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %129, 5
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %133 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32*, i32** %15, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %15, align 8
  %138 = load i32, i32* %136, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %128

145:                                              ; preds = %68, %128
  ret void
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
