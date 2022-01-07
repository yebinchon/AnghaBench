; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_sync_cmd_direct_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_sync_cmd_direct_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq = type { i32, i32**, i32, %struct.completion**, %struct.hinic_wq* }
%struct.completion = type { i32 }
%struct.hinic_wq = type { i32, i32 }
%struct.hinic_cmdq_buf = type { i32 }
%struct.hinic_cmdq_wqe = type { %struct.hinic_cmdq_wqe_lcmd }
%struct.hinic_cmdq_wqe_lcmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hinic_hw_wqe = type { %struct.hinic_cmdq_wqe }

@WQE_LCMD_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CMDQ_CMD_SYNC_DIRECT_RESP = common dso_local global i32 0, align 4
@HINIC_CMD_ACK_TYPE_CMDQ = common dso_local global i32 0, align 4
@HINIC_CMDQ_SYNC = common dso_local global i32 0, align 4
@CMDQ_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_cmdq*, i32, i32, %struct.hinic_cmdq_buf*, i32*)* @cmdq_sync_cmd_direct_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_sync_cmd_direct_resp(%struct.hinic_cmdq* %0, i32 %1, i32 %2, %struct.hinic_cmdq_buf* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_cmdq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hinic_cmdq_buf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hinic_cmdq_wqe*, align 8
  %13 = alloca %struct.hinic_cmdq_wqe, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.hinic_wq*, align 8
  %20 = alloca %struct.hinic_hw_wqe*, align 8
  %21 = alloca %struct.completion, align 4
  %22 = alloca %struct.hinic_cmdq_wqe_lcmd*, align 8
  store %struct.hinic_cmdq* %0, %struct.hinic_cmdq** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.hinic_cmdq_buf* %3, %struct.hinic_cmdq_buf** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %24 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %23, i32 0, i32 4
  %25 = load %struct.hinic_wq*, %struct.hinic_wq** %24, align 8
  store %struct.hinic_wq* %25, %struct.hinic_wq** %19, align 8
  %26 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %27 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %26, i32 0, i32 2
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.hinic_wq*, %struct.hinic_wq** %19, align 8
  %30 = load i32, i32* @WQE_LCMD_SIZE, align 4
  %31 = call %struct.hinic_hw_wqe* @hinic_get_wqe(%struct.hinic_wq* %29, i32 %30, i32* %14)
  store %struct.hinic_hw_wqe* %31, %struct.hinic_hw_wqe** %20, align 8
  %32 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %20, align 8
  %33 = call i64 @IS_ERR(%struct.hinic_hw_wqe* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %5
  %36 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %37 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %175

41:                                               ; preds = %5
  %42 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %20, align 8
  %43 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %42, i32 0, i32 0
  store %struct.hinic_cmdq_wqe* %43, %struct.hinic_cmdq_wqe** %12, align 8
  %44 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %45 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* @WQE_LCMD_SIZE, align 4
  %48 = load %struct.hinic_wq*, %struct.hinic_wq** %19, align 8
  %49 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ALIGN(i32 %47, i32 %50)
  %52 = load %struct.hinic_wq*, %struct.hinic_wq** %19, align 8
  %53 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %18, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.hinic_wq*, %struct.hinic_wq** %19, align 8
  %61 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %41
  %65 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %66 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %72 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hinic_wq*, %struct.hinic_wq** %19, align 8
  %74 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %64, %41
  %79 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %80 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* %16, i32** %84, align 8
  %85 = call i32 @init_completion(%struct.completion* %21)
  %86 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %87 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %86, i32 0, i32 3
  %88 = load %struct.completion**, %struct.completion*** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.completion*, %struct.completion** %88, i64 %90
  store %struct.completion* %21, %struct.completion** %91, align 8
  %92 = load i32, i32* @CMDQ_CMD_SYNC_DIRECT_RESP, align 4
  %93 = load %struct.hinic_cmdq_buf*, %struct.hinic_cmdq_buf** %10, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @HINIC_CMD_ACK_TYPE_CMDQ, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @cmdq_set_lcmd_wqe(%struct.hinic_cmdq_wqe* %13, i32 %92, %struct.hinic_cmdq_buf* %93, i32* null, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @WQE_LCMD_SIZE, align 4
  %101 = call i32 @hinic_cpu_to_be32(%struct.hinic_cmdq_wqe* %13, i32 %100)
  %102 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %12, align 8
  %103 = call i32 @cmdq_wqe_fill(%struct.hinic_cmdq_wqe* %102, %struct.hinic_cmdq_wqe* %13)
  %104 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %105 = load i32, i32* @HINIC_CMDQ_SYNC, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @cmdq_set_db(%struct.hinic_cmdq* %104, i32 %105, i32 %106)
  %108 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %109 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %108, i32 0, i32 2
  %110 = call i32 @spin_unlock_bh(i32* %109)
  %111 = load i32, i32* @CMDQ_TIMEOUT, align 4
  %112 = call i32 @wait_for_completion_timeout(%struct.completion* %21, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %155, label %114

114:                                              ; preds = %78
  %115 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %116 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %115, i32 0, i32 2
  %117 = call i32 @spin_lock_bh(i32* %116)
  %118 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %119 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %118, i32 0, i32 1
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, %16
  br i1 %125, label %126, label %133

126:                                              ; preds = %114
  %127 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %128 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %126, %114
  %134 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %135 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %134, i32 0, i32 3
  %136 = load %struct.completion**, %struct.completion*** %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.completion*, %struct.completion** %136, i64 %138
  %140 = load %struct.completion*, %struct.completion** %139, align 8
  %141 = icmp eq %struct.completion* %140, %21
  br i1 %141, label %142, label %149

142:                                              ; preds = %133
  %143 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %144 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %143, i32 0, i32 3
  %145 = load %struct.completion**, %struct.completion*** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.completion*, %struct.completion** %145, i64 %147
  store %struct.completion* null, %struct.completion** %148, align 8
  br label %149

149:                                              ; preds = %142, %133
  %150 = load %struct.hinic_cmdq*, %struct.hinic_cmdq** %7, align 8
  %151 = getelementptr inbounds %struct.hinic_cmdq, %struct.hinic_cmdq* %150, i32 0, i32 2
  %152 = call i32 @spin_unlock_bh(i32* %151)
  %153 = load i32, i32* @ETIMEDOUT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %6, align 4
  br label %175

155:                                              ; preds = %78
  %156 = call i32 (...) @smp_rmb()
  %157 = load i32*, i32** %11, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %12, align 8
  %161 = getelementptr inbounds %struct.hinic_cmdq_wqe, %struct.hinic_cmdq_wqe* %160, i32 0, i32 0
  store %struct.hinic_cmdq_wqe_lcmd* %161, %struct.hinic_cmdq_wqe_lcmd** %22, align 8
  %162 = load %struct.hinic_cmdq_wqe_lcmd*, %struct.hinic_cmdq_wqe_lcmd** %22, align 8
  %163 = getelementptr inbounds %struct.hinic_cmdq_wqe_lcmd, %struct.hinic_cmdq_wqe_lcmd* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @cpu_to_be64(i32 %165)
  %167 = load i32*, i32** %11, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %159, %155
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* @EFAULT, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %6, align 4
  br label %175

174:                                              ; preds = %168
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %174, %171, %149, %35
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.hinic_hw_wqe* @hinic_get_wqe(%struct.hinic_wq*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.hinic_hw_wqe*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @cmdq_set_lcmd_wqe(%struct.hinic_cmdq_wqe*, i32, %struct.hinic_cmdq_buf*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hinic_cpu_to_be32(%struct.hinic_cmdq_wqe*, i32) #1

declare dso_local i32 @cmdq_wqe_fill(%struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe*) #1

declare dso_local i32 @cmdq_set_db(%struct.hinic_cmdq*, i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
