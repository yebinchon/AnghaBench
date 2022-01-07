; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_find_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_find_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm = type { i32, i32, i32, i32, %struct.nfp_rtsym*, %struct.nfp_rtsym*, %struct.nfp_rtsym*, i32, i32, i32, %struct.TYPE_2__* }
%struct.nfp_rtsym = type { i32 }
%struct.TYPE_2__ = type { %struct.nfp_pf* }
%struct.nfp_pf = type { i32 }

@NFP_RED_SUPPORT_SYM_NAME = common dso_local global i32 0, align 4
@NFP_NUM_BANDS_SYM_NAME = common dso_local global i32 0, align 4
@NFP_NUM_PRIOS_SYM_NAME = common dso_local global i32 0, align 4
@NFP_ACT_MASK_SYM_NAME = common dso_local global i32 0, align 4
@NFP_ABM_ACT_MARK_DROP = common dso_local global i32 0, align 4
@U16_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"invalid priomap description num bands: %u and num prios: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_QLVL_SYM_NAME = common dso_local global i32 0, align 4
@NFP_QLVL_STRIDE = common dso_local global i32 0, align 4
@NFP_QMSTAT_SYM_NAME = common dso_local global i32 0, align 4
@NFP_QMSTAT_STRIDE = common dso_local global i32 0, align 4
@NFP_Q_STAT_SYM_NAME = common dso_local global i32 0, align 4
@NFP_Q_STAT_STRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_abm_ctrl_find_addrs(%struct.nfp_abm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_abm*, align 8
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca %struct.nfp_rtsym*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_abm* %0, %struct.nfp_abm** %3, align 8
  %7 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %8 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %7, i32 0, i32 10
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nfp_pf*, %struct.nfp_pf** %10, align 8
  store %struct.nfp_pf* %11, %struct.nfp_pf** %4, align 8
  %12 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @nfp_cppcore_pcie_unit(i32 %14)
  %16 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %17 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %16, i32 0, i32 9
  store i32 %15, i32* %17, align 8
  %18 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %19 = load i32, i32* @NFP_RED_SUPPORT_SYM_NAME, align 4
  %20 = call i32 @nfp_pf_rtsym_read_optional(%struct.nfp_pf* %18, i32 %19, i32 1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %178

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %30 = load i32, i32* @NFP_NUM_BANDS_SYM_NAME, align 4
  %31 = call i32 @nfp_pf_rtsym_read_optional(%struct.nfp_pf* %29, i32 %30, i32 1)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %178

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %39 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %41 = load i32, i32* @NFP_NUM_PRIOS_SYM_NAME, align 4
  %42 = call i32 @nfp_pf_rtsym_read_optional(%struct.nfp_pf* %40, i32 %41, i32 1)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %178

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %50 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %52 = load i32, i32* @NFP_ACT_MASK_SYM_NAME, align 4
  %53 = load i32, i32* @NFP_ABM_ACT_MARK_DROP, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = call i32 @nfp_pf_rtsym_read_optional(%struct.nfp_pf* %51, i32 %52, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %178

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %63 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %65 = call i32 @nfp_abm_ctrl_prio_map_size(%struct.nfp_abm* %64)
  %66 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %67 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %69 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @order_base_2(i32 %70)
  %72 = sub nsw i64 8, %71
  %73 = call i32 @GENMASK(i32 7, i64 %72)
  %74 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %75 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  %76 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %77 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @is_power_of_2(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %60
  %82 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %83 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @is_power_of_2(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %89 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @U16_MAX, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %111, label %93

93:                                               ; preds = %87
  %94 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %95 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @U16_MAX, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %111, label %99

99:                                               ; preds = %93
  %100 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %101 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  %104 = zext i1 %103 to i32
  %105 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %106 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  %109 = zext i1 %108 to i32
  %110 = icmp ne i32 %104, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %99, %93, %87, %81, %60
  %112 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %113 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %116 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %119 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @nfp_err(i32 %114, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %178

124:                                              ; preds = %99
  %125 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %126 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %178

130:                                              ; preds = %124
  %131 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %132 = load i32, i32* @NFP_QLVL_SYM_NAME, align 4
  %133 = load i32, i32* @NFP_QLVL_STRIDE, align 4
  %134 = call %struct.nfp_rtsym* @nfp_abm_ctrl_find_q_rtsym(%struct.nfp_abm* %131, i32 %132, i32 %133)
  store %struct.nfp_rtsym* %134, %struct.nfp_rtsym** %5, align 8
  %135 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %136 = call i64 @IS_ERR(%struct.nfp_rtsym* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %140 = call i32 @PTR_ERR(%struct.nfp_rtsym* %139)
  store i32 %140, i32* %2, align 4
  br label %178

141:                                              ; preds = %130
  %142 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %143 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %144 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %143, i32 0, i32 6
  store %struct.nfp_rtsym* %142, %struct.nfp_rtsym** %144, align 8
  %145 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %146 = load i32, i32* @NFP_QMSTAT_SYM_NAME, align 4
  %147 = load i32, i32* @NFP_QMSTAT_STRIDE, align 4
  %148 = call %struct.nfp_rtsym* @nfp_abm_ctrl_find_q_rtsym(%struct.nfp_abm* %145, i32 %146, i32 %147)
  store %struct.nfp_rtsym* %148, %struct.nfp_rtsym** %5, align 8
  %149 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %150 = call i64 @IS_ERR(%struct.nfp_rtsym* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %141
  %153 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %154 = call i32 @PTR_ERR(%struct.nfp_rtsym* %153)
  store i32 %154, i32* %2, align 4
  br label %178

155:                                              ; preds = %141
  %156 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %157 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %158 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %157, i32 0, i32 5
  store %struct.nfp_rtsym* %156, %struct.nfp_rtsym** %158, align 8
  %159 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %160 = call i64 @nfp_abm_has_prio(%struct.nfp_abm* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %155
  %163 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %164 = load i32, i32* @NFP_Q_STAT_SYM_NAME, align 4
  %165 = load i32, i32* @NFP_Q_STAT_STRIDE, align 4
  %166 = call %struct.nfp_rtsym* @nfp_abm_ctrl_find_q_rtsym(%struct.nfp_abm* %163, i32 %164, i32 %165)
  store %struct.nfp_rtsym* %166, %struct.nfp_rtsym** %5, align 8
  %167 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %168 = call i64 @IS_ERR(%struct.nfp_rtsym* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %172 = call i32 @PTR_ERR(%struct.nfp_rtsym* %171)
  store i32 %172, i32* %2, align 4
  br label %178

173:                                              ; preds = %162
  %174 = load %struct.nfp_rtsym*, %struct.nfp_rtsym** %5, align 8
  %175 = load %struct.nfp_abm*, %struct.nfp_abm** %3, align 8
  %176 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %175, i32 0, i32 4
  store %struct.nfp_rtsym* %174, %struct.nfp_rtsym** %176, align 8
  br label %177

177:                                              ; preds = %173, %155
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %177, %170, %152, %138, %129, %111, %58, %45, %34, %23
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @nfp_cppcore_pcie_unit(i32) #1

declare dso_local i32 @nfp_pf_rtsym_read_optional(%struct.nfp_pf*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nfp_abm_ctrl_prio_map_size(%struct.nfp_abm*) #1

declare dso_local i32 @GENMASK(i32, i64) #1

declare dso_local i64 @order_base_2(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @nfp_err(i32, i8*, i32, i32) #1

declare dso_local %struct.nfp_rtsym* @nfp_abm_ctrl_find_q_rtsym(%struct.nfp_abm*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_rtsym*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_rtsym*) #1

declare dso_local i64 @nfp_abm_has_prio(%struct.nfp_abm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
