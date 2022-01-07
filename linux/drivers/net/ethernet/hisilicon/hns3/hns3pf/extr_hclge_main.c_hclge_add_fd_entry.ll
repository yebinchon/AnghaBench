; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_fd_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_add_fd_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.hclge_vport = type { i64, i64, %struct.hclge_dev* }
%struct.hclge_dev = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ethtool_rx_flow_spec = type { i64, i32, i32 }
%struct.hclge_fd_rule = type { i32, i32, i64, i64, i64, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Please enable flow director first\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Check fd spec failed\0A\00", align 1
@RX_CLS_FLOW_DISC = common dso_local global i64 0, align 8
@HCLGE_FD_ACTION_DROP_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Error: vf id (%d) > max vf num (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Error: queue id (%d) > max tqp num (%d)\0A\00", align 1
@HCLGE_FD_ACTION_ACCEPT_PACKET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCLGE_FD_EP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, %struct.ethtool_rxnfc*)* @hclge_add_fd_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_add_fd_entry(%struct.hnae3_handle* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca %struct.hclge_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %11 = alloca %struct.hclge_fd_rule*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %19 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %18)
  store %struct.hclge_vport* %19, %struct.hclge_vport** %6, align 8
  %20 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %21 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %20, i32 0, i32 2
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %21, align 8
  store %struct.hclge_dev* %22, %struct.hclge_dev** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %24 = call i32 @hnae3_dev_fd_supported(%struct.hclge_dev* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %201

29:                                               ; preds = %2
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %31 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %201

42:                                               ; preds = %29
  %43 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %43, i32 0, i32 0
  %45 = bitcast i32* %44 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %45, %struct.ethtool_rx_flow_spec** %10, align 8
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %47 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %10, align 8
  %48 = call i32 @hclge_fd_check_spec(%struct.hclge_dev* %46, %struct.ethtool_rx_flow_spec* %47, i64* %12)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %53 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %3, align 4
  br label %201

58:                                               ; preds = %42
  %59 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %10, align 8
  %60 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RX_CLS_FLOW_DISC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @HCLGE_FD_ACTION_DROP_PACKET, align 4
  store i32 %65, i32* %13, align 4
  br label %144

66:                                               ; preds = %58
  %67 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %10, align 8
  %68 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @ethtool_get_flow_spec_ring(i64 %69)
  store i64 %70, i64* %15, align 8
  %71 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %10, align 8
  %72 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ethtool_get_flow_spec_ring_vf(i64 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %77 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %75, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %66
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %82 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %87 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %201

92:                                               ; preds = %66
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %97 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  br label %108

104:                                              ; preds = %92
  %105 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %106 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  br label %108

108:                                              ; preds = %104, %95
  %109 = phi i64 [ %103, %95 ], [ %107, %104 ]
  store i64 %109, i64* %8, align 8
  %110 = load i32, i32* %16, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %114 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  br label %125

121:                                              ; preds = %108
  %122 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %123 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  br label %125

125:                                              ; preds = %121, %112
  %126 = phi i64 [ %120, %112 ], [ %124, %121 ]
  store i64 %126, i64* %17, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %17, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %132 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %17, align 8
  %137 = sub nsw i64 %136, 1
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %135, i64 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %201

141:                                              ; preds = %125
  %142 = load i32, i32* @HCLGE_FD_ACTION_ACCEPT_PACKET, align 4
  store i32 %142, i32* %13, align 4
  %143 = load i64, i64* %15, align 8
  store i64 %143, i64* %9, align 8
  br label %144

144:                                              ; preds = %141, %64
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call %struct.hclge_fd_rule* @kzalloc(i32 40, i32 %145)
  store %struct.hclge_fd_rule* %146, %struct.hclge_fd_rule** %11, align 8
  %147 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %148 = icmp ne %struct.hclge_fd_rule* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %201

152:                                              ; preds = %144
  %153 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %154 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %10, align 8
  %155 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %156 = call i32 @hclge_fd_get_tuple(%struct.hclge_dev* %153, %struct.ethtool_rx_flow_spec* %154, %struct.hclge_fd_rule* %155)
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %161 = call i32 @kfree(%struct.hclge_fd_rule* %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %3, align 4
  br label %201

163:                                              ; preds = %152
  %164 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %10, align 8
  %165 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %168 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  %169 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %10, align 8
  %170 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %173 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  %174 = load i64, i64* %12, align 8
  %175 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %176 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %175, i32 0, i32 4
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %8, align 8
  %178 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %179 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %178, i32 0, i32 3
  store i64 %177, i64* %179, align 8
  %180 = load i64, i64* %9, align 8
  %181 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %182 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %181, i32 0, i32 2
  store i64 %180, i64* %182, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %185 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* @HCLGE_FD_EP_ACTIVE, align 4
  %187 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %188 = getelementptr inbounds %struct.hclge_fd_rule, %struct.hclge_fd_rule* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %190 = call i32 @hclge_clear_arfs_rules(%struct.hnae3_handle* %189)
  %191 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %192 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %191, i32 0, i32 1
  %193 = call i32 @spin_lock_bh(i32* %192)
  %194 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %195 = load %struct.hclge_fd_rule*, %struct.hclge_fd_rule** %11, align 8
  %196 = call i32 @hclge_fd_config_rule(%struct.hclge_dev* %194, %struct.hclge_fd_rule* %195)
  store i32 %196, i32* %14, align 4
  %197 = load %struct.hclge_dev*, %struct.hclge_dev** %7, align 8
  %198 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %197, i32 0, i32 1
  %199 = call i32 @spin_unlock_bh(i32* %198)
  %200 = load i32, i32* %14, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %163, %159, %149, %130, %80, %51, %34, %26
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i32 @hnae3_dev_fd_supported(%struct.hclge_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hclge_fd_check_spec(%struct.hclge_dev*, %struct.ethtool_rx_flow_spec*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @ethtool_get_flow_spec_ring(i64) #1

declare dso_local i32 @ethtool_get_flow_spec_ring_vf(i64) #1

declare dso_local %struct.hclge_fd_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @hclge_fd_get_tuple(%struct.hclge_dev*, %struct.ethtool_rx_flow_spec*, %struct.hclge_fd_rule*) #1

declare dso_local i32 @kfree(%struct.hclge_fd_rule*) #1

declare dso_local i32 @hclge_clear_arfs_rules(%struct.hnae3_handle*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hclge_fd_config_rule(%struct.hclge_dev*, %struct.hclge_fd_rule*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
