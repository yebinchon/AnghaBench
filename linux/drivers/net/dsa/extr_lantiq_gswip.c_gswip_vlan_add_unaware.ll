; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_vlan_add_unaware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_vlan_add_unaware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.gswip_pce_table_entry = type { i32, i32*, i8*, i32 }

@GSWIP_TABLE_VLAN_MAPPING = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to read VLAN mapping: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to write VLAN mapping: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, %struct.net_device*, i32)* @gswip_vlan_add_unaware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_vlan_add_unaware(%struct.gswip_priv* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gswip_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gswip_pce_table_entry, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gswip_priv* %0, %struct.gswip_priv** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = bitcast %struct.gswip_pce_table_entry* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %17 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %22 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %48, %3
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %30 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %31)
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %36 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = icmp eq %struct.net_device* %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %12, align 4
  br label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %27

51:                                               ; preds = %45, %27
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @gswip_vlan_active_create(%struct.gswip_priv* %55, %struct.net_device* %56, i32 -1, i32 0)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %125

62:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load i8*, i8** @GSWIP_TABLE_VLAN_MAPPING, align 8
  %66 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 0, i32* %69, align 4
  br label %87

70:                                               ; preds = %51
  %71 = load i32, i32* %12, align 4
  %72 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i8*, i8** @GSWIP_TABLE_VLAN_MAPPING, align 8
  %74 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %76 = call i32 @gswip_pce_table_entry_read(%struct.gswip_priv* %75, %struct.gswip_pce_table_entry* %8)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %81 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %125

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %62
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = getelementptr inbounds %struct.gswip_pce_table_entry, %struct.gswip_pce_table_entry* %8, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %103 = call i32 @gswip_pce_table_entry_write(%struct.gswip_priv* %102, %struct.gswip_pce_table_entry* %8)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %87
  %107 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %108 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @gswip_vlan_active_remove(%struct.gswip_priv* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %106
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %4, align 4
  br label %125

120:                                              ; preds = %87
  %121 = load %struct.gswip_priv*, %struct.gswip_priv** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @GSWIP_PCE_DEFPVID(i32 %122)
  %124 = call i32 @gswip_switch_w(%struct.gswip_priv* %121, i32 0, i32 %123)
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %120, %118, %79, %60
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #2

declare dso_local i32 @gswip_vlan_active_create(%struct.gswip_priv*, %struct.net_device*, i32, i32) #2

declare dso_local i32 @gswip_pce_table_entry_read(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @gswip_pce_table_entry_write(%struct.gswip_priv*, %struct.gswip_pce_table_entry*) #2

declare dso_local i32 @gswip_vlan_active_remove(%struct.gswip_priv*, i32) #2

declare dso_local i32 @gswip_switch_w(%struct.gswip_priv*, i32, i32) #2

declare dso_local i32 @GSWIP_PCE_DEFPVID(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
