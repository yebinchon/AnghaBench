; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_unload_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c_mlx4_unload_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mlx4_dev_persistent = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.mlx4_priv = type { i32, i32, i32, i32, i32* }

@RES_TR_FREE_SLAVES_ONLY = common dso_local global i32 0, align 4
@RES_TR_FREE_STRUCTS_ONLY = common dso_local global i32 0, align 4
@MLX4_CMD_CLEANUP_ALL = common dso_local global i32 0, align 4
@MLX4_FLAG_MSI_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mlx4_unload_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_unload_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mlx4_dev_persistent*, align 8
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.mlx4_dev_persistent* %10, %struct.mlx4_dev_persistent** %3, align 8
  %11 = load %struct.mlx4_dev_persistent*, %struct.mlx4_dev_persistent** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_dev_persistent, %struct.mlx4_dev_persistent* %11, i32 0, i32 0
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %12, align 8
  store %struct.mlx4_dev* %13, %struct.mlx4_dev** %4, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %5, align 8
  %16 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %210

21:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %64, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %38, i32* %46, align 4
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %48 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %55, i32* %63, align 4
  br label %64

64:                                               ; preds = %29
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %22

67:                                               ; preds = %22
  %68 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %72 = call i32 @mlx4_stop_sense(%struct.mlx4_dev* %71)
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %74 = call i32 @mlx4_unregister_device(%struct.mlx4_dev* %73)
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %93, %67
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sle i32 %76, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %84 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @mlx4_cleanup_port_info(i32* %88)
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @mlx4_CLOSE_PORT(%struct.mlx4_dev* %90, i32 %91)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %75

96:                                               ; preds = %75
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %98 = call i64 @mlx4_is_master(%struct.mlx4_dev* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %102 = load i32, i32* @RES_TR_FREE_SLAVES_ONLY, align 4
  %103 = call i32 @mlx4_free_resource_tracker(%struct.mlx4_dev* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %106 = call i32 @mlx4_cleanup_default_counters(%struct.mlx4_dev* %105)
  %107 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %108 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %112 = call i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev* %111)
  br label %113

113:                                              ; preds = %110, %104
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %115 = call i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev* %114)
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %117 = call i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev* %116)
  %118 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %119 = call i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev* %118)
  %120 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %121 = call i32 @mlx4_cmd_use_polling(%struct.mlx4_dev* %120)
  %122 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %123 = call i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev* %122)
  %124 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %125 = call i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev* %124)
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %127 = call i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev* %126)
  %128 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %129 = call i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev* %128)
  %130 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %131 = call i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev* %130)
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %133 = call i64 @mlx4_is_master(%struct.mlx4_dev* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %113
  %136 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %137 = load i32, i32* @RES_TR_FREE_STRUCTS_ONLY, align 4
  %138 = call i32 @mlx4_free_resource_tracker(%struct.mlx4_dev* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %113
  %140 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %141 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @iounmap(i32 %142)
  %144 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %145 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %146 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %145, i32 0, i32 2
  %147 = call i32 @mlx4_uar_free(%struct.mlx4_dev* %144, i32* %146)
  %148 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %149 = call i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev* %148)
  %150 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %151 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %139
  %154 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %155 = call i32 @mlx4_clear_steering(%struct.mlx4_dev* %154)
  br label %156

156:                                              ; preds = %153, %139
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %158 = call i32 @mlx4_free_eq_table(%struct.mlx4_dev* %157)
  %159 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %160 = call i64 @mlx4_is_master(%struct.mlx4_dev* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %164 = call i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev* %163)
  br label %165

165:                                              ; preds = %162, %156
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %167 = call i32 @mlx4_close_hca(%struct.mlx4_dev* %166)
  %168 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %169 = call i32 @mlx4_close_fw(%struct.mlx4_dev* %168)
  %170 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %171 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %165
  %174 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %175 = call i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev* %174)
  br label %176

176:                                              ; preds = %173, %165
  %177 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %178 = load i32, i32* @MLX4_CMD_CLEANUP_ALL, align 4
  %179 = call i32 @mlx4_cmd_cleanup(%struct.mlx4_dev* %177, i32 %178)
  %180 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %181 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @MLX4_FLAG_MSI_X, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %176
  %187 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %188 = call i32 @pci_disable_msix(%struct.pci_dev* %187)
  br label %189

189:                                              ; preds = %186, %176
  %190 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %191 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %195 = call i32 @mlx4_free_ownership(%struct.mlx4_dev* %194)
  br label %196

196:                                              ; preds = %193, %189
  %197 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %198 = call i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev* %197)
  %199 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %200 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @kfree(i32 %201)
  %203 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %204 = call i32 @mlx4_clean_dev(%struct.mlx4_dev* %203)
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %207 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.mlx4_priv*, %struct.mlx4_priv** %5, align 8
  %209 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %196, %20
  ret void
}

declare dso_local %struct.mlx4_dev_persistent* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_stop_sense(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_unregister_device(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_port_info(i32*) #1

declare dso_local i32 @mlx4_CLOSE_PORT(%struct.mlx4_dev*, i32) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_resource_tracker(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_cleanup_default_counters(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_counters_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_qp_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_srq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_cq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_use_polling(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mcg_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_mr_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_xrcd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_pd_table(%struct.mlx4_dev*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mlx4_uar_free(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @mlx4_cleanup_uar_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_clear_steering(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_eq_table(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_multi_func_cleanup(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_close_hca(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_close_fw(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cmd_cleanup(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

declare dso_local i32 @mlx4_free_ownership(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_slave_destroy_special_qp_cap(%struct.mlx4_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlx4_clean_dev(%struct.mlx4_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
