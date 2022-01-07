; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_fd_entry_by_arfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_fd_entry_by_arfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.flow_keys = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.hclge_fd_rule_tuples = type { i32 }
%struct.hclge_fd_rule = type { i32, i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCLGE_FD_EP_ACTIVE = common dso_local global i64 0, align 8
@MAX_FD_FILTER_NUM = common dso_local global i32 0, align 4
@HCLGE_FD_STAGE_1 = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i64, i64, %struct.flow_keys*)* @hclge_add_fd_entry_by_arfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_add_fd_entry_by_arfs(%struct.hnae3_handle* %0, i64 %1, i64 %2, %struct.flow_keys* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae3_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.flow_keys*, align 8
  %10 = alloca %struct.hclge_vport*, align 8
  %11 = alloca %struct.hclge_fd_rule_tuples, align 4
  %12 = alloca %struct.hclge_dev*, align 8
  %13 = alloca %struct.hclge_fd_rule*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.flow_keys* %3, %struct.flow_keys** %9, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %6, align 8
  %18 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %17)
  store %struct.hclge_vport* %18, %struct.hclge_vport** %10, align 8
  %19 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %20 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %19, i32 0, i32 0
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %20, align 8
  store %struct.hclge_dev* %21, %struct.hclge_dev** %12, align 8
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %23 = call i32 @hnae3_dev_fd_supported(%struct.hclge_dev* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %150

28:                                               ; preds = %4
  %29 = call i32 @memset(%struct.hclge_fd_rule_tuples* %11, i32 0, i32 4)
  %30 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %31 = call i32 @hclge_fd_get_flow_tuples(%struct.flow_keys* %30, %struct.hclge_fd_rule_tuples* %11)
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 1
  %34 = call i32 @spin_lock_bh(i32* %33)
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HCLGE_FD_EP_ACTIVE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_bh(i32* %42)
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %150

46:                                               ; preds = %28
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %48 = call %struct.hclge_fd_rule* @hclge_fd_search_flow_keys(%struct.hclge_dev* %47, %struct.hclge_fd_rule_tuples* %11)
  store %struct.hclge_fd_rule* %48, %struct.hclge_fd_rule** %13, align 8
  %49 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %50 = icmp ne %struct.hclge_fd_rule* %49, null
  br i1 %50, label %115, label %51

51:                                               ; preds = %46
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAX_FD_FILTER_NUM, align 4
  %56 = call i64 @find_first_zero_bit(i32 %54, i32 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %59 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @HCLGE_FD_STAGE_1, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %57, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_bh(i32* %68)
  %70 = load i32, i32* @ENOSPC, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %150

72:                                               ; preds = %51
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call %struct.hclge_fd_rule* @kzalloc(i32 24, i32 %73)
  store %struct.hclge_fd_rule* %74, %struct.hclge_fd_rule** %13, align 8
  %75 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %76 = icmp ne %struct.hclge_fd_rule* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %79 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %150

83:                                               ; preds = %72
  %84 = load i64, i64* %15, align 8
  %85 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %86 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @set_bit(i64 %84, i32 %87)
  %89 = load i64, i64* %15, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %92 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %95 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %98 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %100 = call i32 @hclge_fd_build_arfs_rule(%struct.hclge_fd_rule_tuples* %11, %struct.hclge_fd_rule* %99)
  %101 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %102 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %103 = call i32 @hclge_fd_config_rule(%struct.hclge_dev* %101, %struct.hclge_fd_rule* %102)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %105 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock_bh(i32* %105)
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %83
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %5, align 4
  br label %150

111:                                              ; preds = %83
  %112 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %113 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %5, align 4
  br label %150

115:                                              ; preds = %46
  %116 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %117 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %120 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %115
  %125 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %126 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %5, align 4
  br label %150

128:                                              ; preds = %115
  %129 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %130 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %134 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %136 = load i64, i64* @HCLGE_FD_STAGE_1, align 8
  %137 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %138 = call i32 @hclge_config_action(%struct.hclge_dev* %135, i64 %136, %struct.hclge_fd_rule* %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %128
  %142 = load i64, i64* %14, align 8
  %143 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %144 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* %16, align 4
  store i32 %145, i32* %5, align 4
  br label %150

146:                                              ; preds = %128
  %147 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %13, align 8
  %148 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %141, %124, %111, %109, %77, %66, %40, %25
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hnae3_dev_fd_supported(%struct.hclge_dev*) #1

declare dso_local i32 @memset(%struct.hclge_fd_rule_tuples*, i32, i32) #1

declare dso_local i32 @hclge_fd_get_flow_tuples(%struct.flow_keys*, %struct.hclge_fd_rule_tuples*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.hclge_fd_rule* @hclge_fd_search_flow_keys(%struct.hclge_dev*, %struct.hclge_fd_rule_tuples*) #1

declare dso_local i64 @find_first_zero_bit(i32, i32) #1

declare dso_local %struct.hclge_fd_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @hclge_fd_build_arfs_rule(%struct.hclge_fd_rule_tuples*, %struct.hclge_fd_rule*) #1

declare dso_local i32 @hclge_fd_config_rule(%struct.hclge_dev*, %struct.hclge_fd_rule*) #1

declare dso_local i32 @hclge_config_action(%struct.hclge_dev*, i64, %struct.hclge_fd_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
