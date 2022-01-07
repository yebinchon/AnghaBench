; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_INIT2RTR_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_INIT2RTR_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_qp = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@QP_TRANS_INIT2RTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4
@RES_QP_HW = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_INIT2RTR_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_qp_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.res_qp*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %25 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %24, i32 0, i32 0
  %26 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %25, align 8
  %27 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %26, i64 8
  store %struct.mlx4_qp_context* %27, %struct.mlx4_qp_context** %15, align 8
  %28 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %29 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 8388607
  store i32 %31, i32* %16, align 4
  %32 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %33 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %19, align 8
  %36 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %37 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %20, align 8
  %40 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %41 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %21, align 8
  %44 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %45 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %22, align 8
  %48 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %49 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %23, align 8
  %52 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %55 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %56 = call i32 @adjust_qp_sched_queue(%struct.mlx4_dev* %52, i32 %53, %struct.mlx4_qp_context* %54, %struct.mlx4_cmd_mailbox* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %6
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %7, align 4
  br label %166

61:                                               ; preds = %6
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %63 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %64 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %65 = load i32, i32* @QP_TRANS_INIT2RTR, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @verify_qp_parameters(%struct.mlx4_dev* %62, %struct.mlx4_vhcr* %63, %struct.mlx4_cmd_mailbox* %64, i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %7, align 4
  br label %166

72:                                               ; preds = %61
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %76 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %77 = call i64 @roce_verify_mac(%struct.mlx4_dev* %73, i32 %74, %struct.mlx4_qp_context* %75, %struct.mlx4_cmd_mailbox* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %166

82:                                               ; preds = %72
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %86 = call i32 @update_pkey_index(%struct.mlx4_dev* %83, i32 %84, %struct.mlx4_cmd_mailbox* %85)
  %87 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %88 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @update_gid(%struct.mlx4_dev* %87, %struct.mlx4_cmd_mailbox* %88, i8* %91)
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %94 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %95 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %96 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %93, %struct.mlx4_vhcr* %94, %struct.mlx4_qp_context* %95)
  %97 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %15, align 8
  %98 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %18, align 8
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* @RES_QP, align 4
  %105 = call i32 @get_res(%struct.mlx4_dev* %101, i32 %102, i32 %103, i32 %104, %struct.res_qp** %17)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %82
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %7, align 4
  br label %166

110:                                              ; preds = %82
  %111 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %112 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RES_QP_HW, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @EBUSY, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %14, align 4
  br label %137

120:                                              ; preds = %110
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %122 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @update_vport_qp_param(%struct.mlx4_dev* %121, %struct.mlx4_cmd_mailbox* %122, i32 %123, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %137

129:                                              ; preds = %120
  %130 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %133 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %134 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %135 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %136 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %130, i32 %131, %struct.mlx4_vhcr* %132, %struct.mlx4_cmd_mailbox* %133, %struct.mlx4_cmd_mailbox* %134, %struct.mlx4_cmd_info* %135)
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %129, %128, %117
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %159, label %140

140:                                              ; preds = %137
  %141 = load i8*, i8** %18, align 8
  %142 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %143 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = load i8*, i8** %19, align 8
  %145 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %146 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** %20, align 8
  %148 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %149 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %148, i32 0, i32 3
  store i8* %147, i8** %149, align 8
  %150 = load i8*, i8** %21, align 8
  %151 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %152 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** %22, align 8
  %154 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %155 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i8*, i8** %23, align 8
  %157 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %158 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %140, %137
  %160 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @RES_QP, align 4
  %164 = call i32 @put_res(%struct.mlx4_dev* %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %159, %108, %79, %70, %59
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i32 @adjust_qp_sched_queue(%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @verify_qp_parameters(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i64 @roce_verify_mac(%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @update_gid(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i8*) #1

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**) #1

declare dso_local i32 @update_vport_qp_param(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32, i32) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
