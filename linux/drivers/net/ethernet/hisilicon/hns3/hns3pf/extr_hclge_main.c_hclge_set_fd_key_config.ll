; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_fd_key_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_fd_key_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.hclge_fd_key_cfg* }
%struct.hclge_fd_key_cfg = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hclge_set_fd_key_config_cmd = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_FD_KEY_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set fd key fail, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_set_fd_key_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_fd_key_config(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_set_fd_key_config_cmd*, align 8
  %6 = alloca %struct.hclge_fd_key_cfg*, align 8
  %7 = alloca %struct.hclge_desc, align 8
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @HCLGE_OPC_FD_KEY_CONFIG, align 4
  %10 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %7, i32 %9, i32 0)
  %11 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %7, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hclge_set_fd_key_config_cmd*
  store %struct.hclge_set_fd_key_config_cmd* %13, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %17, i64 %19
  store %struct.hclge_fd_key_cfg* %20, %struct.hclge_fd_key_cfg** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %6, align 8
  %25 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %6, align 8
  %30 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %6, align 8
  %35 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %6, align 8
  %40 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %6, align 8
  %50 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, -1
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.hclge_fd_key_cfg*, %struct.hclge_fd_key_cfg** %6, align 8
  %57 = getelementptr inbounds %struct.hclge_fd_key_cfg, %struct.hclge_fd_key_cfg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.hclge_set_fd_key_config_cmd*, %struct.hclge_set_fd_key_config_cmd** %5, align 8
  %62 = getelementptr inbounds %struct.hclge_set_fd_key_config_cmd, %struct.hclge_set_fd_key_config_cmd* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %64 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %63, i32 0, i32 1
  %65 = call i32 @hclge_cmd_send(i32* %64, %struct.hclge_desc* %7, i32 1)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %2
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %70 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %68, %2
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
