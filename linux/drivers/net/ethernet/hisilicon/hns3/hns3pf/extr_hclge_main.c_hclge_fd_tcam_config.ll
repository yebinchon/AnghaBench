; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_tcam_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_tcam_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_fd_tcam_config_1_cmd = type { i32, i32, i32, i32, i32, i32 }
%struct.hclge_fd_tcam_config_2_cmd = type { i32 }
%struct.hclge_fd_tcam_config_3_cmd = type { i32 }
%struct.hclge_desc = type { i64, i32 }

@HCLGE_OPC_FD_TCAM_OP = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4
@HCLGE_FD_EPORT_SW_EN_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"config tcam key fail, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32, i32, i32*, i32)* @hclge_fd_tcam_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_fd_tcam_config(%struct.hclge_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hclge_fd_tcam_config_1_cmd*, align 8
  %14 = alloca %struct.hclge_fd_tcam_config_2_cmd*, align 8
  %15 = alloca %struct.hclge_fd_tcam_config_3_cmd*, align 8
  %16 = alloca [3 x %struct.hclge_desc], align 16
  %17 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 0
  %19 = load i32, i32* @HCLGE_OPC_FD_TCAM_OP, align 4
  %20 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %18, i32 %19, i32 0)
  %21 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %22 = call i32 @cpu_to_le16(i32 %21)
  %23 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 0
  %24 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 1
  %28 = load i32, i32* @HCLGE_OPC_FD_TCAM_OP, align 4
  %29 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %27, i32 %28, i32 0)
  %30 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %31 = call i32 @cpu_to_le16(i32 %30)
  %32 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 1
  %33 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 2
  %37 = load i32, i32* @HCLGE_OPC_FD_TCAM_OP, align 4
  %38 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %36, i32 %37, i32 0)
  %39 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 0
  %40 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 16
  %42 = inttoptr i64 %41 to %struct.hclge_fd_tcam_config_1_cmd*
  store %struct.hclge_fd_tcam_config_1_cmd* %42, %struct.hclge_fd_tcam_config_1_cmd** %13, align 8
  %43 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 1
  %44 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 16
  %46 = inttoptr i64 %45 to %struct.hclge_fd_tcam_config_2_cmd*
  store %struct.hclge_fd_tcam_config_2_cmd* %46, %struct.hclge_fd_tcam_config_2_cmd** %14, align 8
  %47 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 2
  %48 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 16
  %50 = inttoptr i64 %49 to %struct.hclge_fd_tcam_config_3_cmd*
  store %struct.hclge_fd_tcam_config_3_cmd* %50, %struct.hclge_fd_tcam_config_3_cmd** %15, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %13, align 8
  %53 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %13, align 8
  %59 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %13, align 8
  %61 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @HCLGE_FD_EPORT_SW_EN_B, align 4
  %64 = call i32 @hnae3_set_bit(i32 %62, i32 %63, i32 0)
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %13, align 8
  %68 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %6
  %72 = load i32, i32* %12, align 4
  br label %74

73:                                               ; preds = %6
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %13, align 8
  %77 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.hclge_fd_tcam_config_1_cmd*, %struct.hclge_fd_tcam_config_1_cmd** %13, align 8
  %82 = getelementptr inbounds %struct.hclge_fd_tcam_config_1_cmd, %struct.hclge_fd_tcam_config_1_cmd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = call i32 @memcpy(i32 %83, i32* %85, i32 4)
  %87 = load %struct.hclge_fd_tcam_config_2_cmd*, %struct.hclge_fd_tcam_config_2_cmd** %14, align 8
  %88 = getelementptr inbounds %struct.hclge_fd_tcam_config_2_cmd, %struct.hclge_fd_tcam_config_2_cmd* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = call i32 @memcpy(i32 %89, i32* %91, i32 4)
  %93 = load %struct.hclge_fd_tcam_config_3_cmd*, %struct.hclge_fd_tcam_config_3_cmd** %15, align 8
  %94 = getelementptr inbounds %struct.hclge_fd_tcam_config_3_cmd, %struct.hclge_fd_tcam_config_3_cmd* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = call i32 @memcpy(i32 %95, i32* %97, i32 4)
  br label %99

99:                                               ; preds = %80, %74
  %100 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %101 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %100, i32 0, i32 1
  %102 = getelementptr inbounds [3 x %struct.hclge_desc], [3 x %struct.hclge_desc]* %16, i64 0, i64 0
  %103 = call i32 @hclge_cmd_send(i32* %101, %struct.hclge_desc* %102, i32 3)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %108 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %106, %99
  %114 = load i32, i32* %17, align 4
  ret i32 %114
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hnae3_set_bit(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
