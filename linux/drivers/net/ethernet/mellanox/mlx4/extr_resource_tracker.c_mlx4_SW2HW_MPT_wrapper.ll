; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_SW2HW_MPT_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_SW2HW_MPT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mtt = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.res_mpt = type { %struct.res_mtt* }

@RES_MPT_HW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_MPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SW2HW_MPT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mtt*, align 8
  %17 = alloca %struct.res_mpt*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %23 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %24 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  store %struct.res_mpt* null, %struct.res_mpt** %17, align 8
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mr_get_mtt_addr(i32 %28)
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %31 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %29, %33
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %37 = call i32 @mpt_mask(%struct.mlx4_dev* %36)
  %38 = and i32 %35, %37
  store i32 %38, i32* %20, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* @RES_MPT_HW, align 4
  %43 = call i32 @mr_res_start_move_to(%struct.mlx4_dev* %39, i32 %40, i32 %41, i32 %42, %struct.res_mpt** %17)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %6
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %185

48:                                               ; preds = %6
  %49 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %50 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mr_is_region(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  br label %178

57:                                               ; preds = %48
  %58 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %59 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mr_get_pd(i32 %60)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = ashr i32 %62, 17
  %64 = and i32 %63, 127
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i32, i32* %22, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @EPERM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %178

75:                                               ; preds = %67, %57
  %76 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %77 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @mr_is_fmr(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %83 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @mr_is_bind_enabled(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %14, align 4
  br label %178

90:                                               ; preds = %81
  %91 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %92 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mr_is_region(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @EPERM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %178

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %75
  %101 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %102 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mr_phys_mpt(i32 %103)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %133, label %107

107:                                              ; preds = %100
  %108 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @RES_MTT, align 4
  %112 = call i32 @get_res(%struct.mlx4_dev* %108, i32 %109, i32 %110, i32 %111, %struct.res_mtt** %16)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %178

116:                                              ; preds = %107
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %121 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mr_get_mtt_size(i32 %122)
  %124 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %125 = call i32 @check_mtt_range(%struct.mlx4_dev* %117, i32 %118, i32 %119, i32 %123, %struct.res_mtt* %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %165

129:                                              ; preds = %116
  %130 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %131 = load %struct.res_mpt*, %struct.res_mpt** %17, align 8
  %132 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %131, i32 0, i32 0
  store %struct.res_mtt* %130, %struct.res_mtt** %132, align 8
  br label %133

133:                                              ; preds = %129, %100
  %134 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %137 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %138 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %139 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %140 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %134, i32 %135, %struct.mlx4_vhcr* %136, %struct.mlx4_cmd_mailbox* %137, %struct.mlx4_cmd_mailbox* %138, %struct.mlx4_cmd_info* %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %165

144:                                              ; preds = %133
  %145 = load i32, i32* %19, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %144
  %148 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %149 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %148, i32 0, i32 1
  %150 = call i32 @atomic_inc(i32* %149)
  %151 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %154 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @RES_MTT, align 4
  %158 = call i32 @put_res(%struct.mlx4_dev* %151, i32 %152, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %147, %144
  %160 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @RES_MPT, align 4
  %163 = load i32, i32* %20, align 4
  %164 = call i32 @res_end_move(%struct.mlx4_dev* %160, i32 %161, i32 %162, i32 %163)
  store i32 0, i32* %7, align 4
  br label %185

165:                                              ; preds = %143, %128
  %166 = load i32, i32* %19, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %165
  %169 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %172 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @RES_MTT, align 4
  %176 = call i32 @put_res(%struct.mlx4_dev* %169, i32 %170, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %165
  br label %178

178:                                              ; preds = %177, %115, %96, %87, %72, %54
  %179 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @RES_MPT, align 4
  %182 = load i32, i32* %20, align 4
  %183 = call i32 @res_abort_move(%struct.mlx4_dev* %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %178, %159, %46
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i32 @mr_get_mtt_addr(i32) #1

declare dso_local i32 @mpt_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @mr_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local i32 @mr_is_region(i32) #1

declare dso_local i32 @mr_get_pd(i32) #1

declare dso_local i64 @mr_is_fmr(i32) #1

declare dso_local i64 @mr_is_bind_enabled(i32) #1

declare dso_local i32 @mr_phys_mpt(i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mtt*) #1

declare dso_local i32 @mr_get_mtt_size(i32) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
