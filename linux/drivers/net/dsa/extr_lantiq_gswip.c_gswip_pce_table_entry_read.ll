; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_pce_table_entry_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_pce_table_entry_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32 }
%struct.gswip_pce_table_entry = type { i32, i32, i32, i32, i8*, i8**, i8**, i32, i64 }

@GSWIP_PCE_TBL_CTRL_OPMOD_KSRD = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_OPMOD_ADRD = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_BAS = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_ADDR = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_ADDR_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_OPMOD_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_MASK = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_TYPE = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_VLD = common dso_local global i32 0, align 4
@GSWIP_PCE_TBL_CTRL_GMAP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, %struct.gswip_pce_table_entry*)* @gswip_pce_table_entry_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_pce_table_entry_read(%struct.gswip_priv* %0, %struct.gswip_pce_table_entry* %1) #0 {
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
  %15 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_KSRD, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_ADRD, align 4
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
  br label %134

28:                                               ; preds = %18
  %29 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %30 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %31 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GSWIP_PCE_TBL_ADDR, align 4
  %34 = call i32 @gswip_switch_w(%struct.gswip_priv* %29, i32 %32, i32 %33)
  %35 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %36 = load i32, i32* @GSWIP_PCE_TBL_CTRL_ADDR_MASK, align 4
  %37 = load i32, i32* @GSWIP_PCE_TBL_CTRL_OPMOD_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %40 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @GSWIP_PCE_TBL_CTRL_BAS, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %47 = call i32 @gswip_switch_mask(%struct.gswip_priv* %35, i32 %38, i32 %45, i32 %46)
  %48 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %49 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %50 = load i32, i32* @GSWIP_PCE_TBL_CTRL_BAS, align 4
  %51 = call i32 @gswip_switch_r_timeout(%struct.gswip_priv* %48, i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %28
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %134

56:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %75, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %60 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %59, i32 0, i32 6
  %61 = load i8**, i8*** %60, align 8
  %62 = call i32 @ARRAY_SIZE(i8** %61)
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @GSWIP_PCE_TBL_KEY(i32 %66)
  %68 = call i8* @gswip_switch_r(%struct.gswip_priv* %65, i32 %67)
  %69 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %70 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %69, i32 0, i32 6
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %57

78:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %82 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %81, i32 0, i32 5
  %83 = load i8**, i8*** %82, align 8
  %84 = call i32 @ARRAY_SIZE(i8** %83)
  %85 = icmp slt i32 %80, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @GSWIP_PCE_TBL_VAL(i32 %88)
  %90 = call i8* @gswip_switch_r(%struct.gswip_priv* %87, i32 %89)
  %91 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %92 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %91, i32 0, i32 5
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %79

100:                                              ; preds = %79
  %101 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %102 = load i32, i32* @GSWIP_PCE_TBL_MASK, align 4
  %103 = call i8* @gswip_switch_r(%struct.gswip_priv* %101, i32 %102)
  %104 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %105 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %107 = load i32, i32* @GSWIP_PCE_TBL_CTRL, align 4
  %108 = call i8* @gswip_switch_r(%struct.gswip_priv* %106, i32 %107)
  %109 = ptrtoint i8* %108 to i32
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @GSWIP_PCE_TBL_CTRL_TYPE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %118 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @GSWIP_PCE_TBL_CTRL_VLD, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %127 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @GSWIP_PCE_TBL_CTRL_GMAP_MASK, align 4
  %130 = and i32 %128, %129
  %131 = ashr i32 %130, 7
  %132 = load %struct.gswip_pce_table_entry*, %struct.gswip_pce_table_entry** %5, align 8
  %133 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %100, %54, %26
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @gswip_switch_r_timeout(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_switch_w(%struct.gswip_priv*, i32, i32) #1

declare dso_local i32 @gswip_switch_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @gswip_switch_r(%struct.gswip_priv*, i32) #1

declare dso_local i32 @GSWIP_PCE_TBL_KEY(i32) #1

declare dso_local i32 @GSWIP_PCE_TBL_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
