; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_pce_table_entry_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_pce_table_entry_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32 }
%struct.gswip_pce_table_entry = type { i32, i32, i32*, i32*, i32, i32, i64, i64, i64 }

@GSWIP_PCE_TBL_CTRL_OPMOD_KSWR = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_OPMOD_ADWR = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_BAS = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_ADDR = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_ADDR_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_OPMOD_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_TYPE = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_VLD = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_GMAP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, %struct.gswip_pce_table_entry*)* @gswip_pce_table_entry_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %0, %struct.gswip_pce_table_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gswip_priv*, align 8
  %5 = alloca %struct.gswip_pce_table_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %4, align 8
  store %struct.gswip_pce_table_entry* %1, %struct.gswip_pce_table_entry** %5, align 8
  %10 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %11 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_KSWR, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_ADWR, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4
  %20 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %21 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %22 = load i32, i32* @GSWIP_PCE_TBL_CTRL_BAS, align 4
  %23 = call i32 @gswip_switch_r_timeout(%struct.gswip_priv* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %157

28:                                               ; preds = %18
  %29 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %30 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %31 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GSWIP_PCE_TBL_ADDR, align 4
  %34 = call i32 @gswip_switch_w(%struct.gswip_priv* %29, i32 %32, i32 %33)
  %35 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %36 = load i32, i32* @GSWIP_PCE_TBL_CTRL_ADDR_MASK, align 4
  %37 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %40 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %45 = call i32 @gswip_switch_mask(%struct.gswip_priv* %35, i32 %38, i32 %43, i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %65, %28
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %49 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %55 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %56 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @GSWIP_PCE_TBL_KEY(i32 %62)
  %64 = call i32 @gswip_switch_w(%struct.gswip_priv* %54, i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %46

68:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %88, %68
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %72 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ARRAY_SIZE(i32* %73)
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %78 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %79 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @GSWIP_PCE_TBL_VAL(i32 %85)
  %87 = call i32 @gswip_switch_w(%struct.gswip_priv* %77, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %69

91:                                               ; preds = %69
  %92 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %93 = load i32, i32* @GSWIP_PCE_TBL_CTRL_ADDR_MASK, align 4
  %94 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %97 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %102 = call i32 @gswip_switch_mask(%struct.gswip_priv* %92, i32 %95, i32 %100, i32 %101)
  %103 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %104 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %105 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GSWIP_PCE_TBL_MASK, align 4
  %108 = call i32 @gswip_switch_w(%struct.gswip_priv* %103, i32 %106, i32 %107)
  %109 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %110 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %111 = call i32 @gswip_switch_r(%struct.gswip_priv* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* @GSWIP_PCE_TBL_CTRL_TYPE, align 4
  %113 = load i32, i32* @GSWIP_PCE_TBL_CTRL_VLD, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @GSWIP_PCE_TBL_CTRL_GMAP_MASK, align 4
  %116 = or i32 %114, %115
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %121 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %91
  %125 = load i32, i32* @GSWIP_PCE_TBL_CTRL_TYPE, align 4
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %91
  %129 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %130 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @GSWIP_PCE_TBL_CTRL_VLD, align 4
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %139 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 %140, 7
  %142 = load i32, i32* @GSWIP_PCE_TBL_CTRL_GMAP_MASK, align 4
  %143 = and i32 %141, %142
  %144 = load i32, i32* %8, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* @GSWIP_PCE_TBL_CTRL_BAS, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %152 = call i32 @gswip_switch_w(%struct.gswip_priv* %149, i32 %150, i32 %151)
  %153 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %154 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %155 = load i32, i32* @GSWIP_PCE_TBL_CTRL_BAS, align 4
  %156 = call i32 @gswip_switch_r_timeout(%struct.gswip_priv* %153, i32 %154, i32 %155)
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %137, %26
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @gswip_switch_r_timeout(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_switch_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @GSWIP_PCE_TBL_KEY(i32) #1

declare dso_local i32 @GSWIP_PCE_TBL_VAL(i32) #1

declare dso_local i32 @gswip_switch_r(%struct.gswip_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
